%
% IN: 
% n m k
% i1 j1 w_{i1,j1}
% i2 j2 w_{i2,j2}
%
% The weighted graph G is to be partitioned into k subsets
% to minimize the total weight of the uncut edges.
% If w_{ij} > 900 (in fact, the file contains 1000 for each such
% pair), then i and j must be in different sets.
%
% OUT:
%
% The sedumi formulation of 
% 
%  Min C*X
%  st. X psd
%      X_{ii}      = 1 (i=1,..,n)
%      X_{ij}      = -1/(k-1) if w_{ij} > 900 
%      X_{ij}     >= -1/(k-1) else 
%
% where C = (1/2k) * [ Diag(We) + (k-1)W ]
% with W = (w_{ij})
%
% The user must modify the file, according what the 
% I/O will be, at the positions marked with '!!!'
%
%
%
% In case you also want to solve the problem using sedumi, you 
% must call 
%
% x = sedumi(A, b, c, K);
% X = mat( x( (n_geq+1):(n_geq+n*n) ) );
%



% !!! 
infile   = fopen('fap09.dat', 'r');

%
% Read data 
%

n = fscanf(infile, '%d', 1);
m = fscanf(infile, '%d', 1);
k = fscanf(infile, '%d', 1);
data = fscanf(infile, '%d %d %f', [3,m]);
data = data';


%
% Arrange data so that the first column is 
% always less than the second
% We check that edges are NOT given twice
% as both (i,j) and (j,i)
%

flipdata      = zeros( size(data,1), 2);
flipdata(:,1) = data(:,2);
flipdata(:,2) = data(:,1);

l = ( data(:,1)>data(:,2) );
data(l, 1:2) = flipdata(l, 1:2);



%
% Compute some  useful info
%

n_fixededges = sum( data(:,3)>900 )
n_edges      = size(data,1) 
n_slacks = n*(n+1)/2 - n - n_fixededges
n_rows = n*(n+1)/2 
format long
sum_of_weights = sum(data( data(:,3)<900 ,3))


%
%
% Construct sets ind_eqk, ind_eq1, ind_geq 
% 
% i*(n-1) + j is contained in the vector ind_eqk
% <==> c{ij} > 900 
% <==> X_{ij} = -1/(k-1) is a constraint 
%
% i*(n-1) + i is contained in the vector ind_eq1
% for i=1,..,n, since 
% X_{ii} = 1   is  a constraint 
% 
% ind_geq is the 
% complement set of (ind_eq1  union ind_eqk)
%

temp1 = (data(:,1)-1)*n + data(:,2);
temp2 = (data(:,2)-1)*n + data(:,1);
temp1 = temp1(data(:,3)>900);
temp2 = temp2(data(:,3)>900);

ind_eqk = [temp1; temp2];
ind_eq1 = ([ 0 : (n-1) ]*n + [ 1 : n ]);

ind_geq = setdiff( [1:n*n], union(ind_eq1, ind_eqk) ); 


n_eqk = max(size(ind_eqk));
n_geq = max(size(ind_geq));



%
% Construct the matrix C 
%

C = sparse( data(:,1), data(:,2), data(:,3), n, n );
C = C+C';
C = (1/(2*k))*(diag(sum(C,1)) + (k-1)*C);



%
% Construct the constraints
%
% Al*Xl + I*Xs = b
%
% where Al is n^2 by n_geq
%       I  is n^2 by n^2;
%       Xl is the linear slacks
%       Xs is the semidefinite matrix 
%
% b(i) is 1, if i is in ind_eq1; -1/(k-1) otherwise 
%

Al = sparse(  ind_geq, 1:n_geq, -ones(n_geq, 1), n*n, n_geq );
A = [ Al, speye(n*n) ];

b = (-1/(k-1))*ones(n*n,1);
b(ind_eq1) = 1;

c = [ zeros(1,n_geq),  vec(C)' ];

K.l = n_geq;
K.q = 0;
K.r = 0;
K.s = n;

% !!! 
save fap09  A b c K 










%
% IN: 
% n m k
% i1 j1 w_{i1,j1}
% i2 j2 w_{i2,j2}
%
% OUT:
%
% The sedumi formulation of 
% 
%  Min C*X
%  st. X psd
%      X_{ii}      = 1 (i=1,..,n)
%      J*X         = 0 
%      
%
% where W = (w_{ij}), C = (1/4) * [ Diag(We) - W ]
%
% The user must modify the file, according what the 
% I/O will be, at the positions marked with '!!!'
%
% You need to run
% x = sedumi(A, b, c, K), and take the 
% negative of the optimal solution
%

%%% !!!
infile   = fopen('bm1.dat', 'r');

%
% Read data 
%

n = fscanf(infile, '%d', 1);
m = fscanf(infile, '%d', 1);
data = fscanf(infile, '%d %d %f', [3,m]);
data = data';

%
% Arrange data so that the first column is 
% always less than the second
%

flipdata      = zeros( size(data,1), 2);
flipdata(:,1) = data(:,2);
flipdata(:,2) = data(:,1);

l = ( data(:,1)>data(:,2) );
data(l, 1:2) = flipdata(l, 1:2);

n_edges      = size(data,1) 
n_rows = n*(n+1)/2 + 1
format long
sum_of_weights = sum(data( : ,3) )
posdata = data( data(:,3)>0, :);
sum_of_posweights = sum(posdata( : ,3) )

%
% Construct set ind_eq1
% 
% i*(n-1) + i is contained in the vector ind_eq1
% for i=1,..,n, since 
% X_{ii} = 1   is  a constraint 
%
 
ind_eq1 = ([ 0 : (n-1) ]*n + [ 1 : n ]);


%
% Construct C 
%

C = sparse( data(:,1), data(:,2), data(:,3), n, n );
C = C+C';
C = (1/4)* ( diag(sum(C,1)) -C );


%
% Construct the constraints
%
% A *X = e
% J *X = 0 
% where A  is n by n^2
%

A = sparse(  1:n, ind_eq1, ones(n,1) ); 
A = [ A; vec( ones(n) )' ];
b = [ ones(n,1); 0 ];
c = vec(C)'; 

K.l = 0;
K.q = 0;
K.r = 0;
K.s = n;

keyboard;

x = sedumi(A, b, c, K);

%%% !!!
save bm1  A b c K 








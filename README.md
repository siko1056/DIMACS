# The DIMACS library of mixed semidefinite-quadratic-linear programs

> This GitHub repository is a "modern" presentation of the original DIMACS
> library by Gabor Pataki
> ([gabor@ieor.columbia.edu](mailto:gabor@ieor.columbia.edu)) and
> Stefan H. Schmieta
> ([schmieta@corc.ieor.columbia.edu](mailto:schmieta@corc.ieor.columbia.edu))
> hosted at http://dimacs.rutgers.edu/archive/Challenges/Seventh/Instances/.


## Abstract:

To provide access to test problems for the participants of the 7th DIMACS
Implementation Challenge, we assembled a library of test problems.

Our main concerns in the selection were to create a library of instances that
- arise from the widest possible range of sources, and applications.
- are as realistic as possible.
- represent all levels of difficulty.
- have their origin and the formulation used clearly documented.

Currently, we have 12 problem sets.  More are welcome; please see the
[section below](#submissions).


## Developers:

- [Gabor Pataki](http://gaborpataki.web.unc.edu/) University of North Carolina,
  Chapel Hill
- [Stefan H. Schmieta](http://corc.ieor.columbia.edu/~schmieta) Columbia
  University


## Problem formats:

- The `.mat` files contain the problems in the format used by
  [Sedumi](http://sedumi.ie.lehigh.edu/) that solves a problem of the form

      min { c'x | st. Ax = b, x in K },

  where `K` is an appropriate cone, representing semidefinite, quadratic, and
  linear constraints on `x`; for details, see [the report (PDF)][lib.pdf].
  This format is probably the easiest to convert to all other formats, if you
  have Matlab.  For some large  graph problems, only a `.dat` file containing
  the graph description is available, with a commented Matlab code that can
  generate the `.mat` file from it.

- Two converter codes are provided below, both written by Brian Borchers.
  - [A Sedumi -> SDPpack converter in Matlab.](http://dimacs.rutgers.edu/archive/Challenges/Seventh/Instances/writesdp.m)
  - [An SDPpack -> SDPA converter in C](http://dimacs.rutgers.edu/archive/Challenges/Seventh/Instances/sqlptosdpa.c).


## Problem sets:

The [complete problem library][lib.tar.gz] as a `tar` file and compressed with
`gzip`.  [This table](http://dimacs.rutgers.edu/archive/Challenges/Seventh/Instances/tablecon.html)
lists the problem originators, formulators, and donators.  Read the
[preliminary technical report][lib.ps] ([PDF version][lib.pdf]) for more
details.

[lib.ps]: http://dimacs.rutgers.edu/archive/Challenges/Seventh/Instances/lib.ps
[lib.pdf]: doc/lib.pdf
[lib.tar.gz]: http://dimacs.rutgers.edu/archive/Challenges/Seventh/Instances/lib.tar.gz


### The **torus** set: Max cut problems

from the Ising model of spin glasses.

**Caveat:** these `max { c'x | st. Ax = b, x in K }` type problems are given as
`min { -c'x | st. Ax = b, x in K }`.  To get the optimal values in the table,
you must multiply the optimal value of the latter problem by `-1`.
In addition, the optimal values of the `torusg` (that is, Gaussian instances)
must be divided by `100,000`.

- `gentorus.m`: commented Matlab file to make `.mat` from `.dat`-files

| Name           | Rows  | SDP        | Quadr. | Lin. | Opt. value  |
| -------------- | ----: | ---------- | ------ | ---- | ----------- |
| toruspm-8-50   |   512 | [1;   512] |      - |    - |  527.808663 |
| toruspm3-15-50 | 3,375 | [1; 3,375] |      - |    - | 3474.4 `*`  |
| torusg3-8      |   512 | [1;   512] |      - |    - |  457.358179 |
| torusg3-15     | 3,375 | [1; 3,375] |      - |    - | 3134.6 `*`  |


### The **fap** set: Min k-uncut problems from frequency assignment.

- `genfap.m`: commented Matlab file to make `.mat` from `.dat`-files

| Name      | Rows      | SDP        | Quadr. | Lin.      | Opt. value             |
| --------- | --------: | ---------- | ------ | --------: | ---------------------- |
| fap09     |    15,225 | [1; 174]   |      - |    14,025 | 10.8                   |
| fap25     | 2,244,021 | [1; 2,118] |      - | 2,232,141 | 12.5 `* (lb, not opt)` |
| fap36     | 8,448,105 | [1; 4,110] |      - | 8,405,931 | 63.7 `* (lb, not opt)` |
| fap-sup25 |   322,924 | [1; 2,118] |      - |   311,044 | 12.5 `(lb, not opt)`   |
| fap-sup36 | 1,154,467 | [1; 4,110] |      - | 1,112,293 | 63.7 `(lb, not opt)`   |

*Remark*: The `fap-sup` problems are relaxations of the corresponding `fap`
instances.  The difference is detailed in the [report][lib.pdf].


### The **bisection** set: Min bisection problems from circuit partitioning.

- `genbisect.m`: commented Matlab file to make `.mat` from `.dat`-files
- `vec.m`: Matlab file needed by `genbisect.m`

| Name      | Rows      | SDP         | Quadr. | Lin. | Opt. value |
| --------- | --------: | ----------- | ------ | ---- | ---------- |
| bm1       |       883 | [1;    882] |      - |    - | 23.4434    |
| biomedP   |     6,515 | [1;  6,514] |      - |    - | 33.6       |
| industry2 |    12,638 | [1; 12,637] |      - |    - | 65.6       |


### The **nql** set: Quadratic problems to compute plastic collapse states plain strain models.

The problems tagged `old` contain the formulations originally present in the
library.  They, although equivalent, are inferior formulations and are not true
to the formulations as they were submitted.

| Name      | Rows    | SDP | Quadr.            | Lin.    | Opt. value |
| --------- | ------: | --- | ----------------- | ------: | ---------- |
| nql30     |   3,680 |   - | [  900;   900x 3] |   3,602 | -0.9460    |
| nql60     |  14,560 |   - | [ 3600;  3600x 3] |  14,402 | -0.935     |
| nql180    | 130,080 |   - | [32400; 32400x 3] | 129,602 |  N/A       |
| nql30old  |   3,601 |   - | [  900;   900x 3] |   5,560 |  0.9460    |
| nql60old  |  14,401 |   - | [ 3600;  3600x 3] |  21,920 |  0.935     |
| nql180old | 129,601 |   - | [32400; 32400x 3] | 195,360 |  N/A       |


### The **qssp** set: Quadratic problems to compute plastic collapse states: supported plate models.

The problems tagged `old` contain the formulations originally present in the
library.  They, although equivalent, are inferior formulations and are not true
to the formulations as they were submitted.

| Name       | Rows    | SDP | Quadr.            | Lin.    | Opt. value     |
| ---------- | ------: | --- | ----------------- | ------: | -------------- |
| qssp30     |   3,691 |   - | [ 1891;  1891x 4] |       2 | -6.4966749     |
| qssp60     |  14,581 |   - | [ 7381;  7381x 4] |       2 | -6.5627049     |
| qssp180    | 130,141 |   - | [65341; 65341x 4] |       2 |  N/A           |
| qssp30old  |   5,674 |   - | [ 1891;  1891x 4] |   3,600 |  6.4966749     |
| qssp60old  |  22,144 |   - | [ 7381;  7381x 4] |  14,400 |  6.5627049     |
| qssp180old | 196,024 |   - | [65341; 65341x 4] | 129,600 |  6.54613 - N/A |


### The **filter** set: Mixed SDP/SOCP problems from PAM (pulse amplitude modulation) filter design.

| Name     | Rows | SDP     | Quadr.  | Lin. | Opt. value  |
| -------- | ---: | ------- | ------- | ---: | ----------- |
| filter48 |  969 | [1; 48] | [1; 49] |  931 | 1.41612901  |
| filtinf1 |  983 | [1; 49] | [1; 49] |  945 | primal inf. |
| minphase |   48 | [1; 48] |       - |    - | 5.98        |


### The **hinf** set: LMI (Linear Matrix Inequality) problems.

| Name   | Rows | SDP           | Quadr.  | Lin. | Opt. value        |
| ------ | ---: | ------------- | ------- | ---- | ----------------- |
| hinf12 |   43 | [3; 6, 6, 12] |       - |    - |  -0.0398 `(?) **` |
| hinf13 |   57 | [3; 7, 9, 14] |       - |    - | -45.476  `(?) **` |


### The **truss** set: Truss topology design problems

| Name   | Rows | SDP             | Quadr.  | Lin. | Opt. value  |
| ------ | ---: | --------------- | ------- | ---- | ----------- |
| truss5 |  208 | [34; 33x 10, 1] |       - |    - | 132.6356779 |
| truss8 |  496 | [34; 33x 19, 1] |       - |    - | 133.1145891 |


### The **antenna** set: Antenna array design problems

| Name         | Rows | SDP | Quadr.                 | Lin. | Opt. value    |
| ------------ | ---: | --- | ---------------------- | ---: | ------------- |
| nb           |  123 |   - | [793; 793x 3]          |    4 |  -0.05070309  |
| nb_L1        |  915 |   - | [793; 793x 3]          |  797 | -13.012337    |
| nb_L2        |  123 |   - | [839; 1x 1677, 838x 3] |    4 |  -1.62897198  |
| nb_L2_bessel |  123 |   - | [839; 1x  123, 838x 3] |    4 |  -0.102569511 |


### The **copos** set: Checking a sufficient condition for copositivity of a matrix

| Name   | Rows    | SDP          | Quadr. | Lin.   | Opt. value |
| ------ | ------: | ------------ | ------ | -----: | ---------- |
| copo14 |   1,275 | [14; 14x 14] |      - |    364 |          0 |
| copo23 |   5,820 | [23; 23x 23] |      - |  1,771 |          0 |
| copo68 | 154,905 | [68; 68x 68] |      - | 50,116 |          0 |


### The **hamming** set: Instances computing the theta function of Hamming graphs for which the exact value is known.

- `generate_hamming.m`: A Matlab file to generate SDP instances for the theta
  function of arbitrary Hamming graphs

| Name          | Rows   | SDP       | Quadr. | Lin.   | Opt. value |
| ------------- | -----: | --------- | ------ | -----: | ---------- |
| hamming_9_8   |  2,305 | [1;  512] |      - |      - | 224        |
| hamming_10_2  | 23,041 | [1; 1024] |      - |      - | 102.4      |
| hamming_11_2  | 56,321 | [1; 2048] |      - |      - | 170 2/3    |
| hamming_7_5_6 |  1,793 | [1;  128] |      - |      - | 42 2/3     |
| hamming_8_3_4 | 16,129 | [1;  256] |      - |      - | 25.6       |
| hamming_9_5_6 | 53,761 | [1;  512] |      - |      - | 85 1/3     |


### The **sched** set: Quadratic relaxations of scheduling problems.

The files tagged `_orig` contain the models as they were submitted.  The
corresponding `_scaled` files are reformulations that (among other things)
scale the problem.  The scale factor for the objective function is contained
in the `mat`-file as `c_mult`.

| Name                 | Rows   | SDP | Quadr.        | Lin.   | Opt. value  |
| -------------------- | -----: | --- | ------------- | -----: | ----------- |
| sched_50_50_orig     |  2,527 |   - | [2;  2474, 3] |  2,502 |  26673.0    |
| sched_100_50_orig    |  4,844 |   - | [2;  4741, 3] |  5,002 | 181889.9    |
| sched_100_100_orig   |  8,338 |   - | [2;  8235, 3] | 10,002 | 717367.0    |
| sched_200_100_orig   | 18,087 |   - | [2; 17884, 3] | 20,002 | 141360.4464 |
| sched_50_50_scaled   |  2,526 |   - |  2475         |  2,502 |  7.8520384  |
| sched_100_50_scaled  |  4,843 |   - |  4742         |  5,002 |  6.716503   |
| sched_100_100_scaled |  8,337 |   - |  8236         | 10,002 | 27.3307     |
| sched_200_100_scaled | 18,086 |   - | 17885         | 20,002 | 51.81196099 |


## Explanation of the tables above:

- An entry `[7; 3x5, 3, 4, 2x6 ]` in the "SDP" column means that the problem
  has `7` SDP blocks whose sizes are `5, 5, 5, 3, 4, 6, 6` in this order.
  The meaning of the entries in the "QUADR" column is analogous.

- If an entry in the "opt. value" column has is not accompanied by a mark, or
  remark, then it has been computed by a primal-dual interior point code.
  Currently these codes provide the most accurate solutions.

- If an entry is accompanied by the mark `*`, then it has been computed by a
  code designed to obtain approximate solutions to large scale problems
  (such as BMPR, BMZ, BUNDLE, and DSDP).

- If in addition to the `*` mark, there is a `lb, not opt` remark, this means
  that a lower bound on the objective value was computed by BMZ, or BUNDLE.
  These codes work with fully feasible dual solutions, whose value serves as a
  reliable lower bound, even when the termination criteria of the codes are
  not satisfied.

- Having a `(?)` mark means that the listed value is the currently known most
  accurate one; nevertheless, its accuracy is still not satisfactory, and the
  true value may be quite different.


## Reporting the solution quality:

We suggest the following data to be supplied with all computational results:
We are given the primal-dual pair of problems

    Min c'x         Max b'y
    st. x in K      st. z in K
        Ax = b          A^T y + z = c

where `K =K^*` is a direct product of semidefinite, quadratic, and nonnegative
cones. The best way to measure the error of a solution pair `( x, (y,z) )` is
calculating

1. the violation of the affine constraints normalized:

       norm(Ax - b)/(1+max(abs(b))), norm(A^T y + z - c)(1+max(abs(c)))

2. the violation of the conic constraints:

  For this purpose, we suggest computing `min(eigK(x))` and `min(eigK(z))` by
  using Sedumi's `eigK` function.

3. Some codes do not explicitly maintain `z`.  In this case, one should set

       z = c - A^T y

  Of course, then the violation as in i) will be zero (depending on the
  accuracy achieved by the computer).

4. Finally, the duality gap:

       max(0, c'*x - b'*y)

**IMPORTANT!** To make all error computations consistent, please use the

- Euclidean norms on vectors and
- Frobenius norms on matrices (which are then consistent).

Be careful not to simply use the Matlab `norm` function, since  that uses the
largest singular value of a matrix, which will be considerably smaller than its
Frobenius norm.

> Many thanks to Mike Todd for pointing this out.

## Links:

- [Hans Mittelmann's independent benchmarking results](http://plato.asu.edu/dimacs/).
- The [SDPLIB library](http://www.nmt.edu/~sdplib/) by Brian Borchers.

## Submissions:

To add a problem set to the collection send a description of the set to
[Gabor Pataki](mailto:gabor@ieor.columbia.edu) or
[Stefan H. Schmieta](mailto:schmieta@corc.ieor.columbia.edu).

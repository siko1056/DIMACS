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
- represent all levels of difficulty.</dd>
- have their origin and the formulation used clearly documented.

Currently, we have 12 problem sets.  More are welcome; please see the
"Submissions" section below.


## Developers:

- [Gabor Pataki](http://gaborpataki.web.unc.edu/) University of North Carolina,
  Chapel Hill
- [Stefan H. Schmieta](http://corc.ieor.columbia.edu/~schmieta) Columbia
  University


## Problem descriptions:

- <a href="tablestat.html">A table</a> with problem sizes and known solutions.
- <a href="tablecon.html">A table</a> listing problem originators, formulators,
  and donators.


## Technical report:

- [A preliminary version][lib.ps] ([PDF version](lib.pdf)) with more details.

[lib.ps]: http://dimacs.rutgers.edu/archive/Challenges/Seventh/Instances/lib.ps
[lib.pdf]: doc/lib.pdf


## Problem formats:

- The `.mat` files contain the problems in the format used by
  [Sedumi](http://www.unimaas.nl/~sturm/research.html)
  that solves a problem of the form

      min { c'x | st. Ax = b, x in K },

  where `K` is an appropriate cone, representing semidefinite, quadratic, and
  linear constraints on `x`; for details, see [the report][lib.pdf].  This
  format is probably the easiest to convert to all other formats, if you have
  Matlab.  For some large  graph problems, only a `.dat` file containing the
  graph description is available, with a commented Matlab code that can
  generate the `.mat` file from it.

- Two converter codes are provided below, both written by Brian Borchers.
  - [A Sedumi -> SDPpack converter in Matlab.](writesdp.m)
  - [An SDPpack -> SDPA converter in C](sqlptosdpa.c).


## Reporting the solution quality:

- A document describing the required format for reporting the error of the
  obtained solutions is [here](error_report.html).


## Links:

- [Hans Mittellman's independent benchmarking results](http://plato.la.asu.edu/dimacs.html).
- The [SDPLIB library](http://www.nmt.edu/~sdplib/) by Brian Borchers.


## Problem sets:

The [complete problem library][lib.tar.gz] as a `tar` file and compressed with
`gzip`.

[lib.tar.gz]: http://dimacs.rutgers.edu/archive/Challenges/Seventh/Instances/lib.tar.gz

### The **torus** set: Max cut problems

from the Ising model of spin glasses.

**Caveat:** these `max { c'x | st. Ax = b, x in K }` type problems are given as
`min { -c'x | st. Ax = b, x in K }`.  To get the optimal values in the table,
you must multiply the optimal value of the latter problem by `-1`.
In addition, the optimal values of the `torusg` (that is, Gaussian instances)
must be divided by `100,000`.

- toruspm3-8-50.mat.gz  (and .dat.gz)
- toruspm3-15-50.mat.gz (and .dat.gz)
- torusg3-8.mat.gz      (and .dat.gz)
- torusg3-15.mat.gz     (and .dat.gz)
- `gentorus.m`: commented Matlab file to make `.mat` from `.dat`-files


### The **fap** set: Min k-uncut problems from frequency assignment.

<ul>
<li>
<a href="FAP/fap09.mat.gz">fap09.mat.gz&nbsp;<spacer type = horizontal size = 20></a><a href="FAP/fap09.dat.gz">fap09.dat.gz</a></li>

<li>
<a href="FAP/fap25.mat.gz">fap25.mat.gz&nbsp;<spacer type = horizontal size = 20></a><a href="FAP/fap25.dat.gz">fap25.dat.gz</a></li>

<li>
<spacer type = horizontal size = 84><a href="FAP/fap36.dat.gz">fap36.dat.gz</a></li>

<li>
<a href="FAP/genfap.m">genfap.m </a>: commented matlab file to make <b>.mat
</b>from
<b>.dat </b>files</li>

<li>
<b> Remark: </b> The <b> fap-sup </b> problems are relaxations of the corresponding <b> fap </b> <br>
instances. The difference is detailed in the <a href="lib.ps"> report. </a> </li>

</ul>


### The **bisection** set: Min bisection problems from circuit partitioning.

<ul>
<li>
<a href="BISECT/bm1.mat.gz">bm1.mat.gz </a> &nbsp;<spacer type = horizontal size = 20>
<a href="BISECT/bm1.dat.gz">bm1.dat.gz </a>    </li>

<li>
<spacer type = horizontal size = 80><a href="BISECT/biomedP.dat.gz">biomedP.dat.gz</a></li>

<li>
<spacer type = horizontal size = 90><a href="BISECT/industry2.dat.gz">industry2.dat.gz</a></li>

<li>
<a href="BISECT/genbisect.m">genbisect.m </a>: commented matlab file to
make <b>.mat </b>from <b>.dat </b>files</li>
<li> <a href="BISECT/vec.m">vec.m</a>: matlab file needed by genbisect.m</li>
</ul>


### The **nql** set: Quadratic problems to compute plastic collapse states plain strain models.

The problems tagged `old` contain the formulations originally present in the
library.  They, although equivalent, are inferior formulations and are not true
to the formulations as they were submitted.

- nql30.mat.gz (nql30old.mat.gz)
- nql60.mat.gz (nql60old.mat.gz)
- nql180.mat.gz (nql180old.mat.gz)


### The **qssp** set: Quadratic problems to compute plastic collapse states: supported plate models.

The problems tagged `old` contain the formulations originally present in the
library.  They, although equivalent, are inferior formulations and are not true
to the formulations as they were submitted.

- qssp30.mat.gz (qssp30old.mat.gz)
- qssp60.mat.gz (qssp60old.mat.gz)
- qssp180.mat.gz (qssp180old.mat.gz)


### The **filter** set: Mixed SDP/SOCP problems from PAM (pulse amplitude modulation) filter design.

- filter48_socp.mat.gz
- filtinf1.mat.gz
- minphase.mat.gz


### The **hinf** set: LMI (Linear Matrix Inequality) problems.

- hinf12.mat.gz
- hinf13.mat.gz


### The **truss** set: Truss topology design problems

- truss5.mat.gz
- truss8.mat.gz


### The <b>antenna</b> set: Antenna array design problems

- nb.mat.gz
- nb_L1.mat.gz
- nb_L2.mat.gz
- nb_L2_bessel.mat.gz


### The **copos** set: Checking a sufficient condition for copositivity of a matrix

- copo14.mat.gz
- copo23.mat.gz
- copo68.mat.gz


### The **hamming** set: Instances computing the theta function of Hamming graphs for which the exact value is known.

- hamming_9_8.mat.gz
- hamming_10_2.mat.gz
- hamming_11_2.mat.gz
- hamming_7_5_6.mat.gz
- hamming_8_3_4.mat.gz
- hamming_9_5_6.mat.gz
- `generate_hamming.m`: A Matlab file to generate SDP instances for the theta
  function of arbitrary Hamming graphs


### The **sched** set: Quadratic relaxations of scheduling problems.

The files tagged `_orig` contain the models as they were submitted.  The
corresponding `_scaled` files are reformulations that (among other things)
scale the problem.  The scale factor for the objective function is contained
in the `mat`-file as `c_mult`.

- sched_50_50_orig.mat.gz
- sched_100_50_orig.mat.gz
- sched_100_100_orig.mat.gz
- sched_200_100_orig.mat.gz
- sched_50_50_scaled.mat.gz
- sched_100_50_scaled.mat.gz
- sched_100_100_scaled.mat.gz
- sched_200_100_scaled.mat.gz


## Submissions:

To add a problem set to the collection send a description of the set to
[Gabor Pataki](mailto:gabor@ieor.columbia.edu) or
[Stefan H. Schmieta](mailto:schmieta@corc.ieor.columbia.edu).

<!doctype html public "-//w3c//dtd html 4.0 transitional//en">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
   <meta name="GENERATOR" content="Mozilla/4.51 [en] (X11; U; SunOS 5.6 sun4u) [Netscape]">
   <title>The DIMACS library of mixed semidefinite-quadratic-linear programs</title>
</head>
<body BACKGROUND=GIF/fond_session.gif  text="#000000"  link="#0000EE" vlink="#FF0000" alink="#FF0000">

<center>
<h6>
<img SRC="GIF/dimacs_logo1.gif" ></h6></center></h6>

<center><b><font size=+5>The DIMACS library of mixed semidefinite-quadratic-linear
programs</font></b></center>

<h4>
Abstract:</h4>

<blockquote>To provide access to test problems for the participants of
the 7th DIMACS Implementation Challenge, we assembled a library of test
problems.
<br>Our main concerns in the selection were to create a library of instances
that</blockquote>

<dl>
<dd>
<img SRC="GIF/red_diam.gif" ALT="o" > arise from the widest possible range
of sources, and applications.</dd>

<dd>
<img SRC="GIF/red_diam.gif" ALT="o" > are as realistic as possible.</dd>

<dd>
<img SRC="GIF/red_diam.gif" ALT="o" > represent all levels of difficulty.</dd>

<dd>
<img SRC="GIF/red_diam.gif" ALT="o" > have their origin and the formulation
used clearly documented.</dd>
</dl>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Currently, we have 12 problem sets.
More are welcome; please see the "Submissions" section below.

<h4>
Developers:</h4>

<dl>
<dd>
<img SRC="GIF/red_diam.gif" ALT="o" > <a href="http://www.or.unc.edu/~pataki">Gabor
Pataki </a> University of North Carolina, Chapel Hill</dd>

<dd>
<img SRC="GIF/red_diam.gif" ALT="o" > <a href="http://corc.ieor.columbia.edu/~schmieta">Stefan
H. Schmieta </a>Columbia University</dd>
</dl>

<h4>
Problem descriptions:</h4>
<dl>
<dd>
<img SRC="GIF/red_diam.gif" ALT="o" ><a href="tablestat.html">A table</a> with problem sizes and known solutions. </dd>
<dd> <img SRC="GIF/red_diam.gif" ALT="o"><a href="tablecon.html">A table</a>
listing problem originators, formulators, and donators.
</dd>
</dl>

<h4>
Technical report:</h4>
<dl>
<dd>
<img SRC="GIF/red_diam.gif" ALT="o" > <a href="lib.ps">A preliminary version </a> with more details. </dd>
</dl>

<h4>
Problem formats:</h4>
<dl>
<dd>
<img SRC="GIF/red_diam.gif" ALT="o" > The  <b> .mat </b> files contain
the problems in the format used by <a href="http://www.unimaas.nl/~sturm/research.html"> Sedumi </a>. <br>
that solves a problem of the form min { c'x | st. Ax=b, x in K }, where K is an appropriate cone, representing <br>
semidefinite, quadratic, and linear constraints on x; for details, see
<a href="lib.ps"> the report. </a> <br>
This format is probably the easiest to convert to all other formats, if you have Matlab. <br>
For some large  graph problems, only a <b> .dat </b> file containing the graph description
is available, <br> with a commented Matlab code that can generate the <b> .mat </b> file from it.
</dd>
<dd> <img SRC="GIF/red_diam.gif" ALT="o" > Two converter codes are provided below, both written by Brian Borchers.
<ul>
<li>
<a href="writesdp.m">  A Sedumi -> SDPpack converter in Matlab. </a> </li>
<li>
<a href="sqlptosdpa.c">  An SDPpack->SDPA converter in C. </a> </li>
</ul>
</dd>
</dl>

<h4>
Reporting the solution quality:</h4>
<dl>
<dd>
<img SRC="GIF/red_diam.gif" ALT="o" > A document describing the required format for reporting
the error of the obtained solutions is <a href="error_report.html"> here </a> </dd>
</dl>







<h4>
Links: </h4>
<dl>
<dd>
<img SRC="GIF/red_diam.gif" ALT="o" > <a href="http://plato.la.asu.edu/dimacs.html">
  Hans Mittellman's independent benchmarking results. </a> </dd>
<dd>
<img SRC="GIF/red_diam.gif" ALT="o" > <a href="http://www.nmt.edu/~sdplib/">
The SDPLIB library by Brian Borchers. </a>
</dl>


<spacer type = vertical size = 20>

<hr>


<h4>
Problem sets:</h4>

<dl COMPACT>
<dd> <img SRC="GIF/red_diam.gif" ALT="o">
  The <a href="lib.tar.gz">complete problem library</a> as a <b>tar</b> file
  and compressed with <b>gzip</b>.

<spacer type = vertical size = 20>
<dd>
<img SRC="GIF/red_diam.gif" ALT="o" > The <b>torus </b>set:&nbsp; Max cut problems
from the Ising model of spin glasses.  <br>
&nbsp;&nbsp;&nbsp;&nbsp; <b> Caveat: </b> these max { cx | st. Ax =b, x in K } type problems <br>
&nbsp;&nbsp;&nbsp;&nbsp; are given as min { -cx | st. Ax =b, x in K }. To get the optimal values in the table, <br>
&nbsp;&nbsp;&nbsp;&nbsp; you must multiply the optimal value of the latter problem by (-1). <br>
&nbsp;&nbsp;&nbsp;&nbsp; In addition, the optimal values of
the <b> torusg </b> (that is, Gaussian instances) must be divided by 100,000.
</dd>

<ul>
<li>
<a href="TORUS/toruspm3-8-50.mat.gz">toruspm3-8-50.mat.gz&nbsp;<spacer type = horizontal size = 20>
</a><a href="TORUS/toruspm3-8-50.dat.gz">toruspm3-8-50.dat.gz</a></li>
<li>
<a href="TORUS/toruspm3-15-50.mat.gz">toruspm3-15-50.mat.gz&nbsp;<spacer type = horizontal size = 20></a><a href="TORUS/toruspm3-15-50.dat.gz">toruspm3-15-50.dat.gz</a></li>
<li>
<a href="TORUS/torusg3-8.mat.gz">torusg3-8.mat.gz&nbsp;<spacer type = horizontal size = 20></a><a href="TORUS/torusg3-8.dat.gz">torusg3-8.dat.gz</a></li>
<li>
<a href="TORUS/torusg3-15.mat.gz">torusg3-15.mat.gz&nbsp;<spacer type = horizontal size = 20></a><a href="TORUS/torusg3-15.dat.gz">torusg3-15.dat.gz</a></li>
<li>
<a href="TORUS/gentorus.m">gentorus.m </a>: commented matlab file to make <b>.mat </b>from <b>.dat </b>files</li>
</ul>


<spacer type = vertical size = 20>
<dd>
<img SRC="GIF/red_diam.gif" ALT="o" > The <b>fap </b>set :&nbsp;<spacer type = horizontal size = 10>Min
k-uncut problems from frequency assignment.</dd>

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


<spacer type = vertical size = 20>
<dd>
<img SRC="GIF/red_diam.gif" ALT="o" > The <b>bisection </b>set : Min bisection
problems from circuit partitioning.</dd>

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
<spacer type = vertical size = 20>
<dd>
<p><img SRC="GIF/red_diam.gif" ALT="o" > The <b>nql </b>set : Quadratic problems
to compute plastic collapse states: plain strain models.</p>
<p>The problems tagged "old" contain the formulations originally present in
the library. They, although equivalent, are inferior formulations and
are not true to the formulations as they were submitted.</p></dd>

<ul>
<li>
<a href="NQL/nql30.mat.gz">nql30.mat.gz</a>
<img SRC="GIF/new2.gif" ALT="(new)">,
<a href="NQL/nql30old.mat.gz">nql30old.mat.gz</a></li>

<li>
<a href="NQL/nql60.mat.gz">nql60.mat.gz</a>
<img SRC="GIF/new2.gif" ALT="(new)">,
<a href="NQL/nql60old.mat.gz">nql60old.mat.gz</a></li>

<li>
<a href="NQL/nql180.mat.gz">nql180.mat.gz</a>
<img SRC="GIF/new2.gif" ALT="(new)">,
<a href="NQL/nql180old.mat.gz">nql180old.mat.gz</a></li>
</ul>
<spacer type = vertical size = 20>
<dd>
<p><img SRC="GIF/red_diam.gif" ALT="o" > The <b>qssp </b>set: Quadratic problems
to compute plastic collapse states: supported plate models.</p>
<p>The problems tagged "old" contain the formulations originally present in
the library. They, although equivalent, are inferior formulations and
are not true to the formulations as they were submitted.</p></dd>

<ul>
<li>
<a href="QSSP/qssp30.mat.gz">qssp30.mat.gz</a>
<img SRC="GIF/new2.gif" ALT="(new)">,
<a href="QSSP/qssp30old.mat.gz">qssp30old.mat.gz</a></li>

<li>
<a href="QSSP/qssp60.mat.gz">qssp60.mat.gz</a>
<img SRC="GIF/new2.gif" ALT="(new)">,
<a href="QSSP/qssp60old.mat.gz">qssp60old.mat.gz</a></li>

<li>
<a href="QSSP/qssp180.mat.gz">qssp180.mat.gz</a>
<img SRC="GIF/new2.gif" ALT="(new)">,
<a href="QSSP/qssp180old.mat.gz">qssp180old.mat.gz</a></li>
</ul>

<spacer type = vertical size = 20>
<dd> <img SRC="GIF/red_diam.gif" ALT="o"> The <b>filter</b> set:
  Mixed SDP/SOCP problems from PAM (pulse amplitude modulation) filter
  design.
<ul>
<li> <a href="FILTER/filter48_socp.mat.gz">filter48_socp.mat.gz</a>
</li>
<li> <a href="FILTER/filtinf1.mat.gz">filtinf1.mat.gz</a>
</li>
<li> <a href="FILTER/minphase.mat.gz">minphase.mat.gz</a>
</li>
</ul>

<spacer type = vertical size = 20>
<dd>
<img SRC="GIF/red_diam.gif" ALT="o" > The <b>hinf </b>set: LMI (Linear Matrix
Inequality) problems.</dd>

<ul>
<li>
<a href="HINF/hinf12.mat.gz">hinf12.mat.gz</a></li>

<li>
<a href="HINF/hinf13.mat.gz">hinf13.mat.gz</a></li>
</ul>

<spacer type = vertical size = 20>
<dd>
<img SRC="GIF/red_diam.gif" ALT="o" > The <b>truss </b>set: Truss topology
design problems</dd>

<ul>
<li>
<a href="TRUSS/truss5.mat.gz">truss5.mat.gz</a></li>

<li>
<a href="TRUSS/truss8.mat.gz">truss8.mat.gz</a></li>
</ul>
<spacer type = vertical size = 20>

<dd>
<img SRC="GIF/red_diam.gif" ALT="o" > The <b>antenna</b> set: Antenna array
design problems  </a> </dd>

<ul>
<li>
<a href="ANTENNA/nb.mat.gz">nb.mat.gz</a></li>
<li>
<a href="ANTENNA/nb_L1.mat.gz">nb_L1.mat.gz</a></li>
<li>
<a href="ANTENNA/nb_L2.mat.gz">nb_L2.mat.gz</a></li>
<li>
<a href="ANTENNA/nb_L2_bessel.mat.gz">nb_L2_bessel.mat.gz</a></li>
</ul>
<spacer type = vertical size = 20>

<dd>
<img SRC="GIF/red_diam.gif" ALT="o" > The <b>copos</b> set: Checking a sufficient
condition for copositivity of a matrix  </a>  </dd>

<ul>
<li>
<a href="COPOS/copo14.mat.gz">copo14.mat.gz</a></li>
<li>
<a href="COPOS/copo23.mat.gz">copo23.mat.gz</a></li>
<li>
<a href="COPOS/copo68.mat.gz">copo68.mat.gz</a></li>
</ul>
<spacer type = vertical size = 20>

<dd>
<img SRC="GIF/red_diam.gif" ALT="o" > The <b>hamming</b> set: Instances
computing the theta function of Hamming graphs for which the exact value
is known.  </a> </dd>

<ul>
<li>
<a href="HAMMING/hamming_9_8.mat.gz">hamming_9_8.mat.gz</a></li>
<li>
<a href="HAMMING/hamming_10_2.mat.gz">hamming_10_2.mat.gz</a></li>
<li>
<a href="HAMMING/hamming_11_2.mat.gz">hamming_11_2.mat.gz</a></li>
<li>
<a href="HAMMING/hamming_7_5_6.mat.gz">hamming_7_5_6.mat.gz</a></li>
<li>
<a href="HAMMING/hamming_8_3_4.mat.gz">hamming_8_3_4.mat.gz</a></li>
<li>
<a href="HAMMING/hamming_9_5_6.mat.gz">hamming_9_5_6.mat.gz</a></li>
<li>
<a href="HAMMING/generate_hamming.m">generate_hamming.m</a>: A matlab file to generate
SDP instances for the theta function of arbitrary Hamming graphs</li>
</ul>
<spacer type = vertical size = 20>

<dd>
<img SRC="GIF/red_diam.gif" ALT="o" > The <b>sched</b> set:   Quadratic relaxations
of scheduling problems.</p>
<p> The files tagged "_orig" contain the models as they
were submitted. The corresponding "_scaled" files are reformulations
that (among other things) scale the problem. The scale factor for the
objective function is contained in the mat-file as c_mult.
</dd>

<ul>
<li>
<a href="SCHED/sched_50_50_orig.mat.gz">sched_50_50_orig.mat.gz</a></li>
<li>
<a href="SCHED/sched_100_50_orig.mat.gz">sched_100_50_orig.mat.gz</a></li>
<li>
<a href="SCHED/sched_100_100_orig.mat.gz">sched_100_100_orig.mat.gz</a></li>
<li>
<a href="SCHED/sched_200_100_orig.mat.gz">sched_200_100_orig.mat.gz</a></li>
<li>
<a href="SCHED/sched_50_50_scaled.mat.gz">sched_50_50_scaled.mat.gz</a></li>
<li>
<a href="SCHED/sched_100_50_scaled.mat.gz">sched_100_50_scaled.mat.gz</a></li>
<li>
<a href="SCHED/sched_100_100_scaled.mat.gz">sched_100_100_scaled.mat.gz</a></li>
<li>
<a href="SCHED/sched_200_100_scaled.mat.gz">sched_200_100_scaled.mat.gz</a></li>
</ul>
</dl>

<h4>
Submissions:</h4>
To add a problem set to the collection send a description of the set to
<a href="mailto:gabor@ieor.columbia.edu">Gabor
Pataki</a> or <a href="mailto:schmieta@corc.ieor.columbia.edu">Stefan H.
Schmieta</a>.
<p><a href="http://dimacs.rutgers.edu/archive/Challenges/Seventh/"><img SRC="GIF/go_up_btn.gif" ></a>
Back to the Challenge page
<p><a href="http://dimacs.rutgers.edu/archive/"><img SRC="GIF/home_dimacs.gif" ></a>
Back to the DIMACS home page
<br>
<hr>
<address>
This page maintained by: Stefan H. Schmieta <a href="mailto:schmieta@corc.ieor.columbia.edu">schmieta@corc.ieor.columbia.edu</a></address>

<br>

</body>
</html>

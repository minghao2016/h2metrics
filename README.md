h2metrics
=========

What is it?
-----------

This code provides tools for Riemannian shape analysis with second order Sobolev metrics on closed plane curves. It can be used to solve the initial and boundary value problems for geodesics and to compute Karcher means. It is able to factor out reparameterizations, translations, and rotations of the curves. 

For details we refer to the paper 

    @misc{BBHM2016,
      author  = {Martin Bauer, Martins Bruveris, Philipp Harms, Jakob M{\o}ller-Andersen},
      title   = {A Numerical Framework for {S}obolev Metrics on the Space of Curves},
      year    = {2016},
      note    = {Preprint available at arXiv:1603.03480.}
    }

Please cite our paper in your work.

Dependencies
------------

* MATLAB Curve Fitting Toolbox
* MATLAB Optimization Toolbox
* Manopt library, available at http://www.manopt.org. (Only needed to compute Karcher means.)

The code was tested on MATLAB R2014b with Manopt 2.0. 

Installation
------------

The Manopt library must be on the Matlab search path. 

Usage
-----

See the file "example.m" for an example of how to use the code.

Licence
-------

This program is free software: you can redistribute it and/or modify it under 
the terms of the GNU General Public License as published by the Free Software 
Foundation, either version 3 of the License, or (at your option) any later 
version.

This program is distributed in the hope that it will be useful, but WITHOUT 
ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS 
FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with 
this program. If not, see http://www.gnu.org/licenses/.

Contacts
--------

* Martin Bauer (martin dot bauer at tuwien dot ac dot at)
* Martins Bruveris (martins dot bruveris at brunel dot ac dot uk)
* Philipp Harms (philipp dot harms at math dot ethz dot ch)
* Jakob Møller-Andersen (jakmo at dtu dot dk)

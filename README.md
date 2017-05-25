# MyMrBayes

A version of MrBayes, based on 3.2.4 with some improvements:

Things to do:

* Fix user-defined temperatures. It works (I think), but was confusing
in that the user-supplied numbers were being used as INVERSE temperatures. Fixed.

* Output trees and parameters for HOT chains also. Now outputting hot-chain
info, in separate file. 


Feb 14 2015: Temperature function renamed to InverseTemperature, because
that is what it returns. When you do temp=(1.0, 1.2, 1.5) you get those 3 temperatures;
before you got inverse temperatures of 1.2, 1.5, i.e. these would have been colder chains, 
not hot chains. And added some help info about this.

Feb 16 2015: Now allowing outputting of parameters, trees sampled, for hot chains as well as cold.
All are going into one file. So, e.g. if nchains=3, the first line with a given gen, is for the cold chain,
next line is for the next hotter chain, and the line after that is for the hottest chain.

May 25 2017: Info about trees (topologies only) and parameters is output to .tp file. This file has all runs 
and multiple temperatures (the coolest nchainsout temperatures), in one file. Columns are 
generation, ln(posterior prob.), tree length, alpha, pinvar, run number, T number, walker number, ln(importance-sampling weight), topology.

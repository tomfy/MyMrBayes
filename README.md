# MyMrBayes

A version of MrBayes, based on 3.2.4 with some improvements:

Things to do:

* Fix user-defined temperatures. It works (I think), but was confusing
in that the user-supplied numbers were being used as INVERSE temperatures. Fixed.

* Optionally output *run?.t, *run?.p files for HOT chains also. Now outputting hot-chain
info, although not in separate file. Putting all temperature output in one run?.p file.


Feb 14 2015: Temperature function renamed to InverseTemperature, because
that is what it returns. When you do temp=(1.0, 1.2, 1.5) you get those 3 temperatures;
before you got inverse temperatures of 1.2, 1.5, i.e. these would have been colder chains, 
not hot chains. And added some help info about this.

Feb 16 2015: Now allowing outputting of parameters, trees sampled, for hot chains as well as cold.
All are going into one file. So, e.g. if nchains=3, the first line with a given gen, is for the cold chain,
next line is for the next hotter chain, and the line after that is for the hottest chain.

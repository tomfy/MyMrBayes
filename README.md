# MyMrBayes

A version of MrBayes, based on 3.2.4 with some improvements:

Things to do:
	* Fix user-defined temperatures. It works (I think), but was confusing
in that the user-supplied numbers were being used as INVERSE temperatures. Fixed.
	* Optionally output *run?.t, *run?.p files for HOT chains also.


Feb 14 2015: Temperature function renamed to InverseTemperature, because
that is what it returns. When you do temp=(1.0, 1.2, 1.5) you get those 3 temperatures;
before you got inverse temperatures of 1.2, 1.5, i.e. these would have been colder chains, 
not hot chains. And added some help info about this.

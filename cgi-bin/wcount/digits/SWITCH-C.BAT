@echo off

pkunzip *.zip

rename 1*.gif one.gif
rename 2*.gif two.gif
rename 3*.gif three.gif
rename 4*.gif four.gif
rename 5*.gif five.gif
rename 6*.gif six.gif
rename 7*.gif seven.gif
rename 8*.gif eight.gif
rename 9*.gif nine.gif
rename 0*.gif zero.gif
rename a*.gif a.gif
rename p*.gif p.gif
rename c*.gif c.gif
rename d*.gif d.gif

..\mkstrip zero.gif one.gif two.gif three.gif four.gif five.gif six.gif seven.gif eight.gif nine.gif c.gif a.gif p.gif d.gif> strip.gif

del one.gif
del t*.gif
del f*.gif
del six.gif
del seven.gif
del eight.gif
del nine.gif
del zero.gif
del a.gif
del p.gif
del c.gif
del d.gif

move *.zip ..\done
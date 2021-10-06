# floating point operations - single precision
#### load - l.s
#### move - mov.s <br/>
#### read - $v0, 6 in $f12 <br/>
#### print - $v0,2 <br/>
### Can be stored in all 32 registers from $f0 to $f31

# double operations - double precision
#### load - l.d <br/>
#### move - mov.d <br/>
#### read - $v0, 7 in $f12 <br/>
#### print 0 $v0, 3 <br/>
### Can only be stored in even registers like $f0, $f2..$f30 <br/>
### It is because of 64-bits spit into 2 registers - even and following odd

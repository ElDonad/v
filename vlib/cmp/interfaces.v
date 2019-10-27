module cmp

pub interface Equ {
	eq(Equ other) bool
}

pub interface Cmp {
	cmp(Cmp other) Ordering
}

//return the maximum between self and another value. Return the second argument if the two are equal.
pub fn (self Cmp) max (other Cmp){
	match self.cmp(other) {
		Ordering.greater {return self}
		Ordering.less {return other}
		Ordering.equal {return other}
	}
} 

//return the minimum between self and another value. Return the second argument if the two are equal.
pub fn (self Cmp) min (other Cmp){
	match self.cmp(other){
		Ordering.less {return self}
		Ordering.equal {return other}
		Ordering.greater {return other}
	}
}
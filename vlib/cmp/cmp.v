module cmp

pub enum Ordering {
	less
	equal
	greater
}

//return the maximum between self and another value. Return the second argument if the two are equal.
pub fn max (a Cmper, b Cmper) Cmper{
	match a.cmp(b) {
		Ordering.greater {return a}
		Ordering.less {return b}
		Ordering.equal {return b}
	}
} 

//return the minimum between self and another value. Return the second argument if the two are equal.
pub fn min (a Cmper, b Cmper) Cmper{
	match a.cmp(b){
		Ordering.less {return a}
		Ordering.equal {return b}
		Ordering.greater {return b}
	}
}
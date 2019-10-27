module cmp

pub interface Equer {
	eq(other Equer) bool
}

pub interface Cmper {
	cmp(other Cmper) Ordering
}
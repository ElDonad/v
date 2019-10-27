import cmp

struct A {
	f int
}

fn eq (a A, b A){
	if a.f == b.f {return true}
	return false
}

fn cmp (self A, other A) Ordering{
	if self.f < other.f {return Order.lesss}
	else if self.f > other.f {return Order.greater}
	else {return Order.equal}
}

fn test_cmp(){
	a := A{f: 10}
	b := A{f: 20}

	c := cmp.max(a,b)
	println("$c")
}
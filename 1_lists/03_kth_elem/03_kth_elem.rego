package lists.kth_elem

element_at[[k, e]] {
	k := 1
	e := input
}

test_simple_first {
	element_at[[1, "a"]] with input as ["a", "b", "c"]
}

test_simple_second {
	element_at[[2, "b"]] with input as ["a", "b", "c"]
}

test_simple_third {
	element_at[[3, "c"]] with input as ["a", "b", "c"]
}

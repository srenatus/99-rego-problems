package lists.reverse

reverse = x {
	x := input
}

test_singleton {
	reverse == [1] with input as [1]
}

test_pair {
	reverse == [2, 1] with input as [1, 2]
}

test_simple {
	reverse == [3, 2, 1] with input as [1, 2, 3]
}

test_inverse {
	a := ["a", 1, 0, true]
	b := [true, 0, 1, "a"]
	reverse == b with input as a # b is reverse of a
	reverse == a with input as b # so reversing it again yields a
}

package lists.last

test_simple {
	last == "c" with input as ["a", "b", "c"]
}

test_simple_numbers {
	last == 2 with input as [1, 2]
}

test_singleton {
	last == 1 with input as [1]
}

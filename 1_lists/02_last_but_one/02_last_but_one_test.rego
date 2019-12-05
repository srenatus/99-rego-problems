package lists.last_but_one

test_simple {
	last_but_one == "b" with input as ["a", "b", "c"]
}

test_simple_numbers {
	last_but_one == 1 with input as [1, 2]
}

test_lists_too {
	last_but_one ==  [1, 2] with input as [[], [1, 2], ["a", "b"]]
}

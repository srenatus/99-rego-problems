package lists.number_of_elements

test_simple {
	number_of_elements == 3 with input as [2, 2, 3]
}

test_singleton {
	number_of_elements == 1 with input as ["aaa"]
}

test_empty {
	number_of_elements == 0 with input as []
}

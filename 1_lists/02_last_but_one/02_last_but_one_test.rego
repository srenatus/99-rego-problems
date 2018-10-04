package lists.last_but_one

test_simple {
  last_but_one(["a", "b", "c"], "b")
}

test_simple_numbers {
  last_but_one([1, 2], 1)
}

test_lists_too {
  last_but_one([[], [1, 2], ["a", "b"]], [1, 2])
}

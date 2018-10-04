package lists.last

test_simple {
  last(["a", "b", "c"], "c")
}

test_simple_numbers {
  last([1, 2], 2)
}

test_singleton {
  last([1], 1)
}

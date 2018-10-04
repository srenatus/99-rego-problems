package lists.kth_elem

test_simple_first {
  element_at(["a", "b", "c"], 1, "a")
}

test_simple_second {
  element_at(["a", "b", "c"], 2, "b")
}

test_simple_third {
  element_at(["a", "b", "c"], 3, "c")
}

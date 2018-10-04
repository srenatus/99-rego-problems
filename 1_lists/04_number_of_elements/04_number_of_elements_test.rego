package lists.number_of_elements

test_simple {
  number_of_elements([2, 2, 3], 3)
}

test_singleton {
  number_of_elements(["aaa"], 1)
}

test_empty {
  number_of_elements([], 0)
}

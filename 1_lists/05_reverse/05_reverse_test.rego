package lists.reverse

test_singleton {
  reverse([1], [1])
}

test_pair {
  reverse([1, 2], [2, 1])
}

test_simple {
  reverse([1, 2, 3], [3, 2, 1])
}

test_inverse {
  a = ["a", 1, 0, true]
  b = [true, 0, 1, "a"]
  reverse(a, b) # b is reverse of a
  reverse(b, a) # so reversing it again yields a
}

# 99-rego-problems

This is a collection of exercises to help you learn [Rego](https://www.openpolicyagent.org/docs/latest/#rego), the policy language for [Open Policy Agent](https://www.openpolicyagent.org). Each exercise has complete tests but an unfinished implementation. The goal for each exercise is to get the tests to pass without changing the tests.

## How to run

1. Clone this repository
1. [Install OPA](https://www.openpolicyagent.org/docs/latest/#running-opa)
1. `cd 1_lists/01_last` to start the first exercise
1. Run `opa test .` and see if the tests pass
1. Modify the policy `.rego` file (not the `_test.rego` file) and re-run the tests
1. If tests pass, move onto the next exercise folder. If not, try modifying the policy and run the tests again.
1. Repeat until you have completed all the exercises! 🎉

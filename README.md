# 99-rego-problems

This is a collection of exercises to help you learn [Rego](https://www.openpolicyagent.org/docs/latest/#rego), the policy language for [Open Policy Agent](https://www.openpolicyagent.org). Each exercise has complete tests but an unfinished implementation. The goal for each exercise is to get the tests to pass without changing the tests.

## How to run

### Locally, using the OPA CLI

1. Clone this repository
1. [Install OPA](https://www.openpolicyagent.org/docs/latest/#running-opa)
1. `cd 1_lists/01_last` to start the first exercise.
1. Run `opa test .` and see if the tests pass.
1. Modify the policy `.rego` file and re-run the tests (located in the same file).
1. If tests pass, move onto the next exercise folder. If not, try modifying the policy and run the tests again.
1. Repeat until you have completed all the exercises! 🎉

### On the playground

The exercises provide _"Open in Playground"_ links that'll send you to an OPA playground with the exercise loaded.
You can then edit the rego code there.

You'll have finished an exercise when all existing tests show up as `true` in the output, e.g.

```json
{
  "last": "bar",
  "test_simple": true,
  "test_simple_numbers": true,
  "test_singleton": true
}
```

To focus on one test case, you can highlight it, and press _Evaluate Selection_.

### Where to go when you're stuck

In no particular order, you may find help here:

- [The OPA documentation](https://www.openpolicyagent.org/docs/latest/)
- [The OPA slack](https://slack.openpolicyagent.org/)
- [StackOverflow](https://stackoverflow.com), note that there's [an `open-policy-agent` tag](https://stackoverflow.com/questions/tagged/open-policy-agent)

Some exercises might also provide _hints_ in their corresponding READMEs.

## Misc

This repository contains a very simple nodejs app to support the "Open in Playground" links.
It's running on [glitch.com](https://glitch.com) and creates a fresh playground for the queried exercise.

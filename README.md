# Two Envelopes Problem

This is a Ruby interpretation of the ["two-envelope paradox"](https://en.wikipedia.org/wiki/Two_envelopes_problem) and its deterministic solution by [Thomas M. Cover](https://en.wikipedia.org/wiki/Thomas_M._Cover).

The program will test the paradox by only picking the first envelope, the second envelope, and using Cover's strategy.

To use, clone the repo and run `ruby ./bin/run.rb` in the console. The program will prompt for the number of iterations to test the problem (a good amount like 10000 should show the results sufficiently).

Sample output:

```
Welcome to the Two-Envelope Paradox!
Enter the amount of iterations: 5000


Totals after 1000000 iterations:
==============================
Always first envelope: 		$750503947
Always second envelope: 	$750987713
Using Tom Cover's method: 	$813539396
```

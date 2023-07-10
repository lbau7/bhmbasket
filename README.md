
# bhmbasket

This is a slightly modified version of the CRAN-version of `bhmbasket`.
The following modifications were made:

1.  In the function `getPostQuantiles()` which is called by
    `performAnalyses()`, results are analysed in a nested for-loop in
    parallel with the `%dorng%` operator. However, in nested parallel
    for-loops random numbers are correlated, even when the `%dorng%` is
    used. Therefore, in the inner loop the operator was changed to
    `%do%`, such that only the outer loop runs in parallel.
2.  In the function `getPosterior()`, which is called by
    `performAnalyses()`, the number of chains and number of burn-in
    iterations is hardcoded to 2 chains and
    `floor(n_mcmc_iterations / 3)` burn-in iterations. This was changed
    to 1 chain and 1000 burn-in iterations.

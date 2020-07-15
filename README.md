# User case for the R's `import` package
This example repo contains a user case, problem and solution with the `import` package.

## Problem:
### the `import` takes path relative to the current path, not relative to the path of the script.
This makes scripts less flexible as running them in different path than the current script path breaks the imports. This can be temporarily fixed by changing current path to the location of the script and back after the import.

To show the two following problems, run:
* `Rscript run_me.r` -- Everything is working if the script is run from this exact path. However, when this is run from different path, imports are broken.
* `Rscript src/run_me_too.r` -- While the relative imports are correct, since the current dir is different than the relative path in the import statements, stuff is broken
* `Rscript src/run_me_fixed.r` -- Changing the directory temporarily fixes the problem.

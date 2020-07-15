# User case for the R's `import` package
This example repo contains a user case and associated problems with the `import` package.

## Problems:
### the `library(package)` is not exported.
This is known problem and it is suggested to use `package::function` instead. This is fine for most functions, however this is problematic in some cases, such as the `magrittr` package, which is exported.
### the `import` takes path relative to the current path, not relative to the path of the script.
This makes scripts less flexible as running them in different path than the current script path breaks the imports. This can be temporarily fixed by changing current path to the location of the script and back after the import.

To show the two following problems, run:
* `Rscript run_me.r`
* `Rscript src/run_me_too.r`

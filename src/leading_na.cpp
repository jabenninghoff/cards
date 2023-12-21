#include <Rcpp.h>
using namespace Rcpp;

//' Leading NA
//'
//' This function returns a logical vector identifying if
//' there are leading NA, marking the leading NAs as TRUE and
//' everything else as FALSE.
//'
//' Code from R-Bloggers [Rcpp and Roxygen2](https://www.r-bloggers.com/2016/08/rcpp-and-roxygen2/).
//'
//' Installed with help from [usethis::use_rcpp()] and roxygen2 instructions on
//'   [Rcpp](https://roxygen2.r-lib.org/articles/roxygen2.html#rcpp).
//'
//' Steps to install:
//'
//' 1. Create `src/leading_na.cpp` (this file)
//' 1. Run [usethis::use_rcpp()], add `@importFrom Rcpp sourceCpp` and
//'    `@useDynLib cards, .registration = TRUE` to `package.R` as directed
//' 1. Run [desc::desc_normalize()] and [devtools::document()]
//'
//' @param x An integer vector
//' @export
// [[Rcpp::export]]
LogicalVector leading_na(IntegerVector x) {
  int n = x.size();
  LogicalVector leading_na(n);

  int i = 0;
  while((i < n) &&(x[i] == NA_INTEGER)) {
    leading_na[i] = TRUE;
    i++;
  }
  return leading_na;
}

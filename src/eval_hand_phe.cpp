#include <Rcpp.h>
using namespace Rcpp;

#include <phevaluator/phevaluator.h>
#include <iostream>
#include <cassert>

//' Evaluate a poker hand using PH Evaluator
//'
//' Evaluate the rank category of a five card poker hand using
//'   [PH Evaluator](https://github.com/HenryRLee/PokerHandEvaluator).
//'
//' Implemented following
//'   [Rcpp-libraries](https://CRAN.R-project.org/package=Rcpp/vignettes/Rcpp-libraries.pdf),
//'   PH Evaluator
//'   [`cpp_example.cc`](https://github.com/HenryRLee/PokerHandEvaluator/blob/master/cpp/examples/cpp_example.cc),
//'   and [RcppAnnoy](https://github.com/eddelbuettel/rcppannoy), with help from
//'   R-Bloggers [Rcpp and Roxygen2](https://www.r-bloggers.com/2016/08/rcpp-and-roxygen2/),
//'   [usethis::use_rcpp()], roxygen2 instructions on
//'   [Rcpp](https://roxygen2.r-lib.org/articles/roxygen2.html#rcpp),
//'   [Rcpp for everyone](https://teuder.github.io/rcpp4everyone_en/), the rxylib
//'   [`Makefile`](https://github.com/R-Lum/rxylib/blob/master/src/Makevars) and
//'   [Stack Overflow](https://stackoverflow.com/questions/43597632/understanding-the-contents-of-the-makevars-file-in-r-macros-variables-r-ma).
//'
//' `eval_hand_phe` returns one of the rank categories "Straight Flush", "Four of a Kind",
//'   "Full House", "Flush", "Straight", "Three of a Kind", "Two Pair", "One Pair", or "High Card".
//'
//' "Royal Flush" and "Jacks or Better" are not currently supported.
//'
//' @param hand a hand of cards (an integer vector of length 5).
//' @return string hand rank.
//' @examples
//' hand <- deal_hand(new_deck())
//' print_hand(hand)
//' eval_hand_phe(hand)
//' @export
// [[Rcpp::export]]
String eval_hand_phe(IntegerVector hand) {
  phevaluator::Rank rank = phevaluator::EvaluateCards(hand[0], hand[1], hand[2], hand[3], hand[4]);
  return rank.describeCategory();
}

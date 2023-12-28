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
//'   [`cpp_example.cc`](https://github.com/HenryRLee/PokerHandEvaluator/blob/master/cpp/examples/cpp_example.cc)
//'   and [RcppAnnoy](https://github.com/eddelbuettel/rcppannoy).
//'
//' Currently implemented as a stub function that always returns "poker_hand".
//'
//' @param hand a hand of cards (an integer vector of length 5).
//' @return string hand rank.
//' @export
// [[Rcpp::export]]
String eval_hand_phe(IntegerVector hand) {
  // phevaluator::Rank rank = phevaluator::EvaluateCards(hand[0], hand[1], hand[2], hand[3], hand[4]);
  // return rank.describeCategory();
  return "poker_hand";
}

#include <Rcpp.h>
using namespace Rcpp;

//' Evaluate a poker hand using PH Evaluator
//'
//' Evaluate the rank category of a five card poker hand using
//'   [PH Evaluator](https://github.com/HenryRLee/PokerHandEvaluator).
//'
//' Currently implemented as a stub function that always returns "poker_hand".
//'
//' @return string hand rank
//' @export
// [[Rcpp::export]]
String eval_hand_phe() {
  return "poker_hand";
}

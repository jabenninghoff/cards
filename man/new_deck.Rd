% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deck.R
\name{new_deck}
\alias{new_deck}
\title{Create a deck of cards}
\usage{
new_deck()
}
\description{
Return a deck of 52 playing cards represented as integers from 0 to 51.
}
\details{
Following the example of \href{https://github.com/HenryRLee/PokerHandEvaluator/blob/master/python/phevaluator/card.py}{PH Evaluator},
integers are used to represent a card \code{id}, with the two least significant bits representing
the 4 suits (0-3), and the rest representing the 13 ranks (0-12):\tabular{rrrrr}{
    \tab C \tab D \tab H \tab S \cr
   2 \tab 0 \tab 1 \tab 2 \tab 3 \cr
   3 \tab 4 \tab 5 \tab 6 \tab 7 \cr
   4 \tab 8 \tab 9 \tab 10 \tab 11 \cr
   5 \tab 12 \tab 13 \tab 14 \tab 15 \cr
   6 \tab 16 \tab 17 \tab 18 \tab 19 \cr
   7 \tab 20 \tab 21 \tab 22 \tab 23 \cr
   8 \tab 24 \tab 25 \tab 26 \tab 27 \cr
   9 \tab 28 \tab 29 \tab 30 \tab 31 \cr
   T \tab 32 \tab 33 \tab 34 \tab 35 \cr
   J \tab 36 \tab 37 \tab 38 \tab 39 \cr
   Q \tab 40 \tab 41 \tab 42 \tab 43 \cr
   K \tab 44 \tab 45 \tab 46 \tab 47 \cr
   A \tab 48 \tab 49 \tab 50 \tab 51 \cr
}


For each card, the rank is \code{id \%/\% 4}, and the suit is \code{id \%\% 4}.
}
\examples{
new_deck()
new_deck() \%/\% 4
new_deck() \%\% 4
}

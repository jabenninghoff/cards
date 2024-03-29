% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deck-df.R
\name{print_hand_df}
\alias{print_hand_df}
\title{Print a hand of cards using \code{data.frame}}
\usage{
print_hand_df(h, collapse = TRUE)
}
\arguments{
\item{h}{a \code{data.frame} of 5 cards.}

\item{collapse}{if \code{TRUE}, collapse the character vector.}
}
\value{
character vector of sorted cards.
}
\description{
Returns a character vector of sorted cards, collapsed by default.
}
\examples{
deck <- new_deck_df()
(hand <- deal_hand_df(deck))
print_hand_df(hand)
}

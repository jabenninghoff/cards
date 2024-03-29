% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deck.R
\name{deal_hand}
\alias{deal_hand}
\title{Deal a hand of cards}
\usage{
deal_hand(deck, size = 5)
}
\arguments{
\item{deck}{a deck created by \code{\link[=new_deck]{new_deck()}}.}

\item{size}{hand size, default = 5.}
}
\description{
Return a five card hand from a deck of cards, as an \code{integer}
}
\details{
Uses \code{\link[=sample]{sample()}} to select random cards.
}
\examples{
deal_hand(new_deck())
}

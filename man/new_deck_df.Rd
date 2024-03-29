% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deck-df.R
\name{new_deck_df}
\alias{new_deck_df}
\title{Create a deck of cards using \code{data.frame}}
\usage{
new_deck_df()
}
\value{
a \code{data.frame} containing a deck of 52 cards
}
\description{
Return a standard deck of 52 playing cards, as a \code{data.frame} with \code{rank} and \code{suit}.
}
\details{
Uses \code{\link[=expand.grid]{expand.grid()}} which creates a \code{data.frame} of factors combining ranks and suits.
}
\examples{
new_deck_df()
}

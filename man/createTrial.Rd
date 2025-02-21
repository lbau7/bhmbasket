% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DataFunctions.R
\name{createTrial}
\alias{createTrial}
\title{createTrial}
\usage{
createTrial(n_subjects, n_responders)
}
\arguments{
\item{n_subjects}{A vector of integers for the number of subjects in the trial outcome}

\item{n_responders}{A vector of integers for the number of responders in the trial outcome}
}
\value{
An object of class \code{scenario_list} with the scenario data for a single trial outcome.
}
\description{
This function creates an object of class \code{scenario_list}
for a single trial outcome, which can subsequently be analyzed with other functions of
\code{bhmbasket}, e.g. \code{\link[bhmbasket]{performAnalyses}}
}
\details{
This function is a wrapper for \code{\link[bhmbasket]{simulateScenarios}} with

\if{html}{\out{<div class="sourceCode">}}\preformatted{simulateScenarios(
 n_subjects_list     = list(n_subjects),
 response_rates_list = list(n_responders),
 n_trials            = 1)
}\if{html}{\out{</div>}}
}
\examples{
 trial_outcome <- createTrial(n_subjects   = c(10, 20, 30, 40),
                              n_responders = c( 1,  2,  3,  4))
}
\seealso{
\code{\link[bhmbasket]{simulateScenarios}}
\code{\link[bhmbasket]{performAnalyses}}
}
\author{
Stephan Wojciekowski
}

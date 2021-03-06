% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SIS.R
\name{SIS_ode}
\alias{SIS_ode}
\title{Susceptible-Infected-Susceptible Model}
\usage{
SIS_ode(t, x, params)
}
\arguments{
\item{t}{The timestep overwhich to calculate derivatives}

\item{x}{A numeric vector of compartment populations.}

\item{params}{A named vector of parameter values.}
}
\value{
A vector of derivatives
}
\description{
Susceptible-Infected-Susceptible Model
}
\examples{
##Model Input
S_0 <- 999
I_0 <- 1
beta <- 3
chi <- 2
parameters <- c(beta = beta, chi = chi)
inits <- c(S = S_0, I = I_0)

SIS_ode(1, inits, parameters)
}

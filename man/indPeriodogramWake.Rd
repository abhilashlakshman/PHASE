% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/indPeriodogramWake.R
\name{indPeriodogramWake}
\alias{indPeriodogramWake}
\title{Periodogram plot for "wake" data of individual flies}
\usage{
indPeriodogramWake(
  data,
  bin = 30,
  method = "ChiSquare",
  low.per = 16,
  high.per = 32,
  alpha = 0.05,
  time.res = 20,
  ind = 1
)
}
\arguments{
\item{data}{Input data file. The input for this function must be an output from wakeData(). See ??wakeData().}

\item{bin}{Intervals in which input data is saved (in minutes). This defaults to 30.}

\item{method}{Choose the method for performing time-series analysis. Currently, three methods are implemented for analysis - "ChiSquare", "Autocorrelation", and "LombScargle". This defaults to "ChiSquare".}

\item{low.per}{Choose the lowest period (in hours) for analysis. This defaults to 16.}

\item{high.per}{Choose the highest period (in hours) for analysis. This defaults to 32.}

\item{alpha}{Choose the significance level for periodogram analysis. This defaults to 0.05.}

\item{time.res}{Resolution of periods (in minutes) to analyse while using the ChiSquare periodogram. For instance, if users wish to scan periods from low.per to high.per in the following manner: 16, 16.5, 17, 17.5, and so on, then time.res must be 30. This defaults to 20.}

\item{ind}{The channel number (or individual) whose periodogram must be plotted.}
}
\value{
A \code{plotly} \code{htmlwidget} with the individual periodogram of a user defined fly.
}
\description{
This function generates a periodogram for the "wake" data of a single fly. The output of this function is a plotly object.
}
\examples{
td <- trimData(data = df, start.date = "19 Dec 20", start.time = "21:00",
n.days = 3, bin = 1, t.cycle = 24)
wd <- wakeData(td)
ind.periodogram.wake <- indPeriodogramWake(data = wd, ind = 2)
}

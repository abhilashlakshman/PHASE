% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/allActogramsWake.R
\name{allActogramsWake}
\alias{allActogramsWake}
\title{Generate actograms for "wake" data}
\usage{
allActogramsWake(data, sleep.def = c(5), bin = 30, t.cycle = 24)
}
\arguments{
\item{data}{Input data file. The input for this function must be the output of the function trimData(). See ??trimData().}

\item{sleep.def}{Definition of sleep. Traditionally, a single bout of sleep is defined as any duration of inactivity that is equal to or greater than 5-minutes. However, sometimes it may be of interest to examine longer bouts of sleep or specific bout durations; sleep.def allows users to change the definition of sleep. The default input is a single value vector of value 5. If users wish to analyse sleep only between 5 to 20 mins, the input must be c(5,20).}

\item{bin}{Intervals in which data are saved (in minutes). This defaults to 30. The value of bin cannot be lower than that of sleep.def.}

\item{t.cycle}{Define the period of the environmental cycle or a single day in hours. This defaults to 24.}
}
\value{
A \code{plotly} \code{htmlwidget} with 32 actograms (wake data) in a 4-by-8 array.
}
\description{
This function generates a composite figure with actograms for all flies in a DAM scanned monitor file. Input for this function must be an output from the trimData() function. The output of this function is a large plotly object. This function requires the packages "plotly" and "zoo".
In a particular bin, sleep is calculated as the total minutes of inactivity equal to or greater than the defined threshold (sleep.def; typically, 5-minutes). Wake is defined as the total time spent by the fly not sleeping. See also ??wakeData().
}
\examples{
td <- trimData(data = df, start.date = "19 Dec 20", start.time = "21:00",
n.days = 3, bin = 1, t.cycle = 24)
actograms.wake <- allActogramsWake(data = td[,1:15])
}

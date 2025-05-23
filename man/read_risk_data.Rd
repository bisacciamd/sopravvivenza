% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_data.R
\name{read_risk_data}
\alias{read_risk_data}
\title{Read Number-at-Risk Data}
\usage{
read_risk_data(
  file_path,
  time_col = 1,
  risk_col = 2,
  header = FALSE,
  time_scale = "auto"
)
}
\arguments{
\item{file_path}{Path to CSV file with risk data}

\item{time_col}{Column number or name for time values (default: 1)}

\item{risk_col}{Column number or name for number at risk values (default: 2)}

\item{header}{Whether file has a header row (default: FALSE)}

\item{time_scale}{Character string indicating time scale. If "auto" (default),
will attempt to detect scale. Other options: "months", "years", "days", "weeks"}
}
\value{
A dataframe with time points and corresponding numbers at risk
}
\description{
This function reads data on the number of patients at risk at specific time points,
which is often presented in tables below Kaplan-Meier curves.
}
\examples{
\dontrun{
risk_data <- read_risk_data("path/to/risk_data.csv")
}
}

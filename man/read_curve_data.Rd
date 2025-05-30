% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_data.R
\name{read_curve_data}
\alias{read_curve_data}
\title{Read and Preprocess Digitized Curve Data}
\usage{
read_curve_data(
  file_path,
  time_col = 1,
  surv_col = 2,
  header = FALSE,
  convert_percentage = TRUE,
  time_scale = "auto"
)
}
\arguments{
\item{file_path}{Path to CSV file with digitized curve data}

\item{time_col}{Column number or name for time values (default: 1)}

\item{surv_col}{Column number or name for survival probabilities (default: 2)}

\item{header}{Whether file has a header row (default: FALSE)}

\item{convert_percentage}{Whether to convert survival percentages to proportions (default: TRUE)}

\item{time_scale}{Character string indicating time scale. If "auto" (default),
will attempt to detect scale. Other options: "months", "years", "days", "weeks"}
}
\value{
A dataframe with preprocessed time and survival probability data
}
\description{
This function reads CSV files containing digitized Kaplan-Meier curve data
and preprocesses them for subsequent analysis.
}
\examples{
\dontrun{
curve_data <- read_curve_data("path/to/digitized_curve.csv")
curve_data <- read_curve_data("path/to/digitized_curve.csv", 
                             time_col = "time", 
                             surv_col = "survival",
                             header = TRUE)
}
}

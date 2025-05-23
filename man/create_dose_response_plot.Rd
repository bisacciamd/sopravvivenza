% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/visualization.R
\name{create_dose_response_plot}
\alias{create_dose_response_plot}
\title{Create Dose-Response Plot for Meta-Regression}
\usage{
create_dose_response_plot(
  spline_results,
  title = NULL,
  xlab = NULL,
  ylab = "Hazard Ratio",
  filename = "dose_response_plot",
  output_dir = NULL,
  file_format = "both",
  show_points = TRUE,
  show_error_bars = TRUE,
  show_labels = FALSE,
  null_line_value = 1,
  ribbon_alpha = 0.2,
  point_size = 3,
  line_size = 1
)
}
\arguments{
\item{spline_results}{Results from perform_spline_meta_regression}

\item{title}{Plot title (default: NULL, auto-generated)}

\item{xlab}{X-axis label (default: NULL, uses moderator name)}

\item{ylab}{Y-axis label (default: "Hazard Ratio")}

\item{filename}{Output file name without extension (default: "dose_response_plot")}

\item{output_dir}{Output directory (default: NULL, no file saved)}

\item{file_format}{File format for saving: "pdf", "png", or "both" (default: "both")}

\item{show_points}{Whether to show original study points (default: TRUE)}

\item{show_error_bars}{Whether to show error bars for study points (default: TRUE)}

\item{show_labels}{Whether to show study labels (default: FALSE)}

\item{null_line_value}{Value for reference line (default: 1 for hazard ratios)}

\item{ribbon_alpha}{Transparency of confidence interval ribbon (default: 0.2)}

\item{point_size}{Size of study points (default: 3)}

\item{line_size}{Size of spline curve line (default: 1)}
}
\value{
A list with plot object and, if requested, paths to saved files
}
\description{
This function creates and optionally saves a dose-response plot visualizing
the relationship between a moderator variable and effect size.
}
\examples{
\dontrun{
# Perform spline meta-regression
meta_data <- data.frame(
  study = c("Study 1", "Study 2", "Study 3"),
  hr = c(1.5, 2.1, 1.8),
  lower = c(1.1, 1.6, 1.2),
  upper = c(2.0, 2.8, 2.7),
  gls = c(-16, -14, -12)  # Moderator variable
)

spline_results <- perform_spline_meta_regression(
  meta_data, 
  moderator_name = "gls"
)

# Create dose-response plot
create_dose_response_plot(
  spline_results,
  output_dir = "figures"
)
}
}

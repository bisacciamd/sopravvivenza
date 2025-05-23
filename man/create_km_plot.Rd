% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/visualization.R
\name{create_km_plot}
\alias{create_km_plot}
\title{Create Kaplan-Meier Plot Comparing Two Groups}
\usage{
create_km_plot(
  combined_data,
  group_var = "group",
  time_var = "time",
  status_var = "status",
  title = "Kaplan-Meier Plot",
  group_labels = NULL,
  colors = c("#2E9FDF", "#E7B800"),
  filename = "km_plot",
  output_dir = NULL,
  file_format = "both",
  show_risk_table = TRUE,
  show_pvalue = TRUE,
  show_conf_int = TRUE,
  xlab = "Time",
  ylab = "Survival Probability",
  risk_table_height = 0.25
)
}
\arguments{
\item{combined_data}{Combined dataset with both groups}

\item{group_var}{Name of the group variable in combined_data}

\item{time_var}{Name of the time variable in combined_data (default: "time")}

\item{status_var}{Name of the status variable in combined_data (default: "status")}

\item{title}{Plot title (default: "Kaplan-Meier Plot")}

\item{group_labels}{Vector of labels for the groups (default: NULL, will use group names)}

\item{colors}{Vector of colors for the groups (default: c("#2E9FDF", "#E7B800"))}

\item{filename}{Output file name without extension (default: "km_plot")}

\item{output_dir}{Output directory (default: NULL, no file saved)}

\item{file_format}{File format for saving: "pdf", "png", or "both" (default: "both")}

\item{show_risk_table}{Whether to show risk table (default: TRUE)}

\item{show_pvalue}{Whether to show p-value (default: TRUE)}

\item{show_conf_int}{Whether to show confidence intervals (default: TRUE)}

\item{xlab}{X-axis label (default: "Time")}

\item{ylab}{Y-axis label (default: "Survival Probability")}

\item{risk_table_height}{Height of risk table relative to plot (default: 0.25)}
}
\value{
A list with plot object and, if requested, paths to saved files
}
\description{
This function creates and optionally saves a Kaplan-Meier plot comparing
survival curves for two or more groups.
}
\examples{
\dontrun{
# Basic usage
create_km_plot(
  combined_data,
  group_var = "group",
  title = "Treatment vs. Control"
)

# Customized plot
create_km_plot(
  combined_data,
  group_var = "group",
  group_labels = c("Control Group", "Treatment Group"),
  colors = c("blue", "red"),
  title = "Survival Comparison",
  output_dir = "figures",
  show_pvalue = FALSE
)
}
}

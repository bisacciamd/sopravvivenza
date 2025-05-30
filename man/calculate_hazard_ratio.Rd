% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hazard_ratio.R
\name{calculate_hazard_ratio}
\alias{calculate_hazard_ratio}
\title{Calculate Hazard Ratio Between Two Groups}
\usage{
calculate_hazard_ratio(
  data1,
  data2,
  group1_name = "group1",
  group2_name = "group2",
  covariates = NULL,
  conf_level = 0.95
)
}
\arguments{
\item{data1}{IPD dataframe for group 1 (reference group)}

\item{data2}{IPD dataframe for group 2}

\item{group1_name}{Name for group 1 (reference)}

\item{group2_name}{Name for group 2}

\item{covariates}{Optional vector of covariate names to adjust for}

\item{conf_level}{Confidence level for intervals (default: 0.95)}
}
\value{
List with hazard ratio statistics and model results
}
\description{
This function calculates the hazard ratio and confidence intervals between
two groups using Cox proportional hazards model.
}
\examples{
\dontrun{
# Calculate hazard ratio between two groups
hr_result <- calculate_hazard_ratio(
  group1_ipd, group2_ipd, 
  "Control", "Treatment"
)

# With covariates
hr_result <- calculate_hazard_ratio(
  group1_ipd, group2_ipd, 
  "Control", "Treatment",
  covariates = c("age", "sex")
)
}
}

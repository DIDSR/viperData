# Extract "screeningLowP" sub-study data (followup truth: one-year = 365 days)
# Gallas et al.
# “Impact of prevalence and case distribution in lab-based diagnostic imaging studies”
# J Med Imaging, vol. 6, no. 1, p. 015501, Jan. 2019
# doi: 10.1117/1.JMI.6.1.015501.

library(iMRMC)
library(viperData)



# Initialize Data ##########

# Start with the viperObs data frame
mrmcDF <- viperData::viperObs

# Build data frame of case information (not observation data)
cases <- NULL
# Loop over case-specific subsets
mrmcDF.cur <- mrmcDF[mrmcDF$caseID == 3240, ]
for (mrmcDF.cur in split(mrmcDF, mrmcDF$caseID)) {

  # Initialize a row of the case-specific data
  cases.cur <- mrmcDF.cur[1, ]
  
  # Set reader ID and modality ID to "truth"
  cases.cur$readerID <- "truth"
  cases.cur$modalityID <- "truth"
  
  # Remove reader annotation data
  cases.cur <- deleteCol(cases.cur, "recall")
  cases.cur <- deleteCol(cases.cur, "abnormalityType")
  cases.cur <- deleteCol(cases.cur, "score")

  # Aggregate case-specific info  
  cases <- rbind(cases, cases.cur)
}

# Re-factor
cases$caseID <- factor(cases$caseID)
cases$readerID <- factor(cases$readerID)
cases$modalityID <- factor(cases$modalityID)



# Study Design Summary ##########

# Identify the readers
readers <- levels(mrmcDF$readerID)

cat(length(readers), "= number of readers")
cat(nrow(cases), "= number of cases")

cat(sum(cases$cancerStatus365), "= number of cancer cases (365 days followup)")
cat(sum(1 - cases$cancerStatus365), "= number of non-cancer cases (365 days followup)")

cat(sum(cases$cancerStatus455), "= number of cancer cases (455 days followup)")
cat(sum(1 - cases$cancerStatus455), "= number of non-cancer cases (455 days followup)")



# Save data frame ##########
casesViper <- cases
write.csv(casesViper, row.names = FALSE, quote = FALSE,
          file = file.path("inst", "extdata", "casesViper.csv"))
usethis::use_data(casesViper, overwrite = TRUE)



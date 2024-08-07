# Extract information on cases (not observations)

# There are 715 cases with the following 9 columns:
#   caseType455 - 5-level factor identifying modality+BIRADS score at 455 days
#   caseType365 - 5-level factor identifying modality+BIRADS score at 365 days
#       "birads0ffdm"
#       "birads0sfm"
#       "birads123ffdm"
#       "birads123sfm"
#       "cancer"
#   cancerStatus455 - cancerType455 derived score: cancer (0) and non-cancer (1)
#   cancerStatus365 - cancerType365 derived score: cancer (0) and non-cancer (1)
#   caseID
#   readerID - "truth"
#   modalityID - "truth"



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
  
  # Remove sub-study information
  cases.cur <- deleteCol(cases.cur, "caseGroup")
  cases.cur <- deleteCol(cases.cur, "subStudyLabel")
  
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
write.csv(
  casesViper, file = file.path("inst", "extdata", "casesViper.csv"),
  row.names = FALSE, quote = FALSE
)
usethis::use_data(casesViper, overwrite = TRUE)



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

# Keep cases from "screeningLowP" sub-study
mrmcDF <- mrmcDF[mrmcDF$subStudyLabel == "screeningLowP", ]

# Simplify the data frame to the key MRMC analysis variables and re-factor
mrmcDF <- mrmcDF[, c("readerID", "caseID", "modalityID", "score", "caseType365")]
mrmcDF$readerID <- factor(mrmcDF$readerID)
mrmcDF$caseID <- factor(mrmcDF$caseID)
mrmcDF$modalityID <- factor(mrmcDF$modalityID)
mrmcDF$caseType365 <- factor(mrmcDF$caseType365)

# The last column "caseType365" is the followup truth at one-year (365 days)
# Rename the last column to be the truth label
mrmcDF <- renameCol(mrmcDF, "caseType365", "truth")

# The truth labels are the following:
# > levels(mrmcDF$truth)
# [1] "birads0ffdm"   "birads0sfm"    "birads123ffdm" "birads123sfm"  "cancer" 

# The first four labels are effectively not cancer.

# Set truth label for cases that are not cancer to "nonCancer"
# First, change the truth label from factor type to character
mrmcDF$truth <- as.character(mrmcDF$truth)
# Second, set cases that are not cancer to "nonCancer" and refactor
mrmcDF$truth[mrmcDF$truth != "cancer"] <- "nonCancer"
mrmcDF$truth <- factor(mrmcDF$truth)



# Study design summary ##########
designFFDM <- convertDFtoDesignMatrix(mrmcDF, modality = "FFDM")
designSFM <- convertDFtoDesignMatrix(mrmcDF, modality = "SFM")

# Identify the readers
readers <- levels(mrmcDF$readerID)

# Identify the cases with the truth label
cases <- NULL
# Loop over case-specific subsets
for (mrmcDF.cur in split(mrmcDF, mrmcDF$caseID)) {
  
  # Extract case ID and truth
  cases.cur <- mrmcDF.cur[1, c("caseID", "truth")]
  cases <- rbind(cases, cases.cur)
}
# Re-factor
cases$caseID <- factor(cases$caseID)
cases$truth <- factor(cases$truth)

# Identify the cancer cases
casesCancer <- cases$caseID[cases$truth == "cancer"]
# Identify the non-cancer cases
casesNotCancer <- cases$caseID[cases$truth == "nonCancer"]


cat(length(readers), "= number of readers")
cat(nrow(cases), "= number of cases")
cat(length(casesCancer), "= number of cancer cases")
cat(length(casesNotCancer), "= number of non-cancer cases")



# Save data frame ##########
screeningLowP <- mrmcDF
write.csv(mrmcDF, file = file.path("inst", "extdata", "screeningLowP.csv"),
          row.names = FALSE)
usethis::use_data(screeningLowP, overwrite = TRUE)



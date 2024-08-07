# Extract "screeningLowP" sub-study data
# There are 6911 observations from 20 readers and 419 cases
# The study design is a split-plot study with four groups
# that have overlapping cases to create a low prevalence study population.
# The truth (reference standard) for these cases is defined
# separately in the casesViper data object

# The data frame follows the standard iMRMC format with these 4 columns:
#   readerID
#   caseID
#   modalityID
#   score
#   recall - 1 recall (score <= 100), 2 do not recall (score > 100)
#   abnormalityType - multi-option labels 
#       Architectural Distortion
#       Asymmetry
#       Mass
#       Microcalcifications
#       No Lesion (Quality Issue)
#   caseGroup - label to identify split-plot groups within a sub-study
#   subStudyLabel - label to identify split-plot groups within a sub-study



library(iMRMC)
library(viperData)



# Initialize Data ##########

# Start with the viperObs data frame
mrmcDF <- viperData::viperObs

# Keep cases from "screeningLowP" sub-study
mrmcDF <- mrmcDF[mrmcDF$subStudyLabel == "screeningLowP", ]

# Simplify the data frame to the key MRMC analysis variables and re-factor
mrmcDF <- mrmcDF[, c(
  "readerID",
  "caseID",
  "modalityID",
  "score",
  "recall",
  "abnormalityType",
  "caseGroup",
  "subStudyLabel")]
mrmcDF$readerID <- factor(mrmcDF$readerID)
mrmcDF$caseID <- factor(mrmcDF$caseID)
mrmcDF$modalityID <- factor(mrmcDF$modalityID)



cat(nlevels(mrmcDF$readerID), "= number of readers")
cat(nlevels(mrmcDF$caseID), "= number of cases")



# Save data frame ##########
screeningLowP <- mrmcDF
write.csv(
  mrmcDF, file = file.path("inst", "extdata", "screeningLowP.csv"),
  row.names = FALSE, quote = FALSE
)
usethis::use_data(screeningLowP, overwrite = TRUE)



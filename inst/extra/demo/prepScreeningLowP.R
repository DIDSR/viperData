# Extract "screeningLowP" sub-study data
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
mrmcDF <- mrmcDF[, c("readerID", "caseID", "modalityID", "score")]
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



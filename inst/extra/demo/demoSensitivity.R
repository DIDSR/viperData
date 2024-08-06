# Reproduce MRMC analysis of "screeningLowP" sub-study sensitivity
# found in Fig. 2.a and Table 3 of
# Gallas et al.
# “Impact of prevalence and case distribution in lab-based diagnostic imaging studies”
# J Med Imaging, vol. 6, no. 1, p. 015501, Jan. 2019
# doi: 10.1117/1.JMI.6.1.015501.

library(iMRMC)
library(viperData)



# Initialize Data ##########

# Start with the "screeningLowP" data frame
mrmcDF <- viperData::screeningLowP
truth <- viperData::casesViper

# Extract the case information
truth <- truth[truth$caseID %in% levels(mrmcDF$caseID), ]
cases <- levels(factor(truth$caseID))
casesPos <- levels(factor(truth$caseID[truth$cancerStatus455 == 1]))
casesNeg <- levels(factor(truth$caseID[truth$cancerStatus455 == 0]))

# Extract the reader information
readers <- levels(factor(mrmcDF$readerID))

# Extract the modality information
modalities <- levels(factor(mrmcDF$modalityID))



# Prep observation data ##########

# Set the threshold for sensitivity
threshold <- 100

# Save original score in new column
mrmcDF$scoreOrig <- mrmcDF$score

# Default score for non-cancer cases is 0.5
mrmcDF$score <- 0.5

# Determine cancer cases
indexTF <- mrmcDF$caseID %in% casesPos
mrmcDF$cancer <- FALSE
mrmcDF$cancer[indexTF] <- TRUE

# Determine successes for cancer cases
indexTF <- mrmcDF$caseID %in% casesPos & mrmcDF$scoreOrig > threshold
mrmcDF$score[indexTF] <- 1.0

# Determine fails for cancer cases
indexTF <- mrmcDF$caseID %in% casesPos & mrmcDF$scoreOrig <= threshold
mrmcDF$score[indexTF] <- 0.0



# Prep case/truth information ##########
truth <- truth[, c("readerID", "caseID", "modalityID", "cancerStatus455")]
truth <- renameCol(truth, "cancerStatus455", "score")



# Analyze data ##########
mrmcInput <- mrmcDF[, c("readerID", "caseID", "modalityID", "score")]
mrmcInput <- rbind(truth, mrmcInput)
View(mrmcInput)
result <- doIMRMC(mrmcInput)

# Look at the results ##########
View(result$perReader)
View(result$Ustat)

designFFDM <- convertDFtoDesignMatrix(mrmcDF, modality = "FFDM")
designSFM <- convertDFtoDesignMatrix(mrmcDF, modality = "SFM")

# Fig. 2.a results ##########
print("Fig. 2.a FFDM")
print(paste("Sens. =",
      round(result$Ustat$AUCA[1], digits = 2),
      ", SE =",
      round(sqrt(result$Ustat$varAUCA[1]), digits = 2)
))
print("Fig. 2.a SFM")
print(paste("Sens. =",
      round(result$Ustat$AUCA[2], digits = 2),
      ", SE =",
      round(sqrt(result$Ustat$varAUCA[2]), digits = 2)
))

# Table 3 results ##########

print("")
print("Table 3, Sensitivity")
# Prevalence
print(paste(
  "Prevalence (%) =",
  round(100 * sum(mrmcDF$cancer) / nrow(mrmcDF), digits = 1)
))

# Total Observations
print(paste("Number of observations =", sum(mrmcDF$cancer)))

print(paste(
  "Difference FFDM-SFM =",
  round(result$Ustat$AUCAminusAUCB[3], digits = 3),
  ", SE =",
  round(sqrt(result$Ustat$varAUCAminusAUCB[3]), digits = 3)
))

print(paste(
  "95% confidence interval = (",
  round(result$Ustat$botCIBDG[3], digits = 3),
  ",",
  round(result$Ustat$topCIBDG[3], digits = 3),
  ")"
))



# Save input data formatted for the java app ##########
outputFile <- file.path("inst", "extdata", "mrmcInput.csv")
desc <- paste(
  "N0:", length(casesNeg), "\n",
  "N1:", length(casesPos), "\n",
  "NR:", length(readers), "\n",
  "NM:", length(modalities), "\n",
  "BEGIN DATA:",
  sep = ""
)
writeLines(desc, con = outputFile, )

write.table(
  mrmcInput, file = outputFile, sep = ",",
  append = TRUE, col.names = FALSE, row.names = FALSE, quote = FALSE
)



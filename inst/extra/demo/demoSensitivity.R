# Reproduce MRMC analysis of "screeningLowP" sub-study sensitivity in Table 3 of
# Gallas et al.
# “Impact of prevalence and case distribution in lab-based diagnostic imaging studies”
# J Med Imaging, vol. 6, no. 1, p. 015501, Jan. 2019
# doi: 10.1117/1.JMI.6.1.015501.

library(iMRMC)
library(viperData)



# Initialize Data ##########

# Start with the "screeningLowP" data frame based on one-year followup (365 days)
mrmcDF <- viperData::screeningLowP
truth <- viperData::casesViper365

# Set the threshold for sensitivity
threshold <- 100

# Save original score in new column
mrmcDF$scoreOrig <- mrmcDF$score

# Default score for non-cancer cases is 0.5
mrmcDF$score <- 0.5

# Determine successes for cancer cases
indexTF <- mrmcDF$truth == "cancer" & mrmcDF$scoreOrig > threshold
mrmcDF$score[indexTF] <- 1.0

# Determine fails for cancer cases
indexTF <- mrmcDF$truth == "cancer" & mrmcDF$scoreOrig <= threshold
mrmcDF$score[indexTF] <- 0.0



# Analyze data
mrmcInput <- deleteCol(mrmcDF, "scoreOrig")
mrmcInput <- rbind(truth, mrmcInput)
result <- doIMRMC(mrmcInput)

sum(mrmcDF$truth == "cancer")

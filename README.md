# viperData
This package contains a markdown version of Gallas2018_J-Med-Imag_v6p015501 and supplementary materials, including the data.

**Citation** Brandon D. Gallas, Weijie Chen, Elodia Cole, Robert Ochs, Nicholas Petrick, Etta D. Pisano, Berkman Sahiner, Frank W. Samuelson, Kyle J. Myers, "Impact of prevalence and case distribution in lab-based diagnostic imaging studies," _J. Med. Imag._ **6**(1), 015501 (2019), [doi: 10.1117/1.JMI.6.1.015501](http://dx.doi.org/10.1117/1.JMI.6.1.015501).

# Impact of prevalence and case distribution in lab-based diagnostic imaging studies
ABSTRACT: We investigated effects of prevalence and case distribution on radiologist diagnostic performance as measured by area under the receiver operating characteristic curve (AUC) and sensitivity-specificity in lab-based reader studies evaluating imaging devices. Our retrospective reader studies compared full-field digital mammography (FFDM) to screen-film mammography (SFM) for women with dense breasts. Mammograms were acquired from the prospective Digital Mammographic Imaging Screening Trial (DMIST). We performed five reader studies that differed in terms of cancer prevalence and the distribution of non-cancers. Twenty radiologists participated in each reader study. Using split-plot study designs, we collected recall decisions and multi-level scores from the radiologists for calculating sensitivity, specificity, and AUC. Differences in reader-averaged AUCs slightly favored SFM over FFDM (biggest AUC difference: 0.047, SE=0.023 p=0.047), where standard error (SE) accounts for reader and case variability. The differences were not significant at a level of 0.01 (0.05/5 reader studies). The differences in sensitivities and specificities were also indeterminate. Prevalence had little effect on AUC (largest difference: 0.02), whereas sensitivity increased and specificity decreased as prevalence increased. We found that AUC is robust to changes in prevalence, while radiologists were more aggressive with recall decisions as prevalence increased.
**Keywords** Image Evaluation, Study Design, MRMC analysis, AUC, Sensitivity, Specificity.

## R Data Package: viperData

We have created an R data package named "viperData". This package contains
* [An R-markdown file of the original manuscript](https://github.com/DIDSR/iMRMC/raw/master/Rpackage/viperData/vignettes/viperPaper/VIPERpaper-JMI.Rmd) ([pdf version](https://github.com/DIDSR/iMRMC/blob/master/Rpackage/viperData/vignettes/viperPaper/VIPERpaper-JMI.pdf)),
* [An R-markdown file of a "Supplementary Materials" document](https://github.com/DIDSR/iMRMC/raw/master/Rpackage/viperData/vignettes/viperSupplementaryMaterials/viperSupplementaryMaterials.Rmd) ([pdf version](https://github.com/DIDSR/iMRMC/blob/master/Rpackage/viperData/vignettes/viperSupplementaryMaterials/viperSupplementaryMaterials.pdf)),
* The VIPER data ([Documentation.html](http://htmlpreview.github.com/?https://github.com/DIDSR/iMRMC/blob/master/Rpackage/viperData/man/00Index.html), [Documentation.pdf](https://github.com/DIDSR/iMRMC/blob/master/Rpackage/viperData/man/000viperDataDocumentation.pdf)),
* [The VIPER electronic case report form,](https://github.com/DIDSR/iMRMC/blob/gh-pages/000_resources/VIPER/eCRF-v4.pdf) and
* [The VIPER instructions for ROC scores](https://github.com/DIDSR/iMRMC/blob/gh-pages/000_resources/VIPER/VIPER%20instructions-scoring-v2.pdf)

The viperData R package can be found at
* [GitHub Repository](https://github.com/DIDSR/iMRMC/tree/master/Rpackage/viperData)
* [R package (binary)](https://github.com/DIDSR/iMRMC/raw/master/Rpackage/viperData_1.0.0.zip?raw=true)
* [R package (source)](https://github.com/DIDSR/iMRMC/raw/master/Rpackage/viperData_1.0.0.tar.gz?raw=true)

An R-markdown file is an easy-to-write plain-text file that contains chunks of embedded R code. This file can be compiled to produce pdf, html, and docx documents.

## Data objects and files

There are five data objects that are available in the R package.
* `viperObservations`
  * Individual observations of each reader reading each case ([Details](http://htmlpreview.github.com/?https://github.com/DIDSR/iMRMC/blob/master/Rpackage/viperData/man/viperObservations.html)).
  * Also available as a .csv file ([LINK](https://github.com/DIDSR/iMRMC/blob/master/Rpackage/viperData/data-raw/viperObs455.csv)).
* `viperSummary`
  * Summary performance statistics of the VIPER observations ([Details](http://htmlpreview.github.com/?https://github.com/DIDSR/iMRMC/blob/master/Rpackage/viperData/man/viperSummary.html)).
* `viperReaderQualifications`
  * Information from the VIPER reader recruitment qualification forms ([Details](http://htmlpreview.github.com/?https://github.com/DIDSR/iMRMC/blob/master/Rpackage/viperData/man/viperReaderQualifications.html)).
  * Also available as a .csv file ([LINK](https://github.com/DIDSR/iMRMC/blob/master/Rpackage/viperData/data-raw/viperReaderQualifications.csv)).
* `dmistData`
  * Performance data manually translated from Pisano2005_NEJM_v353p1773 and its supplement ([Details](http://htmlpreview.github.com/?https://github.com/DIDSR/iMRMC/blob/master/Rpackage/viperData/man/dmistData.html))
  * Also available as a .csv file ([LINK](https://github.com/DIDSR/iMRMC/blob/master/Rpackage/viperData/data-raw/dmistData.csv)).
* `dmistRSsummary`
  * Performance summaries from DMIST reader studies ([Details](http://htmlpreview.github.com/?https://github.com/DIDSR/iMRMC/blob/master/Rpackage/viperData/man/dmistRSsummary.html))

# viperData
This [repository](https://github.com/DIDSR/viperData) contains supplementary materials (data and analysis scripts) of the paper
* **Citation** Brandon D. Gallas, Weijie Chen, Elodia Cole, Robert Ochs, Nicholas Petrick, Etta D. Pisano, Berkman Sahiner, Frank W. Samuelson, Kyle J. Myers, "Impact of prevalence and case distribution in lab-based diagnostic imaging studies," _J. Med. Imag._ **6**(1), 015501 (2019), [doi: 10.1117/1.JMI.6.1.015501](http://dx.doi.org/10.1117/1.JMI.6.1.015501).

Please cite this paper in any work that uses these materials.

# Main Assets

* __[viperData_1.0.1.tar.gz](https://github.com/DIDSR/viperData/releases/download/v1.0.1/viperData_1.0.1.tar.gz)__: This is an R package (source) with the data and functions. Everything in this repository is in this package. See below for more details.

* __[viperData_1.0.1.zip](https://github.com/DIDSR/viperData/releases/download/v1.0.1/viperData_1.0.1.zip)__: This is an R package (binary) with the data and functions. Everything in this repository is in this package. See below for more details.

* __[viperObs455.csv](https://github.com/DIDSR/viperData/releases/download/v1.0.1/viperObs455.csv)__: Individual observations of each reader reading each case ([Documentation](https://didsr.github.io/viperData/man/viperObservations.html)).

* __[viperReaderQualifications.csv](https://github.com/DIDSR/viperData/releases/download/v1.0.1/viperReaderQualifications.csv)__: Information from the VIPER reader recruitment qualification forms ([Documentation](https://didsr.github.io/viperData/man/viperReaderQualifications.html)).

* __[dmistData.csv](https://github.com/DIDSR/viperData/releases/download/v1.0.1/dmistData.csv)__: Performance data manually translated from Pisano2005_NEJM_v353p1773 and its supplement ([Documentation](https://didsr.github.io/viperData/man/dmistData.html))

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

# viperData
The [viperData repository and R package](https://github.com/DIDSR/viperData) contain supplementary materials (data, R functions, R markdown files) for the following paper:
* **Citation** Brandon D. Gallas, Weijie Chen, Elodia Cole, Robert Ochs, Nicholas Petrick, Etta D. Pisano, Berkman Sahiner, Frank W. Samuelson, Kyle J. Myers, "Impact of prevalence and case distribution in lab-based diagnostic imaging studies," _J. Med. Imag._ **6**(1), 015501 (2019), [doi: 10.1117/1.JMI.6.1.015501](http://dx.doi.org/10.1117/1.JMI.6.1.015501).

Please cite this paper in any work that uses these materials.

All statistical analyses make use of the iMRMC package ([Java GUI](https://github.com/DIDSR/iMRMC/releases), [R package](https://cran.r-project.org/web/packages/iMRMC/index.html)).

# Main Assets

* __[viperData_1.0.1.tar.gz](https://github.com/DIDSR/viperData/releases/download/v1.0.1/viperData_1.0.1.tar.gz)__: This is an R package (source) with the data and functions. Everything in this repository is in this package. See below for more details.

* __[viperData_1.0.1.zip](https://github.com/DIDSR/viperData/releases/download/v1.0.1/viperData_1.0.1.zip)__: This is an R package (binary) with the data and functions. Everything in this repository is in this package. See below for more details.

* __[viperObs455.csv](https://github.com/DIDSR/viperData/releases/download/v1.0.1/viperObs455.csv)__: Individual observations of each reader reading each case. This data is also included as an R object (data frame) in the R package ([Documentation](https://didsr.github.io/viperData/man/viperObservations.html)).

* __[viperReaderQualifications.csv](https://github.com/DIDSR/viperData/releases/download/v1.0.1/viperReaderQualifications.csv)__: Information from the VIPER reader recruitment qualification forms. This data is also included as an R object (data frame) in the R package ([Documentation](https://didsr.github.io/viperData/man/viperReaderQualifications.html)).

* __[dmistData.csv](https://github.com/DIDSR/viperData/releases/download/v1.0.1/dmistData.csv)__: Performance data manually translated from Pisano2005_NEJM_v353p1773 and its supplement. This data is also included as an R object (data frame) in the R package ([Documentation](https://didsr.github.io/viperData/man/dmistData.html))

## Additional Assets

* [An R-markdown file of the original manuscript](https://github.com/DIDSR/viperData/raw/master/inst/docs/viperPaper/VIPERpaper-JMI.Rmd) ([pdf version](https://didsr.github.io/viperData/inst/docs/viperPaper/VIPERpaper-JMI.pdf)),
* [An R-markdown file of a "Supplementary Materials" document](https://github.com/DIDSR/viperData/raw/master/inst/docs/viperSupplementaryMaterials/viperSupplementaryMaterials.Rmd) ([pdf version](https://didsr.github.io/viperData/inst/docs/viperSupplementaryMaterials/viperSupplementaryMaterials.pdf)),
* [The VIPER electronic case report form,](https://didsr.github.io/viperData/inst/docs/viperSupplementaryMaterials/viperECRF-4.pdf)
* [The VIPER instructions for ROC scores](https://didsr.github.io/viperData/inst/docs/viperSupplementaryMaterials/viperInstructions-scoring-v2.pdf)

## Additional Data Objects in the R Package

* `viperSummary`
  * Summary performance statistics of the VIPER observations ([Documentation](https://didsr.github.io/viperData/man/viperSummary.html)).
* `dmistRSsummary`
  * Performance summaries from DMIST reader studies ([Documentation](https://didsr.github.io/viperData/man/dmistRSsummary.html))

[![Github All Releases](https://img.shields.io/github/downloads/DIDSR/viperData/total.svg)]()

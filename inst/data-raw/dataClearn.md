Merge viperObs365.csv and viperObs455.csv to viperObs.csv

* Keep columns: caseID, readerID, modalityID, recall, score, caseGroup
* Remove columns: observation id, CaseReadOrder, readerID.relative, Study, Track, ReadSetLetter, Initial.Comparison, form_start_datetime, study, viewbox, num_img, miss_img, score_start_datetime, , recall_scale, score_end_datetime, Group, norecall_scale, set_letter, track, quality, UID, read_order, Comment, RecallRegion, count
* Add columns: cancerStatus455, cancerStatus365
* Rename columns: 
  * Ctype to caseType455 and caseType365 
  * abnormality_type to abnormalityTpye
  * desc to subStudyLabel


---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
params:
  roles:
    value:
      - exclude
      - strata
      - id
      - W
      - A
      - Y
  data: 
    value: 
      type: 'web'
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
  nodes:
    value:
      strata: ['study_id', 'mrace']
      id: ['subjid']
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
  script_params:
    value:
      parallelize:
        input: checkbox
        value: FALSE
      count_A:
        input: checkbox
        value: TRUE
      count_Y:
        input: checkbox
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** trth2o

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        trth2o    pers_wast   n_cell     n  outcome_variable 
------------  -------------------------  -----------------------------  -------  ----------  -------  ----  -----------------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0      127   135  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        6   135  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0        2   135  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1        0   135  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       13   103  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        0   103  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0       90   103  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        0   103  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          1                 0        4     9  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          1                 1        0     9  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          0                 0        4     9  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          0                 1        1     9  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       69    83  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0    83  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                 0       13    83  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        1    83  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           1                 0       39    49  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           1                 1        0    49  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           0                 0       10    49  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           0                 1        0    49  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        2    12  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0    12  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       10    12  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        0    12  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        6    43  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0    43  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       37    43  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0    43  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      112   120  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        8   120  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0   120  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0   120  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          1                 0      105   122  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          1                 1       17   122  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          0                 0        0   122  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          0                 1        0   122  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0       14   641  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        0   641  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      612   641  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       15   641  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      390   730  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       18   730  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      314   730  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        8   730  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0        1     4  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1        0     4  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0        3     4  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1        0     4  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0      129   135  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        4   135  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0        2   135  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        0   135  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0       13   103  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        0   103  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0       90   103  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0   103  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          1                 0        4     8  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          1                 1        0     8  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          0                 0        3     8  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          0                 1        1     8  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       68    83  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        1    83  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                 0       13    83  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        1    83  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           1                 0       39    49  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           1                 1        0    49  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           0                 0       10    49  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           0                 1        0    49  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        2    12  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0    12  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0        9    12  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1    12  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        6    43  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0    43  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       37    43  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0    43  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      104   119  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       15   119  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0   119  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0   119  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          1                 0      102   121  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          1                 1       19   121  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          0                 0        0   121  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          0                 1        0   121  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0       14   638  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        0   638  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0      610   638  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1       14   638  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      183   250  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        4   250  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 0       62   250  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        1   250  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0        1     4  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1        0     4  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0        3     4  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1        0     4  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0      127   135  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        6   135  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0        2   135  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1        0   135  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       13   103  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        0   103  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0       90   103  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        0   103  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          1                 0        4     9  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          1                 1        0     9  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          0                 0        4     9  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          0                 1        1     9  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       69    83  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0    83  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                 0       13    83  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        1    83  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           1                 0       39    49  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           1                 1        0    49  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           0                 0       10    49  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           0                 1        0    49  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        2    12  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0    12  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       10    12  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        0    12  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        6    43  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0    43  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       37    43  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0    43  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      112   120  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        8   120  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0   120  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0   120  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          1                 0      105   122  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          1                 1       17   122  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          0                 0        0   122  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          0                 1        0   122  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0       14   641  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        0   641  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      612   641  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       15   641  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      390   730  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       18   730  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      314   730  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        8   730  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0        1     4  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1        0     4  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0        3     4  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1        0     4  pers_wast        


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/8d02977f-28f3-4a26-9c5d-be99883c33af/e9384491-7ee3-4224-a09b-926d91816cb2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8d02977f-28f3-4a26-9c5d-be99883c33af/e9384491-7ee3-4224-a09b-926d91816cb2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8d02977f-28f3-4a26-9c5d-be99883c33af/e9384491-7ee3-4224-a09b-926d91816cb2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8d02977f-28f3-4a26-9c5d-be99883c33af/e9384491-7ee3-4224-a09b-926d91816cb2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0441176   0.0241777   0.0640576
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0248447   0.0078321   0.0418574
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0441176   0.0241777   0.0640576
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0248447   0.0078321   0.0418574


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate   ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ---------  ----------
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0356164   0.022163   0.0490699
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0356164   0.022163   0.0490699


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 0.563147   0.2479108   1.279228
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 0.563147   0.2479108   1.279228


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0085012   -0.0200837   0.0030813
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0085012   -0.0200837   0.0030813


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.2386878   -0.5956124   0.0383959
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.2386878   -0.5956124   0.0383959

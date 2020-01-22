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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        hdlvry    ever_swasted   n_cell      n  outcome_variable 
----------------------------  -------------------------  -----------------------------  -------  -------------  -------  -----  -----------------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0      303    365  ever_swasted     
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1       54    365  ever_swasted     
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        7    365  ever_swasted     
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        1    365  ever_swasted     
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    0      326    409  ever_swasted     
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    1       75    409  ever_swasted     
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    0        6    409  ever_swasted     
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    1        2    409  ever_swasted     
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    0      210    375  ever_swasted     
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    1       42    375  ever_swasted     
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    0      100    375  ever_swasted     
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    1       23    375  ever_swasted     
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    0      151   1224  ever_swasted     
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    1       13   1224  ever_swasted     
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    0      916   1224  ever_swasted     
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    1      144   1224  ever_swasted     
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       72    397  ever_swasted     
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        5    397  ever_swasted     
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0      285    397  ever_swasted     
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       35    397  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    0      500    687  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    1       13    687  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    0      168    687  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    1        6    687  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      573    754  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       14    754  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      161    754  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1        6    754  ever_swasted     
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     2110   2262  ever_swasted     
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      112   2262  ever_swasted     
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       36   2262  ever_swasted     
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        4   2262  ever_swasted     
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    0      132    613  ever_swasted     
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    1       16    613  ever_swasted     
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    0      361    613  ever_swasted     
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    1      104    613  ever_swasted     
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    0     2916   4904  ever_swasted     
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    1      114   4904  ever_swasted     
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    0     1743   4904  ever_swasted     
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    1      131   4904  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0       39    346  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    1        2    346  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0      289    346  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    1       16    346  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0     1129   4480  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    1       38   4480  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3144   4480  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      169   4480  ever_swasted     
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0      310    347  ever_swasted     
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1       30    347  ever_swasted     
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        7    347  ever_swasted     
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        0    347  ever_swasted     
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    0      326    390  ever_swasted     
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    1       56    390  ever_swasted     
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    0        7    390  ever_swasted     
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    1        1    390  ever_swasted     
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    0      235    373  ever_swasted     
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    1       15    373  ever_swasted     
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    0      118    373  ever_swasted     
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    1        5    373  ever_swasted     
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    0      161   1202  ever_swasted     
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    1        2   1202  ever_swasted     
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    0     1001   1202  ever_swasted     
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    1       38   1202  ever_swasted     
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       68    341  ever_swasted     
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        0    341  ever_swasted     
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0      273    341  ever_swasted     
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0    341  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    0      504    683  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    1        5    683  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    0      173    683  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    1        1    683  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      583    749  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1        1    749  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      165    749  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1        0    749  ever_swasted     
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     2175   2254  ever_swasted     
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       39   2254  ever_swasted     
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       39   2254  ever_swasted     
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        1   2254  ever_swasted     
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    0      136    596  ever_swasted     
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    1        5    596  ever_swasted     
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    0      432    596  ever_swasted     
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    1       23    596  ever_swasted     
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    0     2760   4526  ever_swasted     
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    1       43   4526  ever_swasted     
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    0     1686   4526  ever_swasted     
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    1       37   4526  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0       39    342  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    1        1    342  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0      293    342  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    1        9    342  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0     1123   4363  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    1        7   4363  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3219   4363  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    1       14   4363  ever_swasted     
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0      333    370  ever_swasted     
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1       29    370  ever_swasted     
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        7    370  ever_swasted     
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        1    370  ever_swasted     
6-24 months                   ki1000108-IRC              INDIA                          0                    0      377    410  ever_swasted     
6-24 months                   ki1000108-IRC              INDIA                          0                    1       25    410  ever_swasted     
6-24 months                   ki1000108-IRC              INDIA                          1                    0        7    410  ever_swasted     
6-24 months                   ki1000108-IRC              INDIA                          1                    1        1    410  ever_swasted     
6-24 months                   ki1000109-EE               PAKISTAN                       0                    0      220    372  ever_swasted     
6-24 months                   ki1000109-EE               PAKISTAN                       0                    1       30    372  ever_swasted     
6-24 months                   ki1000109-EE               PAKISTAN                       1                    0      102    372  ever_swasted     
6-24 months                   ki1000109-EE               PAKISTAN                       1                    1       20    372  ever_swasted     
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    0      142   1128  ever_swasted     
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    1       11   1128  ever_swasted     
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    0      862   1128  ever_swasted     
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    1      113   1128  ever_swasted     
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       73    402  ever_swasted     
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        6    402  ever_swasted     
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0      278    402  ever_swasted     
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       45    402  ever_swasted     
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    0      451    615  ever_swasted     
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    1        8    615  ever_swasted     
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    0      151    615  ever_swasted     
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    1        5    615  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      553    730  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       14    730  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      157    730  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1        6    730  ever_swasted     
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1805   1912  ever_swasted     
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       76   1912  ever_swasted     
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       28   1912  ever_swasted     
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        3   1912  ever_swasted     
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    0      122    549  ever_swasted     
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    1       14    549  ever_swasted     
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    0      324    549  ever_swasted     
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    1       89    549  ever_swasted     
6-24 months                   ki1135781-COHORTS          INDIA                          0                    0     2841   4742  ever_swasted     
6-24 months                   ki1135781-COHORTS          INDIA                          0                    1       83   4742  ever_swasted     
6-24 months                   ki1135781-COHORTS          INDIA                          1                    0     1716   4742  ever_swasted     
6-24 months                   ki1135781-COHORTS          INDIA                          1                    1      102   4742  ever_swasted     
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0       38    339  ever_swasted     
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    1        1    339  ever_swasted     
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0      293    339  ever_swasted     
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    1        7    339  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0     1135   4492  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    1       33   4492  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3159   4492  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      165   4492  ever_swasted     


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/c3fe3c3f-dbc5-4317-bf7e-3a35f04e114c/967a437f-74eb-45bd-87cc-e25c7728e0dd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c3fe3c3f-dbc5-4317-bf7e-3a35f04e114c/967a437f-74eb-45bd-87cc-e25c7728e0dd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c3fe3c3f-dbc5-4317-bf7e-3a35f04e114c/967a437f-74eb-45bd-87cc-e25c7728e0dd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c3fe3c3f-dbc5-4317-bf7e-3a35f04e114c/967a437f-74eb-45bd-87cc-e25c7728e0dd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN     0                    NA                0.1666667    0.1205921   0.2127412
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN     1                    NA                0.1869919    0.1179942   0.2559895
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0792683    0.0490080   0.1095286
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.1358491    0.1107027   0.1609954
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.0649351    0.0098275   0.1200426
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.1093750    0.0751355   0.1436145
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0253411    0.0117315   0.0389507
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0344828    0.0073514   0.0616141
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0238501    0.0114986   0.0362016
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0359281    0.0076826   0.0641737
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1081081    0.0580405   0.1581757
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.2236559    0.1857512   0.2615606
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA        0                    NA                0.0376238    0.0308477   0.0443998
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA        1                    NA                0.0699039    0.0583582   0.0814497
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0325621    0.0209643   0.0441599
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0510112    0.0429662   0.0590562
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN     0                    NA                0.0600000    0.0305218   0.0894782
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN     1                    NA                0.0406504    0.0057043   0.0755966
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL        0                    NA                0.0354610    0.0049091   0.0660129
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.0505495    0.0304029   0.0706960
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA        0                    NA                0.0153407    0.0107903   0.0198911
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA        1                    NA                0.0214742    0.0146288   0.0283196
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0061947   -0.0008760   0.0132654
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0043303    0.0013560   0.0073047
6-24 months                   ki1000109-EE               PAKISTAN     0                    NA                0.1200000    0.0796638   0.1603362
6-24 months                   ki1000109-EE               PAKISTAN     1                    NA                0.1639344    0.0981523   0.2297166
6-24 months                   ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0718954    0.0444581   0.0993328
6-24 months                   ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.1158974    0.0885815   0.1432134
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.0759494    0.0174589   0.1344399
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.1393189    0.1015083   0.1771295
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0174292    0.0054476   0.0294108
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0320513    0.0043890   0.0597136
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0246914    0.0119094   0.0374733
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0368098    0.0078837   0.0657359
6-24 months                   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1029412    0.0518225   0.1540598
6-24 months                   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.2154964    0.1758059   0.2551869
6-24 months                   ki1135781-COHORTS          INDIA        0                    NA                0.0283858    0.0223657   0.0344059
6-24 months                   ki1135781-COHORTS          INDIA        1                    NA                0.0561056    0.0455262   0.0666850
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0282534    0.0183091   0.0381978
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0496390    0.0414406   0.0578373


### Parameter: E(Y)


agecat                        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN     NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.1282680   0.1041743   0.1523617
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1007557   0.0711091   0.1304022
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0276565   0.0153851   0.0399279
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0265252   0.0150478   0.0380026
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1957586   0.1643227   0.2271945
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA        NA                   NA                0.0499592   0.0438611   0.0560573
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0462054   0.0395696   0.0528411
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN     NA                   NA                0.0536193   0.0307280   0.0765106
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.0469799   0.0299780   0.0639817
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA        NA                   NA                0.0176757   0.0138363   0.0215150
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0048132   0.0019592   0.0076672
6-24 months                   ki1000109-EE               PAKISTAN     NA                   NA                0.1344086   0.0997005   0.1691167
6-24 months                   ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.1099291   0.0842813   0.1355769
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1268657   0.0942904   0.1594410
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0211382   0.0097604   0.0325160
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0273973   0.0155476   0.0392469
6-24 months                   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1876138   0.1549271   0.2203006
6-24 months                   ki1135781-COHORTS          INDIA        NA                   NA                0.0390131   0.0335015   0.0445247
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0440784   0.0374167   0.0507400


### Parameter: RR


agecat                        studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN     1                    0                 1.1219512   0.7075202   1.779136
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.7137881   1.0962953   2.679086
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.6843750   0.6817053   4.161797
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.3607427   0.5248752   3.527735
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.5064157   0.5876161   3.861855
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        1                    0                 2.0688172   1.2634117   3.387656
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA        1                    0                 1.8579734   1.4551639   2.372286
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.5665798   1.0578198   2.320029
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN     1                    0                 0.6775069   0.2517051   1.823625
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL        1                    0                 1.4254945   0.5516931   3.683270
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA        1                    0                 1.3998164   0.9056600   2.163600
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH   1                    0                 0.6990411   0.1835273   2.662593
6-24 months                   ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE               PAKISTAN     1                    0                 1.3661202   0.8093854   2.305804
6-24 months                   ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.6120280   1.0564375   2.459809
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.8343653   0.8107074   4.150568
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.8389422   0.6100618   5.543223
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.4907975   0.5817579   3.820279
6-24 months                   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal        NEPAL        1                    0                 2.0933933   1.2326283   3.555245
6-24 months                   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          INDIA        1                    0                 1.9765398   1.4881925   2.625137
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.7569194   1.1931734   2.587022


### Parameter: PAR


agecat                        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN     0                    NA                 0.0066667   -0.0205637   0.0338971
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0489997    0.0123813   0.0856181
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0358206   -0.0165028   0.0881440
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0023153   -0.0053782   0.0100089
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0026751   -0.0041623   0.0095125
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0876505    0.0398536   0.1354473
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA        0                    NA                 0.0123355    0.0072009   0.0174700
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0136432    0.0030910   0.0241955
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN     0                    NA                -0.0063807   -0.0214851   0.0087237
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0115189   -0.0164245   0.0394622
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA        0                    NA                 0.0023349   -0.0007955   0.0054653
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                -0.0013815   -0.0070817   0.0043188
6-24 months                   ki1000109-EE               PAKISTAN     0                    NA                 0.0144086   -0.0109848   0.0398020
6-24 months                   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0380337    0.0066128   0.0694545
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0509163   -0.0050985   0.1069311
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0037090   -0.0039542   0.0113723
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0027059   -0.0043649   0.0097767
6-24 months                   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0846727    0.0358169   0.1335284
6-24 months                   ki1135781-COHORTS          INDIA        0                    NA                 0.0106273    0.0059449   0.0153097
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0158249    0.0063510   0.0252989


### Parameter: PAF


agecat                        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN     0                    NA                 0.0384615   -0.1320367   0.1832807
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.3820103    0.0714875   0.5886848
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.3555195   -0.4224191   0.7079938
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0837181   -0.2381152   0.3218946
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.1008518   -0.1929625   0.3223027
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.4477477    0.1528484   0.6399906
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA        0                    NA                 0.2469105    0.1415390   0.3393482
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.2952738    0.0288561   0.4886041
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN     0                    NA                -0.1190000   -0.4341545   0.1268995
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.2451874   -0.6463468   0.6539356
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA        0                    NA                 0.1320995   -0.0615914   0.2904509
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                -0.2870206   -2.1378343   0.4721129
6-24 months                   ki1000109-EE               PAKISTAN     0                    NA                 0.1072000   -0.1013874   0.2762839
6-24 months                   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.3459836    0.0409931   0.5539787
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.4013403   -0.2308220   0.7088178
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.1754650   -0.2612591   0.4609689
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0987654   -0.1955788   0.3206439
6-24 months                   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.4513135    0.1324366   0.6529858
6-24 months                   ki1135781-COHORTS          INDIA        0                    NA                 0.2724036    0.1489076   0.3779800
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.3590183    0.1154217   0.5355328

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

**Intervention Variable:** earlybf

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                   country                        earlybf    pers_wast   n_cell       n  outcome_variable 
------------  ------------------------  -----------------------------  --------  ----------  -------  ------  -----------------
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                  0      144     247  pers_wast        
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                  1        8     247  pers_wast        
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                  0       90     247  pers_wast        
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                  1        5     247  pers_wast        
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                  0       99     218  pers_wast        
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                  1        1     218  pers_wast        
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                  0      117     218  pers_wast        
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                  1        1     218  pers_wast        
0-24 months   ki0047075b-MAL-ED         INDIA                          1                  0      127     241  pers_wast        
0-24 months   ki0047075b-MAL-ED         INDIA                          1                  1       16     241  pers_wast        
0-24 months   ki0047075b-MAL-ED         INDIA                          0                  0       93     241  pers_wast        
0-24 months   ki0047075b-MAL-ED         INDIA                          0                  1        5     241  pers_wast        
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                  0       94     238  pers_wast        
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                  1        3     238  pers_wast        
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                  0      140     238  pers_wast        
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                  1        1     238  pers_wast        
0-24 months   ki0047075b-MAL-ED         PERU                           1                  0      211     284  pers_wast        
0-24 months   ki0047075b-MAL-ED         PERU                           1                  1        1     284  pers_wast        
0-24 months   ki0047075b-MAL-ED         PERU                           0                  0       72     284  pers_wast        
0-24 months   ki0047075b-MAL-ED         PERU                           0                  1        0     284  pers_wast        
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                  0      166     270  pers_wast        
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                  1        1     270  pers_wast        
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                  0      102     270  pers_wast        
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                  1        1     270  pers_wast        
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  0      210     253  pers_wast        
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  1        0     253  pers_wast        
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  0       43     253  pers_wast        
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  1        0     253  pers_wast        
0-24 months   ki1000109-EE              PAKISTAN                       1                  0       63     366  pers_wast        
0-24 months   ki1000109-EE              PAKISTAN                       1                  1        6     366  pers_wast        
0-24 months   ki1000109-EE              PAKISTAN                       0                  0      271     366  pers_wast        
0-24 months   ki1000109-EE              PAKISTAN                       0                  1       26     366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                  0       92    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                  1        9    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                  0     1160    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                  1      105    1366  pers_wast        
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                  0      607     730  pers_wast        
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                  1       25     730  pers_wast        
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                  0       97     730  pers_wast        
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                  1        1     730  pers_wast        
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                  0      143     543  pers_wast        
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                  1       18     543  pers_wast        
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                  0      327     543  pers_wast        
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                  1       55     543  pers_wast        
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                  0     4499    8450  pers_wast        
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                  1       74    8450  pers_wast        
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                  0     3796    8450  pers_wast        
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                  1       81    8450  pers_wast        
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                  0       20   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                  1        4   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                  0    14885   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                  1      894   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                  0     3096    5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                  1      266    5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                  0     1759    5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                  1      160    5281  pers_wast        
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                  0      149     247  pers_wast        
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                  1        3     247  pers_wast        
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                  0       91     247  pers_wast        
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                  1        4     247  pers_wast        
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                  0       99     218  pers_wast        
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                  1        1     218  pers_wast        
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                  0      118     218  pers_wast        
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                  1        0     218  pers_wast        
0-6 months    ki0047075b-MAL-ED         INDIA                          1                  0      131     240  pers_wast        
0-6 months    ki0047075b-MAL-ED         INDIA                          1                  1       12     240  pers_wast        
0-6 months    ki0047075b-MAL-ED         INDIA                          0                  0       90     240  pers_wast        
0-6 months    ki0047075b-MAL-ED         INDIA                          0                  1        7     240  pers_wast        
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                  0       94     238  pers_wast        
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                  1        3     238  pers_wast        
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                  0      137     238  pers_wast        
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                  1        4     238  pers_wast        
0-6 months    ki0047075b-MAL-ED         PERU                           1                  0      212     284  pers_wast        
0-6 months    ki0047075b-MAL-ED         PERU                           1                  1        0     284  pers_wast        
0-6 months    ki0047075b-MAL-ED         PERU                           0                  0       72     284  pers_wast        
0-6 months    ki0047075b-MAL-ED         PERU                           0                  1        0     284  pers_wast        
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                  0      166     269  pers_wast        
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                  1        1     269  pers_wast        
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                  0      101     269  pers_wast        
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                  1        1     269  pers_wast        
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  0      210     253  pers_wast        
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  1        0     253  pers_wast        
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  0       43     253  pers_wast        
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  1        0     253  pers_wast        
0-6 months    ki1000109-EE              PAKISTAN                       1                  0       65     360  pers_wast        
0-6 months    ki1000109-EE              PAKISTAN                       1                  1        3     360  pers_wast        
0-6 months    ki1000109-EE              PAKISTAN                       0                  0      271     360  pers_wast        
0-6 months    ki1000109-EE              PAKISTAN                       0                  1       21     360  pers_wast        
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                  0      222     250  pers_wast        
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                  1        3     250  pers_wast        
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                  0       23     250  pers_wast        
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                  1        2     250  pers_wast        
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                  0      139     514  pers_wast        
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                  1       16     514  pers_wast        
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                  0      317     514  pers_wast        
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                  1       42     514  pers_wast        
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                  0      295     560  pers_wast        
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                  1        6     560  pers_wast        
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                  0      251     560  pers_wast        
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                  1        8     560  pers_wast        
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                  0        0      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                  1        0      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                  0       48      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                  1        2      50  pers_wast        
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                  0      144     247  pers_wast        
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                  1        8     247  pers_wast        
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                  0       90     247  pers_wast        
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                  1        5     247  pers_wast        
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                  0       99     218  pers_wast        
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                  1        1     218  pers_wast        
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                  0      117     218  pers_wast        
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                  1        1     218  pers_wast        
6-24 months   ki0047075b-MAL-ED         INDIA                          1                  0      127     241  pers_wast        
6-24 months   ki0047075b-MAL-ED         INDIA                          1                  1       16     241  pers_wast        
6-24 months   ki0047075b-MAL-ED         INDIA                          0                  0       93     241  pers_wast        
6-24 months   ki0047075b-MAL-ED         INDIA                          0                  1        5     241  pers_wast        
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                  0       94     238  pers_wast        
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                  1        3     238  pers_wast        
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                  0      140     238  pers_wast        
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                  1        1     238  pers_wast        
6-24 months   ki0047075b-MAL-ED         PERU                           1                  0      211     284  pers_wast        
6-24 months   ki0047075b-MAL-ED         PERU                           1                  1        1     284  pers_wast        
6-24 months   ki0047075b-MAL-ED         PERU                           0                  0       72     284  pers_wast        
6-24 months   ki0047075b-MAL-ED         PERU                           0                  1        0     284  pers_wast        
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                  0      166     270  pers_wast        
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                  1        1     270  pers_wast        
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                  0      102     270  pers_wast        
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                  1        1     270  pers_wast        
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  0      210     253  pers_wast        
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  1        0     253  pers_wast        
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  0       43     253  pers_wast        
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  1        0     253  pers_wast        
6-24 months   ki1000109-EE              PAKISTAN                       1                  0       63     366  pers_wast        
6-24 months   ki1000109-EE              PAKISTAN                       1                  1        6     366  pers_wast        
6-24 months   ki1000109-EE              PAKISTAN                       0                  0      271     366  pers_wast        
6-24 months   ki1000109-EE              PAKISTAN                       0                  1       26     366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                  0       92    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                  1        9    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                  0     1160    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                  1      105    1366  pers_wast        
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                  0      607     730  pers_wast        
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                  1       25     730  pers_wast        
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                  0       97     730  pers_wast        
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                  1        1     730  pers_wast        
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                  0      143     543  pers_wast        
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                  1       18     543  pers_wast        
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                  0      327     543  pers_wast        
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                  1       55     543  pers_wast        
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                  0     4499    8450  pers_wast        
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                  1       74    8450  pers_wast        
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                  0     3796    8450  pers_wast        
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                  1       81    8450  pers_wast        
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                  0       20   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                  1        4   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                  0    14885   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                  1      894   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                  0     3096    5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                  1      266    5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                  0     1759    5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                  1      160    5281  pers_wast        


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/4d3ca9fd-44fb-4e34-bb6b-b1f0661cbd1f/c75a1096-8530-48b4-9e35-4bc69be52540/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4d3ca9fd-44fb-4e34-bb6b-b1f0661cbd1f/c75a1096-8530-48b4-9e35-4bc69be52540/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4d3ca9fd-44fb-4e34-bb6b-b1f0661cbd1f/c75a1096-8530-48b4-9e35-4bc69be52540/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4d3ca9fd-44fb-4e34-bb6b-b1f0661cbd1f/c75a1096-8530-48b4-9e35-4bc69be52540/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.0526316   0.0170611   0.0882021
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.0526316   0.0076381   0.0976251
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.1118881   0.0601145   0.1636618
0-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.0510204   0.0073650   0.0946758
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.0869565   0.0203810   0.1535320
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.0875421   0.0553552   0.1197290
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0891089   0.0534033   0.1248146
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0830040   0.0588611   0.1071469
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1118012   0.0630805   0.1605220
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1439791   0.1087413   0.1792168
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0161819   0.0125248   0.0198391
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0208924   0.0163901   0.0253948
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0791196   0.0682796   0.0899596
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0833768   0.0703893   0.0963642
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                0.0839161   0.0383778   0.1294544
0-6 months    ki0047075b-MAL-ED         INDIA        0                    NA                0.0721649   0.0205628   0.1237671
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1032258   0.0552811   0.1511705
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1169916   0.0837116   0.1502717
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0199336   0.0041293   0.0357378
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0308880   0.0097984   0.0519776
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.0526316   0.0170611   0.0882021
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.0526316   0.0076381   0.0976251
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.1118881   0.0601145   0.1636618
6-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.0510204   0.0073650   0.0946758
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.0869565   0.0203810   0.1535320
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.0875421   0.0553552   0.1197290
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0891089   0.0534033   0.1248146
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0830040   0.0588611   0.1071469
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1118012   0.0630805   0.1605220
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1439791   0.1087413   0.1792168
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0161819   0.0125248   0.0198391
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0208924   0.0163901   0.0253948
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0791196   0.0682796   0.0899596
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0833768   0.0703893   0.0963642


### Parameter: E(Y)


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.0526316   0.0247278   0.0805354
0-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.0871369   0.0514552   0.1228187
0-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.0874317   0.0584537   0.1164097
0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0834553   0.0601989   0.1067118
0-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1344383   0.1057200   0.1631566
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0183432   0.0154819   0.0212045
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0806665   0.0720540   0.0892791
0-6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                0.0791667   0.0449364   0.1133970
0-6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1128405   0.0854611   0.1402198
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0250000   0.0120576   0.0379424
6-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.0526316   0.0247278   0.0805354
6-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.0871369   0.0514552   0.1228187
6-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.0874317   0.0584537   0.1164097
6-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0834553   0.0601989   0.1067118
6-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1344383   0.1057200   0.1631566
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0183432   0.0154819   0.0212045
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0806665   0.0720540   0.0892791


### Parameter: RR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.0000000   0.3362978   2.973555
0-24 months   ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         INDIA        0                    1                 0.4559949   0.1723848   1.206205
0-24 months   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE              PAKISTAN     0                    1                 1.0067340   0.4305832   2.353815
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 0.9314888   0.6140480   1.413035
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.2878127   0.7812518   2.122826
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    1                 1.2910965   0.9447959   1.764328
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.0538070   0.8624713   1.287590
0-6 months    ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED         INDIA        0                    1                 0.8599656   0.3504552   2.110230
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 1.1333565   0.6573951   1.953919
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     0                    1                 1.5495495   0.5442448   4.411808
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.0000000   0.3362978   2.973555
6-24 months   ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         INDIA        0                    1                 0.4559949   0.1723848   1.206205
6-24 months   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE              PAKISTAN     0                    1                 1.0067340   0.4305832   2.353815
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 0.9314888   0.6140480   1.413035
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.2878127   0.7812518   2.122826
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    1                 1.2910965   0.9447959   1.764328
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.0538070   0.8624713   1.287590


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0000000   -0.0220599   0.0220599
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0247512   -0.0525483   0.0030459
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0004752   -0.0595317   0.0604821
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0056536   -0.0393651   0.0280580
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0226371   -0.0196812   0.0649553
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0021613   -0.0005006   0.0048231
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0015470   -0.0043893   0.0074832
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                -0.0047494   -0.0325747   0.0230759
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0096147   -0.0311524   0.0503817
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0050664   -0.0071308   0.0172637
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0000000   -0.0220599   0.0220599
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0247512   -0.0525483   0.0030459
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0004752   -0.0595317   0.0604821
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0056536   -0.0393651   0.0280580
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0226371   -0.0196812   0.0649553
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0021613   -0.0005006   0.0048231
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0015470   -0.0043893   0.0074832


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0000000   -0.5206498    0.3423864
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.2840493   -0.6252463   -0.0144817
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0054348   -0.9830339    0.5011886
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0677436   -0.5664076    0.2721713
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.1683825   -0.2120263    0.4293955
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.1178234   -0.0385758    0.2506704
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0191773   -0.0574492    0.0902512
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                -0.0599926   -0.4756633    0.2385903
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0852058   -0.3571379    0.3833725
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.2026578   -0.4501982    0.5616085
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0000000   -0.5206498    0.3423864
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.2840493   -0.6252463   -0.0144817
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0054348   -0.9830339    0.5011886
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0677436   -0.5664076    0.2721713
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.1683825   -0.2120263    0.4293955
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.1178234   -0.0385758    0.2506704
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0191773   -0.0574492    0.0902512

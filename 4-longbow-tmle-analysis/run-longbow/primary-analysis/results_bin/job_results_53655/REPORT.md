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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        single    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  -------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       44    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       80    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0        0    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        0    124
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0        5     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1       13     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0        1     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        5     24
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   0       71    180
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   1      109    180
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   0        0    180
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        0    180
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0       20     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       78     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        0     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0     98
0-24 months   ki0047075b-MAL-ED          PERU                           0                   0        4     35
0-24 months   ki0047075b-MAL-ED          PERU                           0                   1       23     35
0-24 months   ki0047075b-MAL-ED          PERU                           1                   0        2     35
0-24 months   ki0047075b-MAL-ED          PERU                           1                   1        6     35
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0        8     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       35     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       10     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1       34     87
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0        8     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       38     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        4     51
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0      236    710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      409    710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       29    710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       36    710
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                   0       18     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                   1       16     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   0        2     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   1        1     37
0-24 months   ki1119695-PROBIT           BELARUS                        0                   0      592   4431
0-24 months   ki1119695-PROBIT           BELARUS                        0                   1     3639   4431
0-24 months   ki1119695-PROBIT           BELARUS                        1                   0       23   4431
0-24 months   ki1119695-PROBIT           BELARUS                        1                   1      177   4431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   0     1524   3596
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   1     1808   3596
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      120   3596
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      144   3596
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                   0      179    353
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                   1      150    353
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0       18    353
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1        6    353
0-24 months   ki1135781-COHORTS          INDIA                          0                   0     1499   1962
0-24 months   ki1135781-COHORTS          INDIA                          0                   1      459   1962
0-24 months   ki1135781-COHORTS          INDIA                          1                   0        3   1962
0-24 months   ki1135781-COHORTS          INDIA                          1                   1        1   1962
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                   0      628   1661
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                   1      980   1661
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   0       28   1661
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   1       25   1661
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0     1529   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      532   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0        1   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1        0   2062
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0       13     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1       50     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0        0     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     63
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1       11     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        3     15
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   0       27     85
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   1       58     85
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   0        0     85
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   1        0     85
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   0        9     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   1       39     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0        0     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0     48
0-6 months    ki0047075b-MAL-ED          PERU                           0                   0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           0                   1        8     11
0-6 months    ki0047075b-MAL-ED          PERU                           1                   0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           1                   1        3     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0        4     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       14     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        5     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1       13     36
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0        1     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       11     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        2     14
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0       88    338
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      218    338
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       12    338
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       20    338
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                   0        3      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                   1        4      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                   0        2      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                   1        0      9
0-6 months    ki1119695-PROBIT           BELARUS                        0                   0      467   4263
0-6 months    ki1119695-PROBIT           BELARUS                        0                   1     3600   4263
0-6 months    ki1119695-PROBIT           BELARUS                        1                   0       21   4263
0-6 months    ki1119695-PROBIT           BELARUS                        1                   1      175   4263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                   0      586   2503
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                   1     1738   2503
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   0       46   2503
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      133   2503
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                   0       45    197
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                   1      142    197
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   0        4    197
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   1        6    197
0-6 months    ki1135781-COHORTS          INDIA                          0                   0      830   1290
0-6 months    ki1135781-COHORTS          INDIA                          0                   1      459   1290
0-6 months    ki1135781-COHORTS          INDIA                          1                   0        0   1290
0-6 months    ki1135781-COHORTS          INDIA                          1                   1        1   1290
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                   0      186    737
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                   1      524    737
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                   0        9    737
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                   1       18    737
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      242    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1      306    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0        0    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1        0    548
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       31     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       30     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0        0     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     61
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0        5      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        2      9
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   0       44     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   1       51     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   0        0     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        0     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0       11     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       39     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0     50
6-24 months   ki0047075b-MAL-ED          PERU                           0                   0        4     24
6-24 months   ki0047075b-MAL-ED          PERU                           0                   1       15     24
6-24 months   ki0047075b-MAL-ED          PERU                           1                   0        2     24
6-24 months   ki0047075b-MAL-ED          PERU                           1                   1        3     24
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0        4     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       21     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        5     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1       21     51
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0        7     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       27     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        2     37
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0      148    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      191    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       17    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       16    372
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                   0       15     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                   1       12     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   0        0     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   1        1     28
6-24 months   ki1119695-PROBIT           BELARUS                        0                   0      125    168
6-24 months   ki1119695-PROBIT           BELARUS                        0                   1       39    168
6-24 months   ki1119695-PROBIT           BELARUS                        1                   0        2    168
6-24 months   ki1119695-PROBIT           BELARUS                        1                   1        2    168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   0      938   1093
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   1       70   1093
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0       74   1093
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1       11   1093
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                   0      134    156
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                   1        8    156
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0       14    156
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1        0    156
6-24 months   ki1135781-COHORTS          INDIA                          0                   0      669    672
6-24 months   ki1135781-COHORTS          INDIA                          0                   1        0    672
6-24 months   ki1135781-COHORTS          INDIA                          1                   0        3    672
6-24 months   ki1135781-COHORTS          INDIA                          1                   1        0    672
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                   0      442    924
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                   1      456    924
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   0       19    924
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   1        7    924
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0     1287   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      226   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0        1   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1        0   1514


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/6a683b5b-f20d-4c54-8f86-79084f9aad0e/7c881079-2897-4516-9f10-f39149bbf9b7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6a683b5b-f20d-4c54-8f86-79084f9aad0e/7c881079-2897-4516-9f10-f39149bbf9b7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6a683b5b-f20d-4c54-8f86-79084f9aad0e/7c881079-2897-4516-9f10-f39149bbf9b7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6a683b5b-f20d-4c54-8f86-79084f9aad0e/7c881079-2897-4516-9f10-f39149bbf9b7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.8139535   0.6823222   0.9455848
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.7727273   0.6455316   0.8999229
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6342908   0.5949027   0.6736789
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5504740   0.4141644   0.6867836
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.8599731   0.8496071   0.8703392
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.8865783   0.8426145   0.9305421
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.5416705   0.5246116   0.5587295
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.5390015   0.4725639   0.6054392
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.4559271   0.4002153   0.5116388
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2500000   0.0728958   0.4271042
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6090768   0.5837426   0.6344110
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4926179   0.3654439   0.6197918
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7125797   0.6609794   0.7641801
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6506226   0.4772493   0.8239959
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.8851546   0.8752857   0.8950235
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.8934706   0.8498575   0.9370837
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.7466974   0.7291576   0.7642371
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7525130   0.6899143   0.8151118
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.7380282   0.7055710   0.7704853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6666667   0.4900832   0.8432501
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5648414   0.5103738   0.6193090
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4885455   0.2789841   0.6981068
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0696600   0.0539996   0.0853203
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1483440   0.0805517   0.2161363
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.5077951   0.4732557   0.5423345
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2692308   0.1105079   0.4279537


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.7931034   0.7014938   0.8847131
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6267606   0.5890263   0.6644948
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8612051   0.8511051   0.8713052
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5428254   0.5263835   0.5592672
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4419263   0.3882796   0.4955731
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6050572   0.5803571   0.6297573
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7041420   0.6547600   0.7535240
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.8855266   0.8758983   0.8951550
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7475030   0.7304953   0.7645107
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7354138   0.7034648   0.7673628
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5564516   0.5041613   0.6087419
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0741080   0.0586494   0.0895665
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5010823   0.4670433   0.5351212


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.9493506   0.7536894   1.1958064
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8678575   0.6723188   1.1202672
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.0309372   0.9796515   1.0849078
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9950727   0.8763975   1.1298179
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 0.5483333   0.2671990   1.1252640
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.8087943   0.6226898   1.0505203
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9130524   0.6925048   1.2038394
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.0093950   0.9601025   1.0612182
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0077885   0.9250875   1.0978827
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9033079   0.6906013   1.1815285
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8649250   0.5570566   1.3429432
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 2.1295446   1.2802025   3.5423772
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.5301957   0.2928894   0.9597734


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0208500   -0.1134431    0.0717430
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0075302   -0.0201675    0.0051071
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0012320   -0.0008447    0.0033087
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0011548   -0.0036197    0.0059293
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0140007   -0.0277753   -0.0002261
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0040196   -0.0080983    0.0000591
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0084377   -0.0260532    0.0091778
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0003720   -0.0016940    0.0024381
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0008056   -0.0036762    0.0052874
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0026143   -0.0092776    0.0040489
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0083898   -0.0261750    0.0093954
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0044480   -0.0012292    0.0101252
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0067128   -0.0124377   -0.0009880


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0262892   -0.1499083    0.0840405
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0120145   -0.0324176    0.0079855
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0014305   -0.0009842    0.0038395
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0021275   -0.0067064    0.0108838
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0316811   -0.0634737   -0.0008389
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0066433   -0.0133920    0.0000604
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0119830   -0.0373688    0.0127817
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0004201   -0.0019158    0.0027506
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0010778   -0.0049357    0.0070553
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0035549   -0.0126621    0.0054704
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0150773   -0.0476459    0.0164788
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0600206   -0.0188921    0.1328216
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0133967   -0.0249192   -0.0020037

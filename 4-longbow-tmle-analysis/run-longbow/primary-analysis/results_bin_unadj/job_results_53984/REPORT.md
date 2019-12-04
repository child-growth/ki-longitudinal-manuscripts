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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** predfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                    country                        predfeed36    ever_stunted   n_cell      n
---------------------------  -------------------------  -----------------------------  -----------  -------------  -------  -----
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                        0       29    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                        1       45    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                        0       68    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                        1       67    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                        0       18    195
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                        1        3    195
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                        0      146    195
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                        1       28    195
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                        0        5    201
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                        1       10    201
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                        0       87    201
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                        1       99    201
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                        0        6    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                        1        2    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                        0      148    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                        1       52    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                        0       25    251
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                        1       45    251
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                        0       76    251
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                        1      105    251
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        3    244
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        1    244
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      108    244
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1      132    244
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        2    210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        2    210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0       32    210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1      174    210
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                        0        0      6
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                        1        2      6
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                        0        2      6
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                        1        2      6
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       25     95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        1       70     95
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                        0      132    443
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                        1      225    443
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                        0       22    443
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                        1       64    443
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                        0       18    175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                        1       12    175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                        0       83    175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                        1       62    175
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                        0     4980   8764
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                        1     1855   8764
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                        0     1431   8764
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                        1      498   8764
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                        0     1502   3285
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                        1     1086   3285
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                        0      389   3285
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                        1      308   3285
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                        0       56    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                        1       18    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                        0      108    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                        1       27    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                        0       20    195
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                        1        1    195
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                        0      155    195
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                        1       19    195
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                        0       14    201
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                        1        1    201
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                        0      142    201
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                        1       44    201
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                        0        8    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                        1        0    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                        0      187    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                        1       13    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                        0       43    251
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                        1       27    251
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                        0      117    251
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                        1       64    251
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        3    244
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        1    244
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      167    244
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1       73    244
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        3    210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        1    210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      143    210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1       63    210
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                        0        0      6
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                        1        2      6
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                        0        3      6
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                        1        1      6
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       95     95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        1        0     95
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                        0      294    443
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                        1       63    443
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                        0       60    443
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                        1       26    443
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                        0       30    175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                        1        0    175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                        0      145    175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                        1        0    175
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                        0     5885   8761
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                        1      948   8761
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                        0     1682   8761
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                        1      246   8761
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                        0     2348   3257
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                        1      229   3257
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                        0      608   3257
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                        1       72   3257
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                        0       27    158
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                        1       27    158
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                        0       64    158
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                        1       40    158
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                        0       15    163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                        1        2    163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                        0      137    163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                        1        9    163
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                        0        4    153
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                        1        9    153
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                        0       85    153
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                        1       55    153
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                        0        5    193
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                        1        2    193
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                        0      147    193
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                        1       39    193
6-24 months                  ki0047075b-MAL-ED          PERU                           1                        0       19    149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                        1       18    149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                        0       71    149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                        1       41    149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        1    157
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0    157
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0       97    157
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1       59    157
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        2    143
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        1    143
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0       29    143
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1      111    143
6-24 months                  ki1000109-EE               PAKISTAN                       1                        0        0      3
6-24 months                  ki1000109-EE               PAKISTAN                       1                        1        0      3
6-24 months                  ki1000109-EE               PAKISTAN                       0                        0        2      3
6-24 months                  ki1000109-EE               PAKISTAN                       0                        1        1      3
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       20     91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                        1       71     91
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                        0      131    353
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                        1      162    353
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                        0       22    353
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                        1       38    353
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                        0       16    162
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                        1       12    162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                        0       72    162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                        1       62    162
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                        0     3223   5370
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                        1      915   5370
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                        0      979   5370
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                        1      253   5370
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                        0     1496   2982
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                        1      859   2982
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                        0      387   2982
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                        1      240   2982


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA

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
![](/tmp/aa6f8c6b-7aa6-4967-a2a0-18ece9618e70/3ccbd3b3-d08f-40a2-b9d5-bc931bf65b60/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/aa6f8c6b-7aa6-4967-a2a0-18ece9618e70/3ccbd3b3-d08f-40a2-b9d5-bc931bf65b60/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/aa6f8c6b-7aa6-4967-a2a0-18ece9618e70/3ccbd3b3-d08f-40a2-b9d5-bc931bf65b60/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/aa6f8c6b-7aa6-4967-a2a0-18ece9618e70/3ccbd3b3-d08f-40a2-b9d5-bc931bf65b60/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.6081081   0.4966152   0.7196010
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4962963   0.4117527   0.5808399
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA        1                    NA                0.6666667   0.4275118   0.9058215
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA        0                    NA                0.5322581   0.4603730   0.6041432
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    NA                0.6428571   0.5303852   0.7553291
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    NA                0.5801105   0.5080664   0.6521546
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6302521   0.5801201   0.6803841
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.7441860   0.6518668   0.8365053
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                0.4000000   0.2241925   0.5758075
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    NA                0.4275862   0.3468301   0.5083423
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2713972   0.2588356   0.2839588
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2581649   0.2373480   0.2789817
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.4196291   0.3970746   0.4421836
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4418938   0.4001623   0.4836253
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2432432   0.1452554   0.3412311
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2000000   0.1323633   0.2676367
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    NA                0.3857143   0.2714570   0.4999716
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    NA                0.3535912   0.2838033   0.4233790
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1764706   0.1368811   0.2160601
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3023256   0.2051508   0.3995003
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1387385   0.1294097   0.1480673
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1275934   0.1122189   0.1429678
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0888630   0.0750153   0.1027107
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1058824   0.0815168   0.1302479
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5000000   0.3662173   0.6337827
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.3846154   0.2908167   0.4784141
6-24 months                  ki0047075b-MAL-ED     PERU         1                    NA                0.4864865   0.3248941   0.6480789
6-24 months                  ki0047075b-MAL-ED     PERU         0                    NA                0.3660714   0.2765547   0.4555882
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5529010   0.4958904   0.6099117
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    NA                0.6333333   0.5112264   0.7554403
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                0.4285714   0.2447034   0.6124395
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    NA                0.4626866   0.3780033   0.5473698
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2211213   0.2065615   0.2356812
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2053571   0.1763372   0.2343771
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3647558   0.3423220   0.3871896
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3827751   0.3371806   0.4283696


### Parameter: E(Y)


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.5358852   0.4681109   0.6036595
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA        NA                   NA                0.5422886   0.4732417   0.6113355
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         NA                   NA                0.5976096   0.5368226   0.6583966
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.6523702   0.6079743   0.6967661
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       NA                   NA                0.4228571   0.3494545   0.4962598
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2684847   0.2575491   0.2794203
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.4243531   0.4041458   0.4445604
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.2153110   0.1594513   0.2711707
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         NA                   NA                0.3625498   0.3029582   0.4221414
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2009029   0.1635496   0.2382563
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1362858   0.1283472   0.1442245
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0924163   0.0803439   0.1044888
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4240506   0.3467471   0.5013542
6-24 months                  ki0047075b-MAL-ED     PERU         NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months                  ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5665722   0.5148041   0.6183404
6-24 months                  ki1148112-LCNI-5      MALAWI       NA                   NA                0.4567901   0.3798457   0.5337346
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2175047   0.2040809   0.2309284
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.3685446   0.3480535   0.3890357


### Parameter: RR


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8161317   0.6354340   1.048214
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA        0                    1                 0.7983871   0.5441800   1.171344
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    1                 0.9023941   0.7281437   1.118344
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1807752   1.0189841   1.368255
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    1                 1.0689655   0.6625309   1.724730
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9512435   0.8677186   1.042808
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0530582   0.9465977   1.171492
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8222222   0.4859170   1.391286
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    1                 0.9167178   0.6421661   1.308651
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.7131783   1.1576337   2.535327
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9196682   0.7997155   1.057613
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1915232   0.9021906   1.573645
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.7692308   0.5355848   1.104804
6-24 months                  ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED     PERU         0                    1                 0.7524802   0.4981536   1.136650
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1454733   0.9205136   1.425410
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    1                 1.0796020   0.6771639   1.721209
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9287080   0.7979979   1.080828
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0494009   0.9198054   1.197256


### Parameter: PAR


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0722229   -0.1628951   0.0184492
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA        1                    NA                -0.1243781   -0.3555187   0.1067624
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    NA                -0.0452476   -0.1416284   0.0511332
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0221181    0.0012959   0.0429403
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0228571   -0.1374523   0.1831666
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0029125   -0.0082026   0.0023776
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0047241   -0.0051103   0.0145584
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0279322   -0.1048912   0.0490268
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    NA                -0.0231645   -0.1197272   0.0733983
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0244323    0.0035403   0.0453244
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0024527   -0.0064652   0.0015599
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0035533   -0.0022933   0.0094000
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0759494   -0.1838368   0.0319381
6-24 months                  ki0047075b-MAL-ED     PERU         1                    NA                -0.0905133   -0.2296239   0.0485972
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0136712   -0.0094506   0.0367930
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                 0.0282187   -0.1392369   0.1956743
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0036167   -0.0108309   0.0035976
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0037888   -0.0066944   0.0142719


### Parameter: PAF


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1347732   -0.3188487   0.0236104
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA        1                    NA                -0.2293578   -0.7415161   0.1321811
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    NA                -0.0757143   -0.2501772   0.0744022
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0339042    0.0012277   0.0655116
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0540541   -0.4123446   0.3664338
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0108480   -0.0307101   0.0086315
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0111324   -0.0123275   0.0340486
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1297297   -0.5493445   0.1762392
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    NA                -0.0638932   -0.3665972   0.1717612
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1216127    0.0127700   0.2184554
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0179965   -0.0477537   0.0109156
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0384490   -0.0276023   0.1002547
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1791045   -0.4649694   0.0509786
6-24 months                  ki0047075b-MAL-ED     PERU         1                    NA                -0.2285845   -0.6376663   0.0783105
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0241297   -0.0176419   0.0641867
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                 0.0617761   -0.3868765   0.3652901
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0166280   -0.0504702   0.0161240
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0102803   -0.0185468   0.0382916

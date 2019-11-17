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

* arm
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

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




# Results Detail

## Results Plots
![](/tmp/f01c6048-db9e-4296-84d9-7ca4ca8bbd64/6f17dbd6-7d94-42ac-b2d9-448f301a846a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f01c6048-db9e-4296-84d9-7ca4ca8bbd64/6f17dbd6-7d94-42ac-b2d9-448f301a846a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f01c6048-db9e-4296-84d9-7ca4ca8bbd64/6f17dbd6-7d94-42ac-b2d9-448f301a846a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f01c6048-db9e-4296-84d9-7ca4ca8bbd64/6f17dbd6-7d94-42ac-b2d9-448f301a846a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5540243   0.4440541   0.6639944
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.5175994   0.4343512   0.6008477
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA        1                    NA                0.6666667   0.4275118   0.9058215
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA        0                    NA                0.5322581   0.4603730   0.6041432
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    NA                0.6389354   0.5249924   0.7528783
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    NA                0.5775860   0.5054459   0.6497260
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6299553   0.5797328   0.6801779
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.7432454   0.6493190   0.8371718
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                0.4020583   0.2199447   0.5841720
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    NA                0.4303179   0.3493111   0.5113246
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2714882   0.2591963   0.2837801
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2572823   0.2375195   0.2770452
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.4181023   0.3956285   0.4405760
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4525912   0.4105118   0.4946707
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2428080   0.1431333   0.3424827
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1972670   0.1293264   0.2652076
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    NA                0.3958210   0.2763978   0.5152443
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    NA                0.3493672   0.2798158   0.4189186
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1755548   0.1359271   0.2151825
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3055394   0.2051005   0.4059783
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1375340   0.1283837   0.1466842
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1315598   0.1172207   0.1458989
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0866023   0.0729472   0.1002575
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1163985   0.0913456   0.1414513
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4703923   0.3371956   0.6035891
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.3987363   0.3043033   0.4931693
6-24 months                  ki0047075b-MAL-ED     PERU         1                    NA                0.4763367   0.3112227   0.6414508
6-24 months                  ki0047075b-MAL-ED     PERU         0                    NA                0.3685107   0.2785145   0.4585068
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5552150   0.4983524   0.6120775
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    NA                0.6180806   0.4981027   0.7380585
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                0.4141874   0.2245460   0.6038287
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    NA                0.4628060   0.3781310   0.5474810
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2203750   0.2060367   0.2347134
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2063384   0.1782436   0.2344332
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3644721   0.3420286   0.3869156
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3885055   0.3425496   0.4344614


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
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.9342541   0.7290494   1.197218
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA        0                    1                 0.7983871   0.5441800   1.171344
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    1                 0.9039818   0.7272247   1.123701
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1798383   1.0160743   1.369997
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    1                 1.0702871   0.6557788   1.746800
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9476741   0.8703229   1.031900
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0824892   0.9749909   1.201840
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8124400   0.4745251   1.390988
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    1                 0.8826394   0.6139782   1.268860
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.7404220   1.1672759   2.594990
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9565624   0.8440840   1.084029
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.3440572   1.0307991   1.752514
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8476674   0.5877045   1.222621
6-24 months                  ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED     PERU         0                    1                 0.7736348   0.5056020   1.183759
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1132276   0.8957015   1.383581
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    1                 1.1173832   0.6828061   1.828550
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9363057   0.8108764   1.081137
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0659404   0.9352354   1.214912


### Parameter: PAR


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0181391   -0.1062843   0.0700061
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA        1                    NA                -0.1243781   -0.3555187   0.1067624
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    NA                -0.0413258   -0.1388631   0.0562115
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0224149    0.0014416   0.0433881
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0207988   -0.1452131   0.1868107
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0030035   -0.0078901   0.0018832
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0062508   -0.0036289   0.0161306
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0274970   -0.1060720   0.0510780
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    NA                -0.0332712   -0.1348794   0.0683369
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0253481    0.0043139   0.0463824
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0012481   -0.0049105   0.0024142
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0058140    0.0001361   0.0114920
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0463417   -0.1538405   0.0611571
6-24 months                  ki0047075b-MAL-ED     PERU         1                    NA                -0.0803636   -0.2234772   0.0627500
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0113573   -0.0108671   0.0335816
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                 0.0426028   -0.1303341   0.2155396
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0028704   -0.0097394   0.0039987
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0040725   -0.0065741   0.0147191


### Parameter: PAF


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0338489   -0.2123198   0.1183485
0-24 months (no birth st.)   ki0047075b-MAL-ED     INDIA        1                    NA                -0.2293578   -0.7415161   0.1321811
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    NA                -0.0691518   -0.2458129   0.0824580
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0343591    0.0014369   0.0661959
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0491864   -0.4371263   0.3709345
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0111867   -0.0295251   0.0068250
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0147303   -0.0088382   0.0377481
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1277084   -0.5573497   0.1834035
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    NA                -0.0917701   -0.4111902   0.1553499
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1261711    0.0164877   0.2236223
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0091582   -0.0363287   0.0172999
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0629112   -0.0017070   0.1233611
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1092834   -0.3947609   0.1177630
6-24 months                  ki0047075b-MAL-ED     PERU         1                    NA                -0.2029521   -0.6261994   0.1101376
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0200456   -0.0200697   0.0585833
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                 0.0932655   -0.3772314   0.4030288
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0131968   -0.0453853   0.0180005
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0110502   -0.0182280   0.0394865

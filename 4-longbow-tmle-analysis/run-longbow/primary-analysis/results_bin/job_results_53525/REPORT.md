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

**Intervention Variable:** predfeed6

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

agecat                       studyid                    country                        predfeed6    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       32     195
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       40     195
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       58     195
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       65     195
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       0       20     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       1        4     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       0      134     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       1       27     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       0        1     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       1        7     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       0       82     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       1       95     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       0        6     199
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       1        5     199
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       0      140     199
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       1       48     199
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       0       29     237
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       1       53     237
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       0       61     237
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       1       94     237
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        1     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       91     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1      120     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     197
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        1     197
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       28     197
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      168     197
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       0        4      27
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       1       19      27
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       0        2      27
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       1        2      27
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       25      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       70      95
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       0      130     471
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       1      222     471
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       0       34     471
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       1       85     471
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                       0       18     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                       1       12     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                       0       83     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                       1       62     175
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     6247   10809
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     2191   10809
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1776   10809
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      595   10809
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     1565    3397
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1     1125    3397
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      393    3397
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      314    3397
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       0       60     195
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       1       12     195
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       0       95     195
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       1       28     195
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       0       22     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       1        2     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       0      143     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       1       18     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       0        7     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       1        1     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       0      134     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       1       43     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       0       11     199
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       1        0     199
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       0      176     199
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       1       12     199
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       0       54     237
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       1       28     237
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       0       95     237
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       1       60     237
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        1     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      146     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       65     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     197
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     197
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      136     197
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       60     197
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       0        8      27
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       1       15      27
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       0        3      27
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       1        1      27
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       95      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0      95
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       0      286     471
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       1       66     471
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       0       88     471
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       1       31     471
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                       0       30     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                       1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                       0      145     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                       1        0     175
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0     7290   10806
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1146   10806
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2061   10806
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      309   10806
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     2442    3369
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1      237    3369
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      615    3369
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1       75    3369
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       0       31     153
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       1       28     153
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       0       57     153
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       1       37     153
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       0       20     163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       1        2     163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       0      132     163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       1        9     163
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       0        1     141
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       1        6     141
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       0       82     141
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       1       52     141
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       0        6     186
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       1        5     186
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       0      139     186
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       1       36     186
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       0       29     148
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       1       25     148
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       0       60     148
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       1       34     148
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     145
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     145
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       90     145
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       55     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     135
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        1     135
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       26     135
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      108     135
6-24 months                  ki1000109-EE               PAKISTAN                       1                       0        4      11
6-24 months                  ki1000109-EE               PAKISTAN                       1                       1        4      11
6-24 months                  ki1000109-EE               PAKISTAN                       0                       0        2      11
6-24 months                  ki1000109-EE               PAKISTAN                       0                       1        1      11
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       20      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       71      91
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       0      126     369
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       1      156     369
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       0       33     369
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       1       54     369
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                       0       16     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                       1       12     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                       0       72     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                       1       62     162
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       0     3715    6170
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1053    6170
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1115    6170
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       1      287    6170
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       0     1559    3084
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       1      890    3084
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       0      391    3084
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       1      244    3084


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
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/9a31a2e7-e58a-4f5d-8eeb-9f44cbc0954d/03c841ce-e1c8-4483-af97-ca7e6bb41166/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9a31a2e7-e58a-4f5d-8eeb-9f44cbc0954d/03c841ce-e1c8-4483-af97-ca7e6bb41166/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9a31a2e7-e58a-4f5d-8eeb-9f44cbc0954d/03c841ce-e1c8-4483-af97-ca7e6bb41166/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9a31a2e7-e58a-4f5d-8eeb-9f44cbc0954d/03c841ce-e1c8-4483-af97-ca7e6bb41166/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5435017   0.4282839   0.6587196
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.5360902   0.4494192   0.6227612
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        1                    NA                0.4545455   0.1595511   0.7495398
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        0                    NA                0.2553191   0.1928321   0.3178062
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    NA                0.6524550   0.5477398   0.7571702
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    NA                0.6010209   0.5233709   0.6786709
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6296700   0.5795381   0.6798020
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.7427861   0.6672199   0.8183523
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                0.4340758   0.2563179   0.6118337
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    NA                0.4302839   0.3493897   0.5111780
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2590766   0.2480364   0.2701169
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2533521   0.2361549   0.2705493
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.4162753   0.3943856   0.4381650
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4606221   0.4191081   0.5021361
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1555867   0.0682219   0.2429515
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2251313   0.1506801   0.2995824
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    NA                0.3505217   0.2438541   0.4571892
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    NA                0.3793962   0.3026725   0.4561198
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1855127   0.1447628   0.2262626
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2611713   0.1803996   0.3419429
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1344833   0.1262088   0.1427577
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1356003   0.1223753   0.1488253
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0862882   0.0727688   0.0998077
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1187289   0.0931266   0.1443312
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4666865   0.3383921   0.5949809
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.3933311   0.2938986   0.4927635
6-24 months                  ki0047075b-MAL-ED     NEPAL        1                    NA                0.4545455   0.1594991   0.7495918
6-24 months                  ki0047075b-MAL-ED     NEPAL        0                    NA                0.2057143   0.1456633   0.2657653
6-24 months                  ki0047075b-MAL-ED     PERU         1                    NA                0.4767704   0.3418110   0.6117298
6-24 months                  ki0047075b-MAL-ED     PERU         0                    NA                0.3679742   0.2698749   0.4660735
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5549950   0.4970265   0.6129636
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    NA                0.6025298   0.5067063   0.6983534
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                0.4277553   0.2395771   0.6159335
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    NA                0.4631366   0.3783449   0.5479283
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2202737   0.2069375   0.2336098
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2068207   0.1820170   0.2316245
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3632562   0.3415534   0.3849590
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3927939   0.3463725   0.4392153


### Parameter: E(Y)


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.5384615   0.4683114   0.6086117
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.2663317   0.2047606   0.3279027
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         NA                   NA                0.6202532   0.5583342   0.6821721
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.6518047   0.6087352   0.6948741
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       NA                   NA                0.4228571   0.3494545   0.4962598
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2577482   0.2478575   0.2676389
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.4236091   0.4038600   0.4433581
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.2051282   0.1483073   0.2619492
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         NA                   NA                0.3713080   0.3096658   0.4329502
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2059448   0.1693853   0.2425043
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1346474   0.1274032   0.1418916
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0926091   0.0806150   0.1046031
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4248366   0.3462528   0.5034204
6-24 months                  ki0047075b-MAL-ED     NEPAL        NA                   NA                0.2204301   0.1606956   0.2801646
6-24 months                  ki0047075b-MAL-ED     PERU         NA                   NA                0.3986486   0.3194990   0.4777982
6-24 months                  ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5691057   0.5185109   0.6197005
6-24 months                  ki1148112-LCNI-5      MALAWI       NA                   NA                0.4567901   0.3798457   0.5337346
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2171799   0.2048085   0.2295513
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.3677043   0.3477044   0.3877041


### Parameter: RR


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.9863634   0.7603947   1.2794838
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        0                    1                 0.5617021   0.2807235   1.1239146
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    1                 0.9211684   0.7494368   1.1322520
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1796434   1.0402036   1.3377752
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    1                 0.9912643   0.6316719   1.5555623
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9779040   0.9073716   1.0539191
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1065325   0.9995874   1.2249196
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.4469830   0.7532796   2.7795257
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    1                 1.0823759   0.7505821   1.5608386
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4078350   0.9648617   2.0541798
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0083060   0.9015242   1.1277358
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.3759569   1.0557438   1.7932923
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8428165   0.5804739   1.2237236
6-24 months                  ki0047075b-MAL-ED     NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     NEPAL        0                    1                 0.4525714   0.2221214   0.9221125
6-24 months                  ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     PERU         0                    1                 0.7718059   0.5224095   1.1402633
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0856490   0.9003578   1.3090727
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    1                 1.0827139   0.6723739   1.7434782
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9389264   0.8267933   1.0662675
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0813138   0.9494913   1.2314380


### Parameter: PAR


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0050402   -0.0943764   0.0842960
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.1882138   -0.4731562   0.0967286
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    NA                -0.0322018   -0.1181175   0.0537139
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0221346   -0.0004644   0.0447337
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0112187   -0.1733328   0.1508955
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0013285   -0.0055159   0.0028589
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0073338   -0.0022988   0.0169664
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0495415   -0.0235295   0.1226126
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    NA                 0.0207864   -0.0673285   0.1089012
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0204321   -0.0020585   0.0429228
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0001641   -0.0031493   0.0034776
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0063208    0.0005896   0.0120521
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0418499   -0.1416157   0.0579160
6-24 months                  ki0047075b-MAL-ED     NEPAL        1                    NA                -0.2341153   -0.5175303   0.0492997
6-24 months                  ki0047075b-MAL-ED     PERU         1                    NA                -0.0781218   -0.1853881   0.0291446
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0141107   -0.0125796   0.0408009
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                 0.0290348   -0.1424936   0.2005632
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0030938   -0.0091351   0.0029476
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0044481   -0.0058664   0.0147626


### Parameter: PAF


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0093604   -0.1896472    0.1436046
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.7066895   -2.2000739    0.0897744
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    NA                -0.0519172   -0.2002177    0.0780590
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0339590   -0.0015929    0.0682489
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0265307   -0.4913694    0.2934244
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0051542   -0.0215177    0.0109473
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0173126   -0.0056987    0.0397974
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.2415150   -0.2111377    0.5249925
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    NA                 0.0559814   -0.2138497    0.2658308
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0992116   -0.0162944    0.2015898
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0012189   -0.0237022    0.0255334
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0682530    0.0031817    0.1290765
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0985082   -0.3607300    0.1131817
6-24 months                  ki0047075b-MAL-ED     NEPAL        1                    NA                -1.0620843   -2.8567327   -0.1025372
6-24 months                  ki0047075b-MAL-ED     PERU         1                    NA                -0.1959664   -0.4999589    0.0464167
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0247944   -0.0233798    0.0707009
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                 0.0635627   -0.3986626    0.3730333
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0142451   -0.0425249    0.0132675
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0120970   -0.0163061    0.0397062

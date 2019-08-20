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

agecat                       studyid                    country                        predfeed36    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  -----------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                        0       48     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                        1       64     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                        0       50     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                        1       47     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                        0       29     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                        1        4     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                        0      145     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                        1       24     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                        0        4     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                        1       10     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                        0       90     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                        1       98     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                        0       21     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                        1        9     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                        0      135     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                        1       46     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                        0       49     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                        1       65     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                        0       53     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                        1       85     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        0     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        1     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      115     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1      136     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        0     214
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        2     214
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0       36     214
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1      176     214
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                        0       15     245
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                        1      122     245
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                        0       17     245
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                        1       91     245
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       25      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        1       70      95
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                        0      143     474
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                        1      243     474
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                        0       25     474
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                        1       63     474
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                        0       18     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                        1       12     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                        0       83     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                        1       62     175
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                        0     8059   13401
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                        1     2835   13401
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                        0     1725   13401
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                        1      782   13401
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                        0     1496    3246
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                        1     1084    3246
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                        0      362    3246
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                        1      304    3246
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                        0       91     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                        1       21     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                        0       74     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                        1       23     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                        0       31     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                        1        2     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                        0      152     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                        1       17     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                        0       11     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                        1        3     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                        0      147     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                        1       41     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                        0       29     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                        1        1     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                        0      168     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                        1       13     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                        0       76     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                        1       38     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                        0       85     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                        1       53     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        0     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        1     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      173     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1       78     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        2     214
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0     214
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      147     214
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1       65     214
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                        0       46     245
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                        1       91     245
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                        0       50     245
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                        1       58     245
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       95      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        1        0      95
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                        0      317     474
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                        1       69     474
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                        0       63     474
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                        1       25     474
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                        0       30     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                        1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                        0      145     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                        1        0     175
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                        0     9514   13401
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                        1     1380   13401
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                        0     2038   13401
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                        1      469   13401
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                        0     2351    3246
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                        1      229    3246
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                        0      594    3246
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                        1       72    3246
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                        0       47     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                        1       43     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                        0       45     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                        1       24     159
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                        0       28     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                        1        2     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                        0      131     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                        1        7     168
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                        0        4     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                        1        7     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                        0       87     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                        1       57     155
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                        0       21     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                        1        8     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                        0      133     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                        1       33     195
6-24 months                  ki0047075b-MAL-ED          PERU                           1                        0       48     149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                        1       27     149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                        0       42     149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                        1       32     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        0     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      101     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1       58     159
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        0     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        2     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0       32     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1      111     145
6-24 months                  ki1000109-EE               PAKISTAN                       1                        0       14      95
6-24 months                  ki1000109-EE               PAKISTAN                       1                        1       31      95
6-24 months                  ki1000109-EE               PAKISTAN                       0                        0       17      95
6-24 months                  ki1000109-EE               PAKISTAN                       0                        1       33      95
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       20      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                        1       71      91
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                        0      142     379
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                        1      174     379
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                        0       25     379
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                        1       38     379
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                        0       16     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                        1       12     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                        0       72     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                        1       62     162
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                        0     5484    8360
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                        1     1457    8360
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                        0     1102    8360
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                        1      317    8360
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                        0     1491    2940
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                        1      856    2940
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                        0      360    2940
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                        1      233    2940


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
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/afc2a369-cda8-4f9a-aee6-2f0fb6973229/6f05f264-7a3b-4301-9ab2-2d74e19a9cf4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/afc2a369-cda8-4f9a-aee6-2f0fb6973229/6f05f264-7a3b-4301-9ab2-2d74e19a9cf4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/afc2a369-cda8-4f9a-aee6-2f0fb6973229/6f05f264-7a3b-4301-9ab2-2d74e19a9cf4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/afc2a369-cda8-4f9a-aee6-2f0fb6973229/6f05f264-7a3b-4301-9ab2-2d74e19a9cf4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5650471   0.4738790   0.6562152
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4849700   0.3860995   0.5838405
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        1                    NA                0.3000000   0.1356277   0.4643723
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        0                    NA                0.2541436   0.1905655   0.3177218
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    NA                0.5655777   0.4752749   0.6558804
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    NA                0.6102620   0.5299476   0.6905764
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     1                    NA                0.8905117   0.8376621   0.9433614
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     0                    NA                0.8425964   0.7729237   0.9122690
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6327480   0.5846529   0.6808431
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.7324243   0.6372072   0.8276414
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                0.4199078   0.2422819   0.5975337
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    NA                0.4292026   0.3483342   0.5100710
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2600632   0.2503533   0.2697730
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.3103600   0.2919817   0.3287384
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.4190770   0.3963219   0.4418322
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4641956   0.4228194   0.5055718
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1900704   0.1170305   0.2631104
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2383958   0.1530959   0.3236958
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    NA                0.3435109   0.2587647   0.4282572
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    NA                0.3925727   0.3118806   0.4732648
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     1                    NA                0.6723502   0.5965897   0.7481106
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     0                    NA                0.5214074   0.4293480   0.6134667
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1778834   0.1397983   0.2159686
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2865305   0.1907829   0.3822780
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1280027   0.1210328   0.1349727
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1812725   0.1659790   0.1965660
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0864668   0.0729705   0.0999632
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1172702   0.0920201   0.1425203
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4730851   0.3704180   0.5757522
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.3545696   0.2439094   0.4652299
6-24 months                  ki0047075b-MAL-ED     NEPAL        1                    NA                0.2758621   0.1127740   0.4389501
6-24 months                  ki0047075b-MAL-ED     NEPAL        0                    NA                0.1987952   0.1379277   0.2596626
6-24 months                  ki0047075b-MAL-ED     PERU         1                    NA                0.3605599   0.2505943   0.4705256
6-24 months                  ki0047075b-MAL-ED     PERU         0                    NA                0.4383588   0.3233922   0.5533254
6-24 months                  ki1000109-EE          PAKISTAN     1                    NA                0.6948670   0.5565141   0.8332198
6-24 months                  ki1000109-EE          PAKISTAN     0                    NA                0.6531253   0.5134873   0.7927633
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5538800   0.4991280   0.6086319
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5831990   0.4580532   0.7083448
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                0.4189985   0.2322287   0.6057683
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    NA                0.4644019   0.3795401   0.5492637
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2100834   0.1989005   0.2212663
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2228842   0.2005820   0.2451863
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3646345   0.3417540   0.3875151
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3963516   0.3500082   0.4426951


### Parameter: E(Y)


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.5311005   0.4632825   0.5989184
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.2606635   0.2012891   0.3200380
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         NA                   NA                0.5952381   0.5345146   0.6559615
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     NA                   NA                0.8693878   0.8271061   0.9116694
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.6455696   0.6024620   0.6886773
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       NA                   NA                0.4228571   0.3494545   0.4962598
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2699052   0.2606917   0.2791188
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.4276032   0.4069572   0.4482492
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.2105263   0.1551227   0.2659300
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         NA                   NA                0.3611111   0.3016895   0.4205327
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     NA                   NA                0.6081633   0.5469119   0.6694146
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1983122   0.1623791   0.2342454
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1379748   0.1313000   0.1446495
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0927295   0.0806900   0.1047690
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4213836   0.3443902   0.4983771
6-24 months                  ki0047075b-MAL-ED     NEPAL        NA                   NA                0.2102564   0.1529155   0.2675974
6-24 months                  ki0047075b-MAL-ED     PERU         NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months                  ki1000109-EE          PAKISTAN     NA                   NA                0.6736842   0.5789010   0.7684674
6-24 months                  ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5593668   0.5093185   0.6094150
6-24 months                  ki1148112-LCNI-5      MALAWI       NA                   NA                0.4567901   0.3798457   0.5337346
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2122010   0.2018013   0.2226006
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.3704082   0.3493754   0.3914410


### Parameter: RR


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8582824   0.6643818   1.1087731
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        0                    1                 0.8471455   0.4638473   1.5471806
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    1                 1.0790066   0.8799917   1.3230296
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     0                    1                 0.9461934   0.8544292   1.0478130
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1575292   0.9962071   1.3449752
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    1                 1.0221354   0.6435821   1.6233527
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.1934024   1.1204058   1.2711550
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1076618   1.0014304   1.2251621
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.2542499   0.7405655   2.1242454
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    1                 1.1428244   0.8338141   1.5663533
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     0                    1                 0.7754998   0.6330193   0.9500499
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.6107766   1.0843906   2.3926813
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.4161611   1.2895239   1.5552347
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.3562443   1.0401499   1.7683976
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.7494839   0.5163427   1.0878940
6-24 months                  ki0047075b-MAL-ED     NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     NEPAL        0                    1                 0.7206325   0.3703147   1.4023512
6-24 months                  ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     PERU         0                    1                 1.2157723   0.8124186   1.8193851
6-24 months                  ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000109-EE          PAKISTAN     0                    1                 0.9399285   0.7008428   1.2605760
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0529339   0.8324418   1.3318286
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    1                 1.1083617   0.6844593   1.7947971
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0609319   0.9526042   1.1815784
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0869833   0.9554763   1.2365903


### Parameter: PAR


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0339466   -0.0956180    0.0277247
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0393365   -0.1905339    0.1118610
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    NA                 0.0296604   -0.0355472    0.0948681
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     1                    NA                -0.0211240   -0.0597801    0.0175321
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0128216   -0.0071502    0.0327935
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0029494   -0.1593224    0.1652211
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0098421    0.0063348    0.0133494
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0085262   -0.0008619    0.0179143
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0204559   -0.0320936    0.0730053
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    NA                 0.0176002   -0.0456941    0.0808944
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     1                    NA                -0.0641869   -0.1160208   -0.0123530
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0204288    0.0011342    0.0397234
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0099720    0.0070185    0.0129255
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0062627    0.0005156    0.0120098
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0517014   -0.1164673    0.0130644
6-24 months                  ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0656057   -0.2138439    0.0826326
6-24 months                  ki0047075b-MAL-ED     PERU         1                    NA                 0.0354132   -0.0437212    0.1145476
6-24 months                  ki1000109-EE          PAKISTAN     1                    NA                -0.0211828   -0.1238284    0.0814629
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0054868   -0.0163725    0.0273460
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                 0.0377916   -0.1325355    0.2081187
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0021176   -0.0019094    0.0061446
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0057737   -0.0042409    0.0157882


### Parameter: PAF


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0639176   -0.1870297    0.0464261
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.1509091   -0.9047996    0.3046031
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    NA                 0.0498295   -0.0665714    0.1535270
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     1                    NA                -0.0242975   -0.0699409    0.0193987
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0198609   -0.0116430    0.0503838
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0069749   -0.4614661    0.3252673
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0364649    0.0233787    0.0493758
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0199395   -0.0022937    0.0416795
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0971654   -0.1892147    0.3145810
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    NA                 0.0487389   -0.1434899    0.2086527
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     1                    NA                -0.1055422   -0.1961042   -0.0218371
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1030133    0.0014527    0.1942444
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0722744    0.0507537    0.0933072
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0675369    0.0025145    0.1283208
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1226944   -0.2882061    0.0215519
6-24 months                  ki0047075b-MAL-ED     NEPAL        1                    NA                -0.3120269   -1.2428693    0.2324945
6-24 months                  ki0047075b-MAL-ED     PERU         1                    NA                 0.0894334   -0.1343570    0.2690735
6-24 months                  ki1000109-EE          PAKISTAN     1                    NA                -0.0314432   -0.1958108    0.1103316
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0098089   -0.0300676    0.0481416
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                 0.0827330   -0.3776910    0.3892834
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0099791   -0.0091917    0.0287857
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0155873   -0.0117974    0.0422308

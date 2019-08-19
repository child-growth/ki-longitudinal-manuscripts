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

**Intervention Variable:** predfeed6

**Adjustment Set:**

* arm
* sex
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

agecat                        studyid                    country                        predfeed6    ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       0      117     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       1        8     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       0      109     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       1        4     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       0       35     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       0      173     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       1        3     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       0       18     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       1        1     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       0      202     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       1        9     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       0       29     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       1        0     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       0      203     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       1        3     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       0      112     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       1        2     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       0      155     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       1        1     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      234     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       11     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      240     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        6     248
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       0      193     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       1       28     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       0      133     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       1       23     377
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      159     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       14     173
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       0      334     555
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       1       78     555
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       0      109     555
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       1       34     555
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       0       46     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       1        1     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       0      222     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       1        2     271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    19824   26132
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1      691   26132
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     5362   26132
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      255   26132
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3535    4692
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      149    4692
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      959    4692
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       49    4692
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       0      120     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        5     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       0      110     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       1        2     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       0       35     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       1        0     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       0      174     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       1        2     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       0       19     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       1        0     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       0      205     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       1        5     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       0       29     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       0      203     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       1        1     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       0      113     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       1        1     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       0      156     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       1        0     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      241     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1        3     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      244     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        2     248
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       0      214     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       1        7     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       0      143     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       1        9     373
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      137     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0     137
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       0      388     535
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       1       11     535
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       0      131     535
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       1        5     535
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       0      221     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    20055   25921
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1      314   25921
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     5432   25921
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      120   25921
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3626    4603
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1       14    4603
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      956    4603
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1        7    4603
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       0      121     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       1        3     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       0      108     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       1        2     234
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       0       34     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       1        1     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       0      171     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       1        1     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       0       17     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       1        1     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       0      209     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       1        4     231
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       0       29     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       1        0     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       0      203     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       1        2     234
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       0      111     267
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       1        1     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       0      154     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       1        1     267
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      234     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1        9     246
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      236     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        4     242
6-24 months                   ki1000109-EE               PAKISTAN                       1                       0      196     375
6-24 months                   ki1000109-EE               PAKISTAN                       1                       1       23     375
6-24 months                   ki1000109-EE               PAKISTAN                       0                       0      140     375
6-24 months                   ki1000109-EE               PAKISTAN                       0                       1       16     375
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      156     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       21     177
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       0      340     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       1       74     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       0      108     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       1       35     557
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       0       44     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       1        1     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       0      211     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       1        2     258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    13176   17144
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       1      403   17144
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     3416   17144
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      149   17144
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3554    4711
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      144    4711
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      966    4711
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       47    4711


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/c64e8280-cb7f-4980-8b02-309e95de9919/359a4a33-e6b9-40cd-ac51-e15d2133e82c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c64e8280-cb7f-4980-8b02-309e95de9919/359a4a33-e6b9-40cd-ac51-e15d2133e82c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c64e8280-cb7f-4980-8b02-309e95de9919/359a4a33-e6b9-40cd-ac51-e15d2133e82c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c64e8280-cb7f-4980-8b02-309e95de9919/359a4a33-e6b9-40cd-ac51-e15d2133e82c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                0.1309118    0.0868824   0.1749412
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                0.1415715    0.0872180   0.1959251
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1900827    0.1522216   0.2279438
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2321418    0.1616773   0.3026063
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0342053    0.0313173   0.0370933
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0438279    0.0377397   0.0499162
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0411118    0.0340361   0.0481875
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0468211    0.0321159   0.0615262
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                0.0316742    0.0085536   0.0547948
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                0.0592105    0.0216393   0.0967817
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0275689    0.0114881   0.0436497
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0367647    0.0051079   0.0684215
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0154172    0.0134698   0.0173645
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0216874    0.0172510   0.0261238
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0038462    0.0005634   0.0071289
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0072690   -0.0010104   0.0155483
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                0.1059710    0.0653566   0.1465853
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                0.0966203    0.0516400   0.1416007
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1780123    0.1410562   0.2149683
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2432843    0.1719772   0.3145914
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0303778    0.0272848   0.0334707
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0376026    0.0306286   0.0445765
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0396554    0.0326779   0.0466330
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0434926    0.0295024   0.0574827


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     NA                   NA                0.1352785   0.1007079   0.1698491
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2018018   0.1683814   0.2352222
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0362008   0.0335769   0.0388247
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0421995   0.0359388   0.0484602
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     NA                   NA                0.0428954   0.0223052   0.0634857
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0299065   0.0154599   0.0443532
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0167432   0.0149025   0.0185839
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0045622   0.0014549   0.0076696
6-24 months                   ki1000109-EE          PAKISTAN     NA                   NA                0.1040000   0.0730627   0.1349373
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1956912   0.1627145   0.2286679
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0321979   0.0292806   0.0351151
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0405434   0.0345125   0.0465743


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    1                 1.0814269   0.6509509   1.796578
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.2212675   0.8497916   1.755130
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.2813195   1.0890093   1.507590
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1388707   0.7941360   1.633255
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    1                 1.8693609   0.7106352   4.917446
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3335561   0.4713373   3.773035
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.4067049   1.1120117   1.779494
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.8899273   0.4513187   7.914197
6-24 months                   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE          PAKISTAN     0                    1                 0.9117622   0.4997461   1.663465
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3666715   0.9542118   1.957418
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.2378314   1.0051022   1.524449
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0967617   0.7580390   1.586839


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0043667   -0.0245779   0.0333114
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0117191   -0.0088692   0.0323074
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0019955    0.0005036   0.0034874
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0010877   -0.0023943   0.0045697
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                 0.0112212   -0.0068085   0.0292510
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0023376   -0.0066948   0.0113701
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0013260    0.0003015   0.0023505
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0007161   -0.0011592   0.0025914
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                -0.0019710   -0.0279807   0.0240388
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0176789   -0.0029572   0.0383151
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0018201    0.0001608   0.0034794
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0008880   -0.0023516   0.0041275


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0322795   -0.2068951   0.2240560
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0580724   -0.0493488   0.1544970
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0551237    0.0132083   0.0952587
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0257743   -0.0603105   0.1048701
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                 0.2615950   -0.2734458   0.5718374
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0781642   -0.2761142   0.3340868
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0791975    0.0168670   0.1375763
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1569597   -0.3595588   0.4772444
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                -0.0189516   -0.3024204   0.2028209
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0903410   -0.0208463   0.1894181
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0565281    0.0042429   0.1060679
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0219018   -0.0615925   0.0988293

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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** predfeed36

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

agecat                        studyid                    country                        predfeed36    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  -----------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       96     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       35     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       98     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       22     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       0       37     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       0      175     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       1       12     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       0       15     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       1        5     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       0      135     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       1       83     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       0       28     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       1        4     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       0      164     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       1       41     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       0      123     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       1        4     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       0      145     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       1       15     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3     281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      234     281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       44     281
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      224     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       30     256
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       0      129     371
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       1       95     371
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       0       78     371
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       1       69     371
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      117     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       56     173
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       0      190     519
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       1      228     519
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       0       48     519
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       1       53     519
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       0       42     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       1        5     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       0      204     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       1       20     271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    12649   19173
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     2566   19173
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     3044   19173
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      914   19173
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     2644    4529
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      893    4529
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      692    4529
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      300    4529
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       0      122     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        9     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       0      110     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       1        9     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       0       37     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       1        0     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       0      180     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       1        7     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       0       19     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       1        1     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       0      181     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       1       36     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       0       32     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       1        0     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       0      188     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       1       15     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       0      125     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       1        2     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       0      157     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       1        3     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3     280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      265     280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       12     280
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      246     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        8     256
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       0      188     367
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       1       36     367
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       0      108     367
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       1       35     367
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      137     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0     137
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       0      346     502
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       1       61     502
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       0       78     502
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       1       17     502
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       0      221     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    14147   19037
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1      972   19037
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     3507   19037
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      411   19037
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3405    4442
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1       89    4442
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      915    4442
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1       33    4442
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       0      100     239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       1       30     239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       0       95     239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       1       14     239
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       0       37     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       0      164     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       1        6     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       0       14     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       1        5     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       0      157     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       1       59     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       0       28     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       1        4     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       0      171     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       1       32     235
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       0      122     269
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       1        3     269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       0      131     269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       1       13     269
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      220     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       36     259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      217     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       26     245
6-24 months                   ki1000109-EE               PAKISTAN                       1                       0      149     370
6-24 months                   ki1000109-EE               PAKISTAN                       1                       1       74     370
6-24 months                   ki1000109-EE               PAKISTAN                       0                       0       98     370
6-24 months                   ki1000109-EE               PAKISTAN                       0                       1       49     370
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      121     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       56     177
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       0      222     526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       1      202     526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       0       55     526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       1       47     526
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       0       40     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       1        5     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       0      193     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       1       20     258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     9261   13741
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1723   13741
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2209   13741
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      548   13741
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     2707    4547
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      843    4547
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      710    4547
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      287    4547


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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
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
![](/tmp/49f7d029-c197-446c-b052-ea5a8d897442/38575475-9243-48bd-ae9b-ea8006212e27/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/49f7d029-c197-446c-b052-ea5a8d897442/38575475-9243-48bd-ae9b-ea8006212e27/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/49f7d029-c197-446c-b052-ea5a8d897442/38575475-9243-48bd-ae9b-ea8006212e27/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/49f7d029-c197-446c-b052-ea5a8d897442/38575475-9243-48bd-ae9b-ea8006212e27/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2629779   0.1884901   0.3374657
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1772053   0.1071890   0.2472217
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        1                    NA                0.2500000   0.0598274   0.4401726
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        0                    NA                0.3807339   0.3161412   0.4453267
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                0.4343384   0.3689931   0.4996837
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                0.4692538   0.3870960   0.5514117
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5463566   0.4984866   0.5942266
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5207363   0.4212486   0.6202240
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1704731   0.1638033   0.1771429
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2279675   0.2129184   0.2430166
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2560125   0.2389552   0.2730697
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2866749   0.2537828   0.3195670
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0687023   0.0253000   0.1121046
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0756303   0.0280293   0.1232312
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                0.1639509   0.1156245   0.2122773
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                0.2385198   0.1677107   0.3093289
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1502648   0.1154880   0.1850416
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1723935   0.0973322   0.2474548
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0645117   0.0601848   0.0688386
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1090492   0.0982236   0.1198748
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0251120   0.0191932   0.0310308
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0370181   0.0226925   0.0513437
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2244124   0.1529267   0.2958982
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1227822   0.0590689   0.1864955
6-24 months                   ki0047075b-MAL-ED     INDIA        1                    NA                0.2631579   0.0647346   0.4615812
6-24 months                   ki0047075b-MAL-ED     INDIA        0                    NA                0.2731481   0.2135999   0.3326964
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                0.3368565   0.2750115   0.3987015
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                0.3358410   0.2591835   0.4124984
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4745798   0.4269189   0.5222407
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4460696   0.3512108   0.5409284
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1597674   0.1522608   0.1672741
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1881630   0.1719411   0.2043849
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2404708   0.2236016   0.2573400
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2747782   0.2430266   0.3065298


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.2270916   0.1751587   0.2790245
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        NA                   NA                0.3697479   0.3082891   0.4312067
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     NA                   NA                0.4420485   0.3914450   0.4926520
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5414258   0.4985159   0.5843357
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       NA                   NA                0.0922509   0.0577338   0.1267680
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1815052   0.1751641   0.1878464
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2634136   0.2482170   0.2786101
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0720000   0.0398938   0.1041062
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     NA                   NA                0.1934605   0.1529920   0.2339289
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1553785   0.1236568   0.1871001
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0726480   0.0685748   0.0767212
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0274651   0.0220747   0.0328555
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1841004   0.1348619   0.2333390
6-24 months                   ki0047075b-MAL-ED     INDIA        NA                   NA                0.2723404   0.2153029   0.3293779
6-24 months                   ki1000109-EE          PAKISTAN     NA                   NA                0.3324324   0.2843668   0.3804980
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4733840   0.4306748   0.5160933
6-24 months                   ki1148112-LCNI-5      MALAWI       NA                   NA                0.0968992   0.0607324   0.1330660
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1652718   0.1582686   0.1722751
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2485155   0.2334424   0.2635886


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.6738412   0.4164580   1.090295
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        0                    1                 1.5229358   0.6985563   3.320181
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    1                 1.0803876   0.8594519   1.358118
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9531070   0.7723987   1.176093
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    1                 0.8392857   0.3311837   2.126918
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.3372637   1.2436613   1.437911
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1197692   0.9818321   1.277085
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.1008403   0.4512722   2.685407
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    1                 1.4548245   0.9583199   2.208568
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1472650   0.7008192   1.878112
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.6903782   1.5008245   1.903873
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.4741210   0.9252150   2.348679
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.5471276   0.2991190   1.000767
6-24 months                   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED     INDIA        0                    1                 1.0379630   0.4734863   2.275393
6-24 months                   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE          PAKISTAN     0                    1                 0.9969852   0.7443344   1.335394
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9399254   0.7430569   1.188953
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    1                 0.8450704   0.3342527   2.136539
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.1777306   1.0713932   1.294622
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1426677   1.0001905   1.305441


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0358863   -0.0839783   0.0122058
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        1                    NA                 0.1197479   -0.0642754   0.3037711
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0077101   -0.0336327   0.0490529
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0049308   -0.0261698   0.0163082
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0141321   -0.0934107   0.0651466
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0110321    0.0077773   0.0142869
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0074011   -0.0006950   0.0154972
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0032977   -0.0273680   0.0339634
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                 0.0295096   -0.0040378   0.0630570
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0051137   -0.0109976   0.0212250
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0081363    0.0057817   0.0104908
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0023531   -0.0009006   0.0056068
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0403120   -0.0838044   0.0031804
6-24 months                   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0091825   -0.1812343   0.1995994
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                -0.0044241   -0.0432141   0.0343660
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0011958   -0.0224755   0.0200840
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0142119   -0.0967920   0.0683682
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0055044    0.0019903   0.0090184
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0080447    0.0000699   0.0160196


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1580255   -0.3894219    0.0348339
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        1                    NA                 0.3238636   -0.4103559    0.6758546
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0174418   -0.0807030    0.1066734
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0091070   -0.0491146    0.0293748
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                -0.1531915   -1.4265796    0.4519650
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0607813    0.0428810    0.0783468
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0280969   -0.0031361    0.0583574
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0458015   -0.4903867    0.3890883
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                 0.1525354   -0.0373100    0.3076359
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0329113   -0.0763716    0.1310987
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1119960    0.0795190    0.1433272
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0856771   -0.0396443    0.1958920
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.2189675   -0.4752585   -0.0072009
6-24 months                   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0337171   -0.9922711    0.5313376
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                -0.0133082   -0.1369896    0.0969192
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0025260   -0.0485027    0.0414346
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                -0.1466667   -1.4083049    0.4540374
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0333049    0.0119073    0.0542392
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0323712   -0.0002662    0.0639437

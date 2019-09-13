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

agecat                        studyid                    country                        predfeed36    ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  -----------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                        0      124     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                        1        7     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                        0      115     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                        1        5     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                        0       37     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                        1        0     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                        0      184     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                        1        3     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                        0       19     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                        1        1     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                        0      209     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                        1        9     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                        0       32     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                        1        0     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                        0      202     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                        1        3     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                        0      125     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                        1        2     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                        0      159     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                        1        1     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        3     281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      267     281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1       11     281
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        2     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      248     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1        6     256
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                        0      194     371
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                        1       30     371
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                        0      126     371
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                        1       21     371
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        0      159     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        1       14     173
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                        0      337     519
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                        1       81     519
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                        0       75     519
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                        1       26     519
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                        0       46     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                        1        1     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                        0      222     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                        1        2     271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                        0    14688   19173
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                        1      527   19173
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                        0     3754   19173
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                        1      204   19173
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                        0     3393    4529
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                        1      144    4529
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                        0      944    4529
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                        1       48    4529
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                        0      126     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                        1        5     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                        0      117     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                        1        2     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                        0       37     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                        1        0     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                        0      185     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                        1        2     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                        0       20     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                        1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                        0      212     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                        1        5     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                        0       32     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                        1        0     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                        0      202     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                        1        1     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                        0      126     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                        1        1     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                        0      160     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                        1        0     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        3     280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      274     280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1        3     280
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        2     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      252     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1        2     256
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                        0      217     367
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                        1        7     367
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                        0      134     367
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                        1        9     367
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        0      137     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        1        0     137
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                        0      395     502
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                        1       12     502
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                        0       91     502
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                        1        4     502
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                        0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                        1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                        0      221     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                        1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                        0    14894   19037
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                        1      225   19037
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                        0     3828   19037
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                        1       90   19037
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                        0     3480    4442
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                        1       14    4442
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                        0      942    4442
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                        1        6    4442
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                        0      128     239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                        1        2     239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                        0      106     239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                        1        3     239
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                        0       36     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                        1        1     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                        0      169     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                        1        1     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                        0       18     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                        1        1     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                        0      212     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                        1        4     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                        0       32     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                        1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                        0      201     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                        1        2     235
6-24 months                   ki0047075b-MAL-ED          PERU                           1                        0      124     269
6-24 months                   ki0047075b-MAL-ED          PERU                           1                        1        1     269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                        0      143     269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                        1        1     269
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        3     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      247     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1        9     259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        2     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      239     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1        4     245
6-24 months                   ki1000109-EE               PAKISTAN                       1                        0      198     370
6-24 months                   ki1000109-EE               PAKISTAN                       1                        1       25     370
6-24 months                   ki1000109-EE               PAKISTAN                       0                        0      133     370
6-24 months                   ki1000109-EE               PAKISTAN                       0                        1       14     370
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                        0      156     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                        1       21     177
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                        0      349     526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                        1       75     526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                        0       75     526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                        1       27     526
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                        0       44     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                        1        1     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                        0      211     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                        1        2     258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                        0    10658   13741
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                        1      326   13741
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                        0     2634   13741
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                        1      123   13741
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                        0     3412    4547
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                        1      138    4547
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                        0      950    4547
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                        1       47    4547


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
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
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
![](/tmp/f5af9149-fe83-4bf3-8a38-84f038d6f7d9/c52bc082-c001-46c5-9151-6f200cafb339/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f5af9149-fe83-4bf3-8a38-84f038d6f7d9/c52bc082-c001-46c5-9151-6f200cafb339/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f5af9149-fe83-4bf3-8a38-84f038d6f7d9/c52bc082-c001-46c5-9151-6f200cafb339/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f5af9149-fe83-4bf3-8a38-84f038d6f7d9/c52bc082-c001-46c5-9151-6f200cafb339/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0534351    0.0148457   0.0920245
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0416667    0.0058424   0.0774909
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                0.1401303    0.0953111   0.1849495
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                0.1369824    0.0815358   0.1924289
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1942115    0.1562497   0.2321733
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2553841    0.1694250   0.3413432
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0350002    0.0316754   0.0383250
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0488812    0.0410548   0.0567077
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0413848    0.0343107   0.0484589
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0456362    0.0312627   0.0600098
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                0.0312500    0.0084336   0.0540664
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                0.0629371    0.0230796   0.1027946
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0148313    0.0127477   0.0169149
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0233072    0.0178635   0.0287509
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0040069    0.0006347   0.0073790
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0063291   -0.0019893   0.0146476
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                0.1122161    0.0708911   0.1535411
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                0.0930959    0.0471929   0.1389989
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1783296    0.1420347   0.2146246
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2806631    0.1934985   0.3678276
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0304644    0.0270347   0.0338941
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0405799    0.0324206   0.0487391
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0397748    0.0328226   0.0467270
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0441618    0.0300751   0.0582484


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0478088   0.0213607   0.0742568
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     NA                   NA                0.1374663   0.1023803   0.1725523
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2061657   0.1713275   0.2410040
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0381265   0.0350009   0.0412522
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0423935   0.0361550   0.0486320
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     NA                   NA                0.0435967   0.0226771   0.0645164
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0165467   0.0145571   0.0185364
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0045025   0.0013252   0.0076798
6-24 months                   ki1000109-EE          PAKISTAN     NA                   NA                0.1054054   0.0740740   0.1367368
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1939163   0.1600970   0.2277357
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0326759   0.0293450   0.0360069
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0406862   0.0347041   0.0466682


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.7797620   0.2537003   2.396641
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    1                 0.9775357   0.5853536   1.632477
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3149792   0.8906524   1.941465
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.3965997   1.1610492   1.679938
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1027288   0.7672693   1.584855
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    1                 2.0139860   0.7661372   5.294273
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.5714873   1.1962488   2.064430
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.5795660   0.3288833   7.586366
6-24 months                   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE          PAKISTAN     0                    1                 0.8296125   0.4492580   1.531986
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.5738442   1.0850814   2.282765
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.3320416   1.0678742   1.661558
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1102949   0.7687425   1.603599


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0056263   -0.0308105   0.0195578
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                -0.0026640   -0.0308172   0.0254891
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0119542   -0.0064339   0.0303422
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0031264    0.0013506   0.0049021
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0010086   -0.0026304   0.0046477
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                 0.0123467   -0.0056181   0.0303115
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0017154    0.0005116   0.0029193
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0004956   -0.0014306   0.0024218
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                -0.0068107   -0.0316654   0.0180439
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0155867   -0.0026842   0.0338576
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0022115    0.0004165   0.0040065
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0009113   -0.0024898   0.0043125


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1176844   -0.7848871   0.3001134
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                -0.0193794   -0.2463211   0.1662386
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0579833   -0.0352262   0.1428005
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0819995    0.0349077   0.1267934
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0237924   -0.0658349   0.1058828
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                 0.2832031   -0.2360371   0.5843185
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1036718    0.0297566   0.1719560
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1100744   -0.4255741   0.4444571
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                -0.0646146   -0.3278762   0.1464533
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0803785   -0.0179763   0.1692305
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0676804    0.0122093   0.1200363
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0223992   -0.0650298   0.1026511

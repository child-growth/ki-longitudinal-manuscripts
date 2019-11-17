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

agecat                        studyid                    country                        predfeed36    ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  -----------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                        0       80     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                        1        5     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                        0      159     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                        1        7     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                        0       29     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                        1        0     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                        0      191     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                        1        4     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                        0       17     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                        1        1     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                        0      204     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                        1       12     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                        0        8     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                        1        0     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                        0      224     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                        1        3     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                        0       80     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                        1        1     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                        0      202     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                        1        3     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        6     276
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     276
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      258     276
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1       12     276
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        6     250
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0     250
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      236     250
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1        8     250
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                        0        4       9
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                        1        0       9
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                        0        4       9
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                        1        1       9
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        0      159     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        1       14     173
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                        0      330     524
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                        1       90     524
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                        0       74     524
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                        1       30     524
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                        0       47     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                        1        0     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                        0      222     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                        1        2     271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                        0     9423   12568
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                        1      370   12568
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                        0     2679   12568
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                        1       96   12568
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                        0     3392    4559
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                        1      142    4559
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                        0      975    4559
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                        1       50    4559
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                        0       82     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                        1        3     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                        0      161     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                        1        4     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                        0       29     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                        1        0     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                        0      192     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                        1        3     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                        0       17     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                        1        1     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                        0      208     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                        1        6     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                        0        8     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                        1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                        0      224     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                        1        1     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                        0       80     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                        1        1     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                        0      205     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                        1        0     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        6     275
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     275
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      266     275
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1        3     275
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        6     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      241     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1        3     250
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                        0        4       9
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                        1        0       9
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                        0        4       9
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                        1        1       9
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        0      137     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        1        0     137
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                        0      389     510
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                        1       21     510
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                        0       92     510
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                        1        8     510
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                        0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                        1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                        0      221     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                        1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                        0     9554   12458
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                        1      157   12458
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                        0     2707   12458
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                        1       40   12458
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                        0     3463    4433
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                        1       14    4433
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                        0      950    4433
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                        1        6    4433
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                        0       79     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                        1        2     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                        0      156     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                        1        3     240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                        0       25     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                        1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                        0      181     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                        1        1     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                        0       17     232
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                        1        0     232
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                        0      209     232
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                        1        6     232
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                        0        8     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                        1        0     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                        0      224     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                        1        2     234
6-24 months                   ki0047075b-MAL-ED          PERU                           1                        0       71     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                        1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0                        0      196     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0                        1        3     270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        4     256
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     256
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      242     256
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1       10     256
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        5     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      233     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1        5     243
6-24 months                   ki1000109-EE               PAKISTAN                       1                        0        4       9
6-24 months                   ki1000109-EE               PAKISTAN                       1                        1        0       9
6-24 months                   ki1000109-EE               PAKISTAN                       0                        0        5       9
6-24 months                   ki1000109-EE               PAKISTAN                       0                        1        0       9
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                        0      156     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                        1       21     177
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                        0      347     526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                        1       75     526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                        0       78     526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                        1       26     526
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                        0       45     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                        1        0     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                        0      211     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                        1        2     258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                        0     6579    8820
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                        1      228    8820
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                        0     1953    8820
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                        1       60    8820
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                        0     3410    4578
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                        1      138    4578
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                        0      981    4578
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                        1       49    4578


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
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
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
![](/tmp/4fa33dab-d735-4c6a-ace9-79b9b19c610c/b4ab796c-260a-46fe-862b-65bbbd66544d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4fa33dab-d735-4c6a-ace9-79b9b19c610c/b4ab796c-260a-46fe-862b-65bbbd66544d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4fa33dab-d735-4c6a-ace9-79b9b19c610c/b4ab796c-260a-46fe-862b-65bbbd66544d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4fa33dab-d735-4c6a-ace9-79b9b19c610c/b4ab796c-260a-46fe-862b-65bbbd66544d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0588235    0.0087029   0.1089442
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0421687    0.0115349   0.0728024
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2144458    0.1750747   0.2538169
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2844717    0.1961297   0.3728137
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0377830    0.0334250   0.0421409
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0345993    0.0272121   0.0419865
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0408852    0.0339090   0.0478614
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0447693    0.0309103   0.0586282
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0512195    0.0298604   0.0725786
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0800000    0.0267753   0.1332247
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0161867    0.0130979   0.0192755
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0145623    0.0100251   0.0190994
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0040265    0.0006639   0.0073890
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0062762   -0.0013554   0.0139077
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1786956    0.1421529   0.2152384
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2615309    0.1785655   0.3444964
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0333715    0.0285223   0.0382207
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0299100    0.0208641   0.0389559
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0399971    0.0332374   0.0467568
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0441859    0.0308131   0.0575587


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0478088   0.0213607   0.0742568
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2290076   0.1929956   0.2650196
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0370783   0.0333023   0.0408543
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0421145   0.0360504   0.0481786
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0568627   0.0367445   0.0769810
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0158131   0.0132056   0.0184207
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0045116   0.0014181   0.0076051
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1920152   0.1583224   0.2257081
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0326531   0.0283158   0.0369903
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0408475   0.0350297   0.0466653


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.7168675   0.2339692   2.196439
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3265437   0.9243237   1.903790
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9157374   0.7188193   1.166600
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0950001   0.7660825   1.565138
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.5619048   0.7122754   3.425004
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.8996473   0.6244855   1.296051
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.5587268   0.3534300   6.874429
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4635552   1.0028154   2.135980
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.8962733   0.6438763   1.247609
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1047278   0.7787966   1.567063


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0110148   -0.0498757   0.0278462
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0145618   -0.0046887   0.0338124
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0007047   -0.0025938   0.0011845
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0012293   -0.0023092   0.0047679
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0056432   -0.0056457   0.0169322
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0003735   -0.0015808   0.0008338
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0004852   -0.0013235   0.0022938
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0133196   -0.0049942   0.0316334
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0007184   -0.0030209   0.0015840
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0008504   -0.0025385   0.0042393


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.2303922   -1.3650799   0.3599096
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0635867   -0.0240870   0.1437544
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0190050   -0.0711227   0.0305767
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0291901   -0.0586233   0.1097193
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0992431   -0.1193952   0.2751773
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0236212   -0.1021361   0.0493004
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1075352   -0.3932908   0.4283366
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0693673   -0.0304494   0.1595150
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0220022   -0.0951622   0.0462706
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0208199   -0.0658480   0.1004405

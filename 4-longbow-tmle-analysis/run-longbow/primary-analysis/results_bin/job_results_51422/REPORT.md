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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

* arm
* sex
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
* month
* brthmon
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
* delta_month
* delta_brthmon
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

agecat                        studyid                    country                        exclfeed36    ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  -----------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                        0       60     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                        1        4     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                        0      179     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                        1        8     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                        0       18     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                        1        0     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                        0      203     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                        1        3     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                        0        6     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                        1        1     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                        0      222     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                        1        9     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                        0       15     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                        1        0     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                        0      219     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                        1        3     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                        0       16     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                        1        0     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                        0      268     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                        1        3     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        0     281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      270     281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1       11     281
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        1     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      249     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1        6     256
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                        0        9       9
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                        1        0       9
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                        0        0       9
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                        1        0       9
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                        0        0       4
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                        1        0       4
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                        0        3       4
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                        1        1       4
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                        0      194     371
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                        1       30     371
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                        0      126     371
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                        1       21     371
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        0      159     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        1       14     173
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                        0      168     635
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                        1        3     635
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                        0      450     635
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                        1       14     635
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                        0      543    1976
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                        1       80    1976
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                        0     1113    1976
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                        1      240    1976
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                        0      337     519
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                        1       81     519
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                        0       75     519
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                        1       26     519
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                        0       46     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                        1        1     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                        0      222     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                        1        2     271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                        0    14666   19173
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                        1      523   19173
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                        0     3776   19173
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                        1      208   19173
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                        0     3378    4529
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                        1      144    4529
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                        0      959    4529
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                        1       48    4529
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                        0       61     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                        1        3     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                        0      182     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                        1        4     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                        0       18     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                        1        0     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                        0      204     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                        1        2     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                        0        7     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                        1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                        0      225     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                        1        5     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                        0       15     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                        1        0     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                        0      219     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                        1        1     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                        0       16     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                        1        0     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                        0      270     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                        1        1     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        0     280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      277     280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1        3     280
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        1     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      253     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1        2     256
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                        0        8       8
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                        1        0       8
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                        0        0       8
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                        1        0       8
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                        0        0       4
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                        1        0       4
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                        0        4       4
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                        1        0       4
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                        0      217     367
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                        1        7     367
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                        0      134     367
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                        1        9     367
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        0      137     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        1        0     137
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                        0      171     631
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                        1        0     631
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                        0      456     631
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                        1        4     631
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                        0      601    1967
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                        1       21    1967
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                        0     1277    1967
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                        1       68    1967
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                        0      395     502
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                        1       12     502
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                        0       91     502
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                        1        4     502
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                        0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                        1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                        0      221     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                        1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                        0    14870   19037
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                        1      223   19037
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                        0     3852   19037
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                        1       92   19037
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                        0     3466    4442
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                        1       14    4442
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                        0      956    4442
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                        1        6    4442
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                        0       62     239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                        1        1     239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                        0      172     239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                        1        4     239
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                        0       17     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                        1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                        0      188     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                        1        2     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                        0        6     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                        1        1     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                        0      224     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                        1        4     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                        0       15     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                        1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                        0      218     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                        1        2     235
6-24 months                   ki0047075b-MAL-ED          PERU                           1                        0       16     269
6-24 months                   ki0047075b-MAL-ED          PERU                           1                        1        0     269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                        0      251     269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                        1        2     269
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      250     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1        9     259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        1     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      240     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1        4     245
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                        0        9       9
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                        1        0       9
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                        0        0       9
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                        1        0       9
6-24 months                   ki1000108-IRC              INDIA                          1                        0        0       4
6-24 months                   ki1000108-IRC              INDIA                          1                        1        0       4
6-24 months                   ki1000108-IRC              INDIA                          0                        0        3       4
6-24 months                   ki1000108-IRC              INDIA                          0                        1        1       4
6-24 months                   ki1000109-EE               PAKISTAN                       1                        0      198     370
6-24 months                   ki1000109-EE               PAKISTAN                       1                        1       25     370
6-24 months                   ki1000109-EE               PAKISTAN                       0                        0      133     370
6-24 months                   ki1000109-EE               PAKISTAN                       0                        1       14     370
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                        0      156     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                        1       21     177
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                        0      157     613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                        1        3     613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                        0      443     613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                        1       10     613
6-24 months                   ki1101329-Keneba           GAMBIA                         1                        0      517    1904
6-24 months                   ki1101329-Keneba           GAMBIA                         1                        1       62    1904
6-24 months                   ki1101329-Keneba           GAMBIA                         0                        0     1148    1904
6-24 months                   ki1101329-Keneba           GAMBIA                         0                        1      177    1904
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                        0      349     526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                        1       75     526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                        0       75     526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                        1       27     526
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                        0       44     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                        1        1     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                        0      211     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                        1        2     258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                        0    10640   13741
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                        1      324   13741
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                        0     2652   13741
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                        1      125   13741
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                        0     3398    4547
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                        1      138    4547
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                        0      964    4547
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                        1       47    4547


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/7c46d80b-8b8c-4ae3-90b7-a8a26544e945/200722ec-b388-4cdc-a14d-6d265d466489/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7c46d80b-8b8c-4ae3-90b7-a8a26544e945/200722ec-b388-4cdc-a14d-6d265d466489/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7c46d80b-8b8c-4ae3-90b7-a8a26544e945/200722ec-b388-4cdc-a14d-6d265d466489/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7c46d80b-8b8c-4ae3-90b7-a8a26544e945/200722ec-b388-4cdc-a14d-6d265d466489/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                0.1363262    0.0914684   0.1811840
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                0.1394257    0.0838775   0.1949738
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                0.1267167    0.1006296   0.1528038
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    NA                0.1782668    0.1579741   0.1985595
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1954698    0.1573564   0.2335833
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2554196    0.1678832   0.3429559
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0348581    0.0315210   0.0381951
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0496567    0.0418751   0.0574383
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0416943    0.0346222   0.0487664
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0462486    0.0313207   0.0611765
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                0.0312500    0.0084336   0.0540664
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                0.0629371    0.0230796   0.1027946
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                0.0349863    0.0208041   0.0491685
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    NA                0.0509178    0.0392150   0.0626206
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0146835    0.0126132   0.0167538
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0237349    0.0181148   0.0293550
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0040230    0.0006374   0.0074086
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0062370   -0.0019618   0.0144358
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                0.1153046    0.0734184   0.1571908
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                0.0934727    0.0469043   0.1400411
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                0.1047439    0.0797314   0.1297564
6-24 months                   ki1101329-Keneba      GAMBIA       0                    NA                0.1342175    0.1159242   0.1525109
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1772077    0.1409130   0.2135025
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2639854    0.1747559   0.3532149
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0305783    0.0271511   0.0340055
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0408827    0.0327484   0.0490170
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0399258    0.0330086   0.0468431
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0434304    0.0301698   0.0566911


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     NA                   NA                0.1374663   0.1023803   0.1725523
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       NA                   NA                0.1619433   0.1456960   0.1781907
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2061657   0.1713275   0.2410040
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0381265   0.0350009   0.0412522
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0423935   0.0361550   0.0486320
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     NA                   NA                0.0435967   0.0226771   0.0645164
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       NA                   NA                0.0452466   0.0360591   0.0544340
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0165467   0.0145571   0.0185364
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0045025   0.0013252   0.0076798
6-24 months                   ki1000109-EE          PAKISTAN     NA                   NA                0.1054054   0.0740740   0.1367368
6-24 months                   ki1101329-Keneba      GAMBIA       NA                   NA                0.1255252   0.1106396   0.1404109
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1939163   0.1600970   0.2277357
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0326759   0.0293450   0.0360069
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0406862   0.0347041   0.0466682


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    1                 1.0227357   0.6119178   1.709361
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    1                 1.4068138   1.1130165   1.778163
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3066956   0.8807563   1.938622
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.4245408   1.1883013   1.707746
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1092295   0.7672365   1.603665
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    1                 2.0139860   0.7661372   5.294273
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    1                 1.4553629   0.9129978   2.319919
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.6164323   1.2248448   2.133212
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.5503416   0.3227693   7.446678
6-24 months                   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE          PAKISTAN     0                    1                 0.8106588   0.4386139   1.498283
6-24 months                   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba      GAMBIA       0                    1                 1.2813873   0.9737851   1.686156
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4896946   1.0025916   2.213453
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.3369821   1.0748438   1.663052
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0877776   0.7637675   1.549241


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0011401   -0.0270277   0.0293079
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.0352266    0.0126975   0.0577558
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0106959   -0.0077919   0.0291837
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0032685    0.0014828   0.0050541
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0006991   -0.0029119   0.0043102
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                 0.0123467   -0.0056181   0.0303115
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.0102602   -0.0023380   0.0228584
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0018632    0.0006560   0.0030705
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0004795   -0.0014520   0.0024110
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                -0.0098992   -0.0350471   0.0152487
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.0207813   -0.0007209   0.0422834
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0167086   -0.0017655   0.0351827
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0020976    0.0003070   0.0038882
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0007603   -0.0025534   0.0040740


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0082937   -0.2193158   0.1934154
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.2175244    0.0664727   0.3441347
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0518799   -0.0418734   0.1371968
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0857268    0.0383285   0.1307890
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0164914   -0.0724083   0.0980216
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                 0.2832031   -0.2360371   0.5843185
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.2267627   -0.1018532   0.4573725
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1126027    0.0386796   0.1808412
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1064943   -0.4313125   0.4422235
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                -0.0939155   -0.3594513   0.1197543
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.1655547   -0.0237774   0.3198726
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0861640   -0.0133205   0.1758815
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0641938    0.0088405   0.1164556
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0186875   -0.0663649   0.0969561

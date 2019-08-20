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

agecat                        studyid                    country                        exclfeed36    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  -----------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       47     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       17     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       0      147     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       40     251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       0       18     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       0      194     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       1       12     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       0        5     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       1        2     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       0      145     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       1       86     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       0       14     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       1        1     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       0      178     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       1       44     237
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       0       16     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       1        0     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       0      252     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       1       19     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      237     281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       44     281
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      225     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       30     256
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        7       9
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        2       9
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       9
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       9
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                       0        0       4
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                       1        0       4
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                       0        1       4
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                       1        3       4
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       0      129     371
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       1       95     371
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       0       78     371
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       1       69     371
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      117     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       56     173
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                       0      146     635
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                       1       25     635
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                       0      369     635
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                       1       95     635
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                       0      405    1976
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                       1      218    1976
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                       0      776    1976
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                       1      577    1976
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       0      190     519
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       1      228     519
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       0       48     519
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       1       53     519
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       0       42     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       1        5     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       0      204     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       1       20     271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    12630   19173
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     2559   19173
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     3063   19173
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      921   19173
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     2632    4529
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      890    4529
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      704    4529
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      303    4529
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       0       59     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        5     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       0      173     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       1       13     250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       0       18     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       1        0     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       0      199     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       1        7     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       0        6     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       1        1     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       0      194     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       1       36     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       0       15     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       1        0     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       0      205     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       1       15     235
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       0       16     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       1        0     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       0      266     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       1        5     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      268     280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       12     280
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      247     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        8     256
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        7       8
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        1       8
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       8
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       8
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                       0        0       4
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                       1        0       4
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                       0        3       4
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                       1        1       4
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       0      188     367
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       1       36     367
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       0      108     367
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       1       35     367
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      137     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0     137
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                       0      167     631
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                       1        4     631
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                       0      430     631
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                       1       30     631
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                       0      553    1967
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                       1       69    1967
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                       0     1138    1967
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                       1      207    1967
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       0      346     502
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       1       61     502
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       0       78     502
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       1       17     502
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       0      221     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    14124   19037
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1      969   19037
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     3530   19037
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      414   19037
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3391    4442
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1       89    4442
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      929    4442
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1       33    4442
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       0       47     239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       1       16     239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       0      148     239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       1       28     239
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       0       17     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       0      184     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       1        6     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       0        5     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       1        2     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       0      166     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       1       62     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       0       14     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       1        1     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       0      185     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       1       35     235
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       0       16     269
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       1        0     269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       0      237     269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       1       16     269
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      223     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       36     259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      218     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       26     245
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        8       9
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        1       9
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       9
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       9
6-24 months                   ki1000108-IRC              INDIA                          1                       0        0       4
6-24 months                   ki1000108-IRC              INDIA                          1                       1        0       4
6-24 months                   ki1000108-IRC              INDIA                          0                       0        2       4
6-24 months                   ki1000108-IRC              INDIA                          0                       1        2       4
6-24 months                   ki1000109-EE               PAKISTAN                       1                       0      149     370
6-24 months                   ki1000109-EE               PAKISTAN                       1                       1       74     370
6-24 months                   ki1000109-EE               PAKISTAN                       0                       0       98     370
6-24 months                   ki1000109-EE               PAKISTAN                       0                       1       49     370
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      121     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       56     177
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                       0      138     613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                       1       22     613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                       0      376     613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                       1       77     613
6-24 months                   ki1101329-Keneba           GAMBIA                         1                       0      397    1904
6-24 months                   ki1101329-Keneba           GAMBIA                         1                       1      182    1904
6-24 months                   ki1101329-Keneba           GAMBIA                         0                       0      863    1904
6-24 months                   ki1101329-Keneba           GAMBIA                         0                       1      462    1904
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       0      222     526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       1      202     526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       0       55     526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       1       47     526
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       0       40     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       1        5     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       0      193     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       1       20     258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     9246   13741
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1718   13741
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2224   13741
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      553   13741
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     2696    4547
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      840    4547
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      721    4547
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      290    4547


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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/25575b37-6f55-45eb-aec7-b7a6c060341d/52148616-0209-4b14-a62b-fb898d1909ac/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/25575b37-6f55-45eb-aec7-b7a6c060341d/52148616-0209-4b14-a62b-fb898d1909ac/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/25575b37-6f55-45eb-aec7-b7a6c060341d/52148616-0209-4b14-a62b-fb898d1909ac/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/25575b37-6f55-45eb-aec7-b7a6c060341d/52148616-0209-4b14-a62b-fb898d1909ac/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2646295   0.1549913   0.3742678
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2157243   0.1567683   0.2746804
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                0.4297066   0.3649822   0.4944309
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                0.4671681   0.3860645   0.5482718
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1367591   0.0834847   0.1900334
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.2060495   0.1694068   0.2426921
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                0.3524839   0.3151764   0.3897913
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    NA                0.4265712   0.4003819   0.4527606
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5471167   0.4992725   0.5949610
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5268073   0.4284692   0.6251455
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1702227   0.1635376   0.1769079
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2291179   0.2143432   0.2438926
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2548877   0.2377911   0.2719842
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2879903   0.2561863   0.3197944
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0781250   0.0122441   0.1440059
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0698925   0.0331775   0.1066075
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                0.1649021   0.1164883   0.2133159
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                0.2356204   0.1651355   0.3061054
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                0.1106434   0.0860711   0.1352157
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    NA                0.1537590   0.1345136   0.1730045
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1502512   0.1155150   0.1849873
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1881472   0.1100693   0.2662250
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0643570   0.0600149   0.0686991
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1084955   0.0973467   0.1196444
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0253417   0.0194281   0.0312552
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0353569   0.0213500   0.0493637
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2679899   0.1583194   0.3776603
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1602983   0.1058909   0.2147058
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                0.3357289   0.2736737   0.3977841
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                0.3269783   0.2499540   0.4040025
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1377059   0.0843419   0.1910699
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1730878   0.1386541   0.2075215
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                0.3140467   0.2762365   0.3518569
6-24 months                   ki1101329-Keneba      GAMBIA       0                    NA                0.3496790   0.3241077   0.3752502
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4769018   0.4293052   0.5244985
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4674716   0.3696524   0.5652907
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1598313   0.1523466   0.1673160
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1863095   0.1703303   0.2022886
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2394796   0.2225396   0.2564197
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2722190   0.2407707   0.3036674


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.2270916   0.1751587   0.2790245
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     NA                   NA                0.4420485   0.3914450   0.4926520
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1889764   0.1585028   0.2194500
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       NA                   NA                0.4023279   0.3807014   0.4239544
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5414258   0.4985159   0.5843357
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       NA                   NA                0.0922509   0.0577338   0.1267680
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1815052   0.1751641   0.1878464
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2634136   0.2482170   0.2786101
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0720000   0.0398938   0.1041062
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     NA                   NA                0.1934605   0.1529920   0.2339289
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       NA                   NA                0.1403152   0.1249627   0.1556677
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1553785   0.1236568   0.1871001
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0726480   0.0685748   0.0767212
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0274651   0.0220747   0.0328555
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1841004   0.1348619   0.2333390
6-24 months                   ki1000109-EE          PAKISTAN     NA                   NA                0.3324324   0.2843668   0.3804980
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1615008   0.1323459   0.1906557
6-24 months                   ki1101329-Keneba      GAMBIA       NA                   NA                0.3382353   0.3169789   0.3594917
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4733840   0.4306748   0.5160933
6-24 months                   ki1148112-LCNI-5      MALAWI       NA                   NA                0.0968992   0.0607324   0.1330660
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1652718   0.1582686   0.1722751
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2485155   0.2334424   0.2635886


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8151937   0.4985631   1.332912
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    1                 1.0871794   0.8645292   1.367171
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.5066603   0.9829082   2.309499
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    1                 1.2101866   1.0717686   1.366481
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9628792   0.7835717   1.183218
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    1                 0.8392857   0.3311837   2.126918
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.3459888   1.2526921   1.446234
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1298715   0.9949217   1.283126
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8946237   0.3312567   2.416106
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    1                 1.4288507   0.9408043   2.170073
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    1                 1.3896811   1.0780918   1.791326
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.2522178   0.7785901   2.013960
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.6858389   1.4919526   1.904922
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.3952066   0.8712367   2.234297
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.5981507   0.3509397   1.019503
6-24 months                   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE          PAKISTAN     0                    1                 0.9739354   0.7223124   1.313213
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.2569379   0.8148006   1.938993
6-24 months                   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba      GAMBIA       0                    1                 1.1134617   0.9676799   1.281205
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9802259   0.7772043   1.236281
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    1                 0.8450704   0.3342527   2.136539
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.1656634   1.0612420   1.280359
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1367107   0.9949081   1.298724


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0375379   -0.1310953   0.0560194
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0123420   -0.0287627   0.0534467
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0522173    0.0048335   0.0996012
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.0498441    0.0187219   0.0809663
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0056909   -0.0269228   0.0155410
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0141321   -0.0934107   0.0651466
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0112825    0.0080115   0.0145536
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0085259    0.0005085   0.0165432
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0061250   -0.0622398   0.0499898
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                 0.0285584   -0.0050421   0.0621589
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.0296718    0.0083798   0.0509638
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0051273   -0.0109048   0.0211595
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0082910    0.0059193   0.0106626
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0021234   -0.0011328   0.0053796
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0838895   -0.1749149   0.0071359
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                -0.0032965   -0.0423289   0.0357360
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0237949   -0.0228962   0.0704861
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.0241886   -0.0075474   0.0559246
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0035178   -0.0245654   0.0175297
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0142119   -0.0967920   0.0683682
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0054405    0.0019246   0.0089565
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0090359    0.0009910   0.0170808


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1652985   -0.6588118    0.1813896
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0279199   -0.0696685    0.1166051
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.2763166   -0.0216150    0.4873630
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.1238892    0.0429433    0.1979888
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0105110   -0.0505071    0.0279624
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                -0.1531915   -1.4265796    0.4519650
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0621608    0.0441643    0.0798184
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0323669    0.0014108    0.0623633
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0850694   -1.2237731    0.4705504
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                 0.1476189   -0.0424907    0.3030599
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.2114654    0.0456617    0.3484629
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0329990   -0.0757150    0.1307261
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1141256    0.0813790    0.1457048
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0773142   -0.0479920    0.1876378
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.4556724   -1.0403765   -0.0385250
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                -0.0099162   -0.1344313    0.1009322
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.1473362   -0.1960439    0.3921331
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.0715141   -0.0272295    0.1607659
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0074312   -0.0528948    0.0360693
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                -0.1466667   -1.4083049    0.4540374
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0329187    0.0115187    0.0538554
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0363595    0.0034068    0.0682226

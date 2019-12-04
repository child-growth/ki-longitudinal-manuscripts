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

**Intervention Variable:** enstunt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        enstunt    ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                     0      207     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                     1       10     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                     0       44     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                     1        2     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                     0      198     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                     1        4     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                     0       31     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                     1        0     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                     0      197     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                     1        9     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                     0       36     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                     1        4     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                     0      209     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                     1        1     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                     0       27     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                     1        2     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                     0      262     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                     1        4     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                     0       36     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                     1        0     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      260     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1       10     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       36     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        2     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      213     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        6     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       40     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        2     261
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0      249     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1       44     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       64     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       11     368
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                     0      288     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                     1       69     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                     0       44     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                     1        8     409
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                     0      183     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                     1       28     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                     0      128     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                     1       38     377
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                     0      167     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                     1       32     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                     0       61     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                     1       20     280
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                     0      982    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                     1      101    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                     0      348    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                     1       71    1502
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                     0      226     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                     1       18     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0      131     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1       22     397
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                     0      465     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                     1       43     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                     0       83     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                     1       11     602
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                     0      606     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                     1       15     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                     0       62     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                     1        4     687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      637     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       12     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       97     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1        8     754
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0     2117    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1      105    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      146    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       16    2384
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                     0     2218    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                     1      332    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                     0      267    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                     1       51    2868
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                     0      239     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                     1        0     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                     0       72     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                     1        2     313
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                     0     2434    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                     1       12    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      632    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1       13    3091
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                     0      441     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                     1      112     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                     0       88     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                     1       19     660
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                     0      149     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                     1       17     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                     0       82     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                     1       20     268
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                     0      197     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                     1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                     0       18     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                     1        0     215
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                     0    16519   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                     1      203   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                     0      154   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                     1        1   16877
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                     0    11829   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                     1      414   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     1330   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1       64   13637
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                     0     1003    1332
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                     1       10    1332
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      1                     0      302    1332
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      1                     1       17    1332
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                     0     6014    7135
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                     1      274    7135
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                     0      784    7135
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                     1       63    7135
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                     0     2617    3019
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                     1      228    3019
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    1                     0      153    3019
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    1                     1       21    3019
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                     0      527     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                     1        3     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                     0      303     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                     1        4     837
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                     0    17486   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                     1      599   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     8095   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      349   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                     0     3727    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      132    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     1437    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      100    5396
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                     0      209     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                     1        7     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                     0       46     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                     1        0     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                     0      199     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                     1        3     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                     0       31     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                     1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                     0      198     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                     1        7     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                     0       39     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                     1        0     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                     0      208     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                     1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                     0       28     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                     1        1     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                     0      265     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                     1        1     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                     0       36     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                     1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      267     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       37     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        1     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      217     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        2     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       41     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        1     261
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                     0      254     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                     1       26     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       66     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1        4     350
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                     0      285     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                     1       54     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                     0       48     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                     1        3     390
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                     0      203     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                     1        7     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                     0      152     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                     1       13     375
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                     0      188     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                     1       10     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                     0       66     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                     1       12     276
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                     0     1038    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                     1       33    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                     0      389    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                     1       13    1473
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                     0      211     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                     1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                     0      130     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        0     341
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                     0      486     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                     1        9     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                     0       89     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                     1        0     584
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                     0      613     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                     1        5     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                     0       64     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                     1        1     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      644     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        1     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      104     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1        0     749
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0     2176    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       38    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      158    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1        4    2376
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                     0     2110    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                     1       80    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                     0      219    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                     1       15    2424
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      0                     0      223     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      0                     1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      1                     0       67     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      1                     1        0     290
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                     0      509     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                     1       28     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                     0      102     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                     1        3     642
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                     0      163     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                     1        3     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                     0       95     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                     1        6     267
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                     0      197     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                     1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                     0       18     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                     1        0     215
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                     0    16326   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                     1      178   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                     0      152   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                     1        1   16657
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                     0    11935   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                     1      121   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     1309   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                     1       11   13376
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      0                     0      891    1030
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      0                     1        1    1030
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      1                     0      137    1030
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      1                     1        1    1030
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                     0     5681    6510
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                     1      105    6510
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                     0      711    6510
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                     1       13    6510
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    0                     0     2763    2998
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    0                     1       63    2998
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    1                     0      169    2998
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    1                     1        3    2998
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                     0      171     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                     1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                     0       97     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                     1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                     0    17576   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                     1      314   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                     0     8223   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                     1      121   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                     0     3551    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                     1       15    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                     0     1385    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                     1        6    4957
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                     0      198     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                     1        3     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                     0       37     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                     1        2     240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                     0      181     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                     1        1     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                     0       25     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                     1        0     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                     0      195     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                     1        2     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                     0       34     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                     1        4     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                     0      206     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                     1        1     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                     0       27     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                     1        1     235
6-24 months                   ki0047075b-MAL-ED          PERU                           0                     0      233     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0                     1        3     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                     0       34     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                     1        0     270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      222     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        9     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       27     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        1     259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      202     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        4     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       38     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        1     245
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0      275     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1       21     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       68     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1        9     373
6-24 months                   ki1000108-IRC              INDIA                          0                     0      338     410
6-24 months                   ki1000108-IRC              INDIA                          0                     1       20     410
6-24 months                   ki1000108-IRC              INDIA                          1                     0       46     410
6-24 months                   ki1000108-IRC              INDIA                          1                     1        6     410
6-24 months                   ki1000109-EE               PAKISTAN                       0                     0      185     374
6-24 months                   ki1000109-EE               PAKISTAN                       0                     1       24     374
6-24 months                   ki1000109-EE               PAKISTAN                       1                     0      138     374
6-24 months                   ki1000109-EE               PAKISTAN                       1                     1       27     374
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                     0      147     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                     1       22     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                     0       56     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                     1       11     236
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                     0      933    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                     1       73    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                     0      322    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                     1       61    1389
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                     0      219     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                     1       25     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0      132     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1       26     402
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                     0      419     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                     1       37     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                     0       75     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                     1       11     542
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                     0      543     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                     1       10     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                     0       59     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                     1        3     615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      615     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       12     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       95     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1        8     730
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0     1810    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       70    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      125    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       13    2018
6-24 months                   ki1101329-Keneba           GAMBIA                         0                     0     2156    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         0                     1      274    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         1                     0      261    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         1                     1       47    2738
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0                     0      211     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0                     1        0     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      1                     0       64     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      1                     1        2     277
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                     0     2464    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                     1       69    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      637    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1       96    3266
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                     0      400     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                     1       94     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                     0       78     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                     1       18     590
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                     0      144     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                     1       14     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                     0       79     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                     1       15     252
6-24 months                   ki1114097-CONTENT          PERU                           0                     0      197     215
6-24 months                   ki1114097-CONTENT          PERU                           0                     1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           1                     0       18     215
6-24 months                   ki1114097-CONTENT          PERU                           1                     1        0     215
6-24 months                   ki1119695-PROBIT           BELARUS                        0                     0    16432   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        0                     1       26   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        1                     0      140   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        1                     1        0   16598
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                     0     9371   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                     1      300   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     1088   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1       56   10815
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                     0      898    1220
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                     1       12    1220
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                     0      292    1220
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                     1       18    1220
6-24 months                   ki1135781-COHORTS          INDIA                          0                     0     5910    6941
6-24 months                   ki1135781-COHORTS          INDIA                          0                     1      191    6941
6-24 months                   ki1135781-COHORTS          INDIA                          1                     0      776    6941
6-24 months                   ki1135781-COHORTS          INDIA                          1                     1       64    6941
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                     0     2476    2809
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                     1      170    2809
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    1                     0      145    2809
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    1                     1       18    2809
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                     0      515     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                     1        3     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                     0      303     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                     1        5     826
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                     0    11690   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                     1      311   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     5055   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      242   17298
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                     0     3744    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      132    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     1447    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      107    5430


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
* agecat: 0-24 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 0-6 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/a2489a1e-a553-49a6-82ce-306c914085a8/53f574f9-5551-4d0f-8df3-ffaafd04bc22/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a2489a1e-a553-49a6-82ce-306c914085a8/53f574f9-5551-4d0f-8df3-ffaafd04bc22/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a2489a1e-a553-49a6-82ce-306c914085a8/53f574f9-5551-4d0f-8df3-ffaafd04bc22/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a2489a1e-a553-49a6-82ce-306c914085a8/53f574f9-5551-4d0f-8df3-ffaafd04bc22/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1506599   0.1095875   0.1917322
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1475727   0.0679758   0.2271696
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                0.1932773   0.1522665   0.2342881
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    NA                0.1538462   0.0556610   0.2520313
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                0.1372170   0.0913837   0.1830504
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    NA                0.2337025   0.1702819   0.2971231
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    NA                0.1565973   0.1059035   0.2072910
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                    NA                0.2581437   0.1601047   0.3561827
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0927861   0.0720711   0.1135011
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1705434   0.1269209   0.2141659
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0730320   0.0399487   0.1061154
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1428890   0.0866953   0.1990828
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0845387   0.0603327   0.1087447
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1120237   0.0480553   0.1759921
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0184900   0.0081188   0.0288612
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0761905   0.0254116   0.1269694
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0472610   0.0384337   0.0560883
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0972538   0.0508641   0.1436436
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    NA                0.1297412   0.1166894   0.1427930
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                    NA                0.1693083   0.1275403   0.2110762
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0049042   0.0014510   0.0083574
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0199335   0.0092634   0.0306036
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2022111   0.1686391   0.2357830
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1785967   0.1041027   0.2530906
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    NA                0.1011360   0.0549175   0.1473544
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                    NA                0.1964102   0.1175794   0.2752409
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0338223   0.0306184   0.0370262
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0456960   0.0344364   0.0569556
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0099813   0.0038294   0.0161332
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0529972   0.0274727   0.0785217
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                0.0435210   0.0384742   0.0485678
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    NA                0.0740999   0.0563458   0.0918539
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0801113   0.0701306   0.0900920
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1203956   0.0715072   0.1692841
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0331730   0.0302004   0.0361455
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0411541   0.0363844   0.0459239
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0342525   0.0276706   0.0408344
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0645501   0.0522460   0.0768542
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                0.0333333   0.0090227   0.0576440
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    NA                0.0787879   0.0376260   0.1199498
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    NA                0.0492508   0.0189722   0.0795293
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                    NA                0.1707726   0.0879559   0.2535894
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0309839   0.0180550   0.0439129
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0312140   0.0191151   0.0433128
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    NA                0.0365636   0.0286944   0.0444329
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    NA                0.0653257   0.0320468   0.0986047
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0100241   0.0082449   0.0118032
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0086537   0.0034895   0.0138179
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                0.0180890   0.0146554   0.0215226
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    NA                0.0183324   0.0085398   0.0281249
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0175241   0.0152962   0.0197519
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0143795   0.0115408   0.0172181
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0042064   0.0010934   0.0073194
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0043134   0.0002338   0.0083930
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0709459   0.0416593   0.1002326
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1168831   0.0450259   0.1887404
6-24 months                   ki1000108-IRC              INDIA                          0                    NA                0.0558659   0.0320467   0.0796851
6-24 months                   ki1000108-IRC              INDIA                          1                    NA                0.1153846   0.0284430   0.2023263
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                0.1181119   0.0748002   0.1614236
6-24 months                   ki1000109-EE               PAKISTAN                       1                    NA                0.1657056   0.1093585   0.2220526
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    NA                0.1289918   0.0782476   0.1797361
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                    NA                0.1688560   0.0770177   0.2606943
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0719296   0.0466651   0.0971940
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1606318   0.1250226   0.1962410
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1013736   0.0630987   0.1396485
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1606552   0.1024312   0.2188792
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0813647   0.0562448   0.1064846
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1283267   0.0584134   0.1982401
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0191388   0.0084070   0.0298706
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0776699   0.0259454   0.1293945
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0371608   0.0286015   0.0457200
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0844467   0.0349732   0.1339201
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    NA                0.1124718   0.0999073   0.1250363
6-24 months                   ki1101329-Keneba           GAMBIA                         1                    NA                0.1562098   0.1151762   0.1972434
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0279601   0.0169880   0.0389322
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1223117   0.0762547   0.1683688
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1905464   0.1558876   0.2252052
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1936821   0.1152844   0.2720799
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    NA                0.0893890   0.0446288   0.1341493
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                    NA                0.1590960   0.0835670   0.2346250
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0310505   0.0275942   0.0345067
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0485545   0.0360382   0.0610708
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0134739   0.0058725   0.0210753
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0586505   0.0317259   0.0855752
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                0.0312702   0.0269002   0.0356403
6-24 months                   ki1135781-COHORTS          INDIA                          1                    NA                0.0771564   0.0592500   0.0950627
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0642187   0.0548740   0.0735634
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1104114   0.0603842   0.1604386
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0259314   0.0228897   0.0289731
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0455703   0.0391206   0.0520199
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0340239   0.0275296   0.0405181
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0684814   0.0551829   0.0817800


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1494565   0.1129794   0.1859337
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.1882641   0.1503318   0.2261964
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       NA                   NA                0.1750663   0.1366545   0.2134781
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1857143   0.1400836   0.2313450
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1145140   0.0913579   0.1376700
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1007557   0.0711091   0.1304022
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0897010   0.0668555   0.1125465
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0265252   0.0150478   0.0380026
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0507550   0.0419422   0.0595679
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1335425   0.1210912   0.1459939
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0080880   0.0040249   0.0121511
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1984848   0.1680322   0.2289375
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1380597   0.0966822   0.1794372
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0350517   0.0319649   0.0381385
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0202703   0.0126995   0.0278411
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          NA                   NA                0.0472320   0.0423094   0.0521545
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0824776   0.0726632   0.0922921
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0357345   0.0331597   0.0383093
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0429948   0.0372768   0.0487128
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       NA                   NA                0.0533333   0.0305609   0.0761058
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.0797101   0.0476990   0.1117213
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0312288   0.0186884   0.0437692
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0391914   0.0314649   0.0469180
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0098684   0.0081932   0.0115436
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0181260   0.0148850   0.0213669
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0165815   0.0147663   0.0183968
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0042364   0.0017272   0.0067456
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0804290   0.0527929   0.1080650
6-24 months                   ki1000108-IRC              INDIA                          NA                   NA                0.0634146   0.0397960   0.0870333
6-24 months                   ki1000109-EE               PAKISTAN                       NA                   NA                0.1363636   0.1015372   0.1711900
6-24 months                   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1398305   0.0954893   0.1841717
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0964723   0.0729872   0.1199573
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1268657   0.0942904   0.1594410
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0885609   0.0646203   0.1125014
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0273973   0.0155476   0.0392469
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0411298   0.0324631   0.0497965
6-24 months                   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1172389   0.1051866   0.1292911
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0505205   0.0383088   0.0627322
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1898305   0.1581595   0.2215015
6-24 months                   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1150794   0.0756007   0.1545580
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0329172   0.0295545   0.0362800
6-24 months                   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0245902   0.0158961   0.0332842
6-24 months                   ki1135781-COHORTS          INDIA                          NA                   NA                0.0367382   0.0323123   0.0411641
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0669277   0.0576848   0.0761707
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0319690   0.0290813   0.0348568
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0440147   0.0381801   0.0498493


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9795088   0.5348588    1.793814
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    0                 0.7959866   0.4062748    1.559522
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    0                 1.7031591   1.1053114    2.624375
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                    0                 1.6484559   1.0041327    2.706223
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.8380274   1.4708345    2.296890
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.9565256   1.0731885    3.566934
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.3251176   0.6996269    2.509819
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 4.1206348   1.7244576    9.846361
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 2.0578030   1.2328674    3.434719
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                    0                 1.3049694   1.0001762    1.702645
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 4.0645706   2.0271826    8.149603
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.8832191   0.5638049    1.383592
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                    0                 1.9420410   1.0558029    3.572185
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.3510613   1.0376505    1.759134
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      1                    0                 5.3096351   2.4279767   11.611407
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    0                 1.7026229   1.3045601    2.222148
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.5028548   0.9828978    2.297871
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.2405923   1.0742865    1.432643
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.8845348   1.4301709    2.483250
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    0                 2.3636364   0.9637413    5.796967
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                    0                 3.4674114   1.5887145    7.567717
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.0074238   0.8300077    1.222763
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    0                 1.7866314   1.0279485    3.105264
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.8632928   0.4632113    1.608930
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    0                 1.0134537   0.5749131    1.786511
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.8205545   0.6539436    1.029614
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.0254493   0.3075485    3.419124
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.6474954   0.7856403    3.454814
6-24 months                   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1000108-IRC              INDIA                          1                    0                 2.0653846   0.8689731    4.909028
6-24 months                   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1000109-EE               PAKISTAN                       1                    0                 1.4029539   0.8499496    2.315761
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                    0                 1.3090440   0.6704319    2.555959
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 2.2331816   1.5511661    3.215065
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.5847827   0.9388233    2.675196
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.5771798   0.8432971    2.949727
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 4.0582524   1.6992153    9.692363
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 2.2724681   1.2110906    4.264017
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1101329-Keneba           GAMBIA                         1                    0                 1.3888792   1.0442898    1.847175
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 4.3745113   2.5789881    7.420100
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0164564   0.6525757    1.583239
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                    0                 1.7798156   0.8909075    3.555637
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.5637293   1.1809713    2.070541
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                    0                 4.3529069   2.1024675    9.012172
6-24 months                   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1135781-COHORTS          INDIA                          1                    0                 2.4674051   1.8820646    3.234792
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.7193029   1.0681615    2.767374
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.7573398   1.4643023    2.109020
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 2.0127470   1.5236777    2.658797


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0012034   -0.0197065   0.0172998
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                -0.0050133   -0.0186015   0.0085750
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0378493    0.0025850   0.0731135
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0291170   -0.0015970   0.0598310
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0217279    0.0128981   0.0305577
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0277236    0.0024697   0.0529775
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0051623   -0.0057412   0.0160658
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0080352    0.0006782   0.0153922
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0034940    0.0002716   0.0067165
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0038014   -0.0008990   0.0085018
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0031838    0.0013348   0.0050327
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0037262   -0.0167265   0.0092740
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0369237    0.0021140   0.0717335
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0012294    0.0000578   0.0024010
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0102889    0.0041024   0.0164755
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0037109    0.0015123   0.0059096
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0023663   -0.0005010   0.0052337
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0025615    0.0008007   0.0043223
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0087423    0.0046742   0.0128103
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0200000   -0.0011581   0.0411581
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0304594    0.0057602   0.0551586
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0002448   -0.0016692   0.0021589
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0026278   -0.0005125   0.0057681
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0001556   -0.0006707   0.0003594
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0000370   -0.0011033   0.0011772
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0009425   -0.0020520   0.0001669
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0000300   -0.0014141   0.0014742
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0094830   -0.0066466   0.0256126
6-24 months                   ki1000108-IRC              INDIA                          0                    NA                 0.0075487   -0.0040444   0.0191418
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                 0.0182517   -0.0133917   0.0498952
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0108387   -0.0181279   0.0398052
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0245427    0.0136032   0.0354822
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0254920   -0.0020216   0.0530057
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0071962   -0.0048480   0.0192404
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0082585    0.0006596   0.0158574
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0039691    0.0005188   0.0074194
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0047670    0.0000243   0.0095098
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0225604    0.0136579   0.0314630
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0007159   -0.0145283   0.0130964
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0256903   -0.0071432   0.0585239
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0018668    0.0004921   0.0032415
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0111163    0.0040855   0.0181471
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.0054680    0.0032081   0.0077278
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0027090   -0.0001711   0.0055891
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0060376    0.0038811   0.0081941
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0099909    0.0056707   0.0143110


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0080515   -0.1397725   0.1084467
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                -0.0266288   -0.1012912   0.0429717
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.2161996   -0.0066405   0.3897095
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1567839   -0.0237623   0.3054897
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1897401    0.1178836   0.2557432
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.2751571   -0.0103207   0.4799699
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0575503   -0.0713567   0.1709471
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3029276    0.0082660   0.5100400
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0688411    0.0042216   0.1292673
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0284656   -0.0073219   0.0629816
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.3936447    0.1456993   0.5696283
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0187733   -0.0863706   0.0446178
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.2674477   -0.0204097   0.4741005
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0350740    0.0011962   0.0678026
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.5075878    0.1977952   0.6977458
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0785684    0.0315008   0.1233485
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0286908   -0.0065674   0.0627139
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0716821    0.0213285   0.1194449
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2033334    0.1023945   0.2929214
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                 0.3750000   -0.1215451   0.6517082
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.3821268    0.0335909   0.6049631
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0078402   -0.0559026   0.0677349
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0670499   -0.0155344   0.1429183
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0157710   -0.0692495   0.0350327
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0020395   -0.0628941   0.0630062
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0568428   -0.1254999   0.0076260
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0070908   -0.4007295   0.2961748
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1179054   -0.1028925   0.2944998
6-24 months                   ki1000108-IRC              INDIA                          0                    NA                 0.1190374   -0.0782406   0.2802208
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                 0.1338460   -0.1286799   0.3353096
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0775130   -0.1538111   0.2624596
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2544016    0.1175155   0.3700546
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.2009372   -0.0428979   0.3877624
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0812572   -0.0635200   0.2063258
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3014354    0.0063132   0.5089071
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0965008    0.0110525   0.1745662
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0406609   -0.0005061   0.0801341
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.4465596    0.2686020   0.5812180
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0037714   -0.0792321   0.0664131
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.2232402   -0.1092401   0.4560638
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0567117    0.0144123   0.0971956
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.4520623    0.1527557   0.6456327
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.1488361    0.0876800   0.2058928
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0404766   -0.0032109   0.0822616
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1888580    0.1218057   0.2507908
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2269892    0.1242472   0.3176777

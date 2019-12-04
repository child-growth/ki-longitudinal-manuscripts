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

unadjusted

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
![](/tmp/7b1faf99-2f57-4e34-858d-4873f1fd68ef/af689c84-4423-428e-b7fc-950957326d5f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7b1faf99-2f57-4e34-858d-4873f1fd68ef/af689c84-4423-428e-b7fc-950957326d5f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7b1faf99-2f57-4e34-858d-4873f1fd68ef/af689c84-4423-428e-b7fc-950957326d5f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7b1faf99-2f57-4e34-858d-4873f1fd68ef/af689c84-4423-428e-b7fc-950957326d5f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1501706   0.1092103   0.1911310
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1466667   0.0664927   0.2268406
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                0.1932773   0.1522665   0.2342881
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    NA                0.1538462   0.0556610   0.2520313
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                0.1327014   0.0868655   0.1785373
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    NA                0.2289157   0.1649187   0.2929126
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    NA                0.1608040   0.1096737   0.2119344
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                    NA                0.2469136   0.1528379   0.3409893
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0932595   0.0731414   0.1133775
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1694511   0.1272592   0.2116429
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0737705   0.0409306   0.1066104
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1437908   0.0881229   0.1994588
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0846457   0.0604201   0.1088713
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1170213   0.0519854   0.1820571
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0184900   0.0081188   0.0288612
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0761905   0.0254116   0.1269694
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0472547   0.0384305   0.0560790
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0987654   0.0528136   0.1447173
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    NA                0.1301961   0.1171325   0.1432597
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                    NA                0.1603774   0.1200385   0.2007162
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0049060   0.0014445   0.0083675
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0201550   0.0093317   0.0309783
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2025316   0.1690106   0.2360527
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1775701   0.1051065   0.2500337
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    NA                0.1024096   0.0562018   0.1486174
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                    NA                0.1960784   0.1188848   0.2732721
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0338152   0.0306134   0.0370171
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0459110   0.0349239   0.0568982
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0098717   0.0037812   0.0159621
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0532915   0.0286338   0.0779493
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                0.0435751   0.0385288   0.0486213
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    NA                0.0743802   0.0567083   0.0920520
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0801406   0.0701621   0.0901191
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1206897   0.0722778   0.1691015
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0331214   0.0301490   0.0360937
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0413311   0.0365591   0.0461032
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0342058   0.0276809   0.0407306
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0650618   0.0527819   0.0773417
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                0.0333333   0.0090227   0.0576440
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    NA                0.0787879   0.0376260   0.1199498
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    NA                0.0505051   0.0199476   0.0810625
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                    NA                0.1538462   0.0736309   0.2340614
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0308123   0.0180811   0.0435436
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0323383   0.0192856   0.0453910
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    NA                0.0365297   0.0286709   0.0443885
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    NA                0.0641026   0.0327133   0.0954919
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0100365   0.0082571   0.0118159
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0083333   0.0034291   0.0132375
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                0.0181473   0.0147076   0.0215870
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    NA                0.0179558   0.0082824   0.0276292
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0175517   0.0153339   0.0197695
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0145014   0.0116691   0.0173338
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0042064   0.0010934   0.0073194
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0043134   0.0002338   0.0083930
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0709459   0.0416593   0.1002326
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1168831   0.0450259   0.1887404
6-24 months                   ki1000108-IRC              INDIA                          0                    NA                0.0558659   0.0320467   0.0796851
6-24 months                   ki1000108-IRC              INDIA                          1                    NA                0.1153846   0.0284430   0.2023263
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                0.1148325   0.0715511   0.1581140
6-24 months                   ki1000109-EE               PAKISTAN                       1                    NA                0.1636364   0.1071134   0.2201593
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    NA                0.1301775   0.0793370   0.1810180
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                    NA                0.1641791   0.0752900   0.2530682
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0725646   0.0479388   0.0971904
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1592689   0.1219402   0.1965976
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1024590   0.0643615   0.1405565
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1645570   0.1066705   0.2224434
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0811404   0.0560556   0.1062251
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1279070   0.0572543   0.1985596
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0191388   0.0084070   0.0298706
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0776699   0.0259454   0.1293945
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0372340   0.0286734   0.0457947
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0942029   0.0454541   0.1429517
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    NA                0.1127572   0.1001790   0.1253354
6-24 months                   ki1101329-Keneba           GAMBIA                         1                    NA                0.1525974   0.1124303   0.1927645
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0272404   0.0164220   0.0380589
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1309686   0.0834837   0.1784536
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1902834   0.1556400   0.2249268
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1875000   0.1093564   0.2656436
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    NA                0.0886076   0.0442088   0.1330064
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                    NA                0.1595745   0.0853958   0.2337531
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0310206   0.0275650   0.0344761
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0489510   0.0364474   0.0614547
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0131868   0.0057721   0.0206015
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0580645   0.0320203   0.0841087
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                0.0313063   0.0269363   0.0356764
6-24 months                   ki1135781-COHORTS          INDIA                          1                    NA                0.0761905   0.0582480   0.0941329
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0642479   0.0549038   0.0735921
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1104294   0.0623052   0.1585537
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0259145   0.0228707   0.0289583
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0456862   0.0392693   0.0521031
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0340557   0.0276115   0.0405000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0688546   0.0556858   0.0820234


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
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9766667   0.5301890    1.799128
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    0                 0.7959866   0.4062748    1.559522
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    0                 1.7250430   1.1061489    2.690211
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                    0                 1.5354938   0.9348186    2.522138
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.8169853   1.5111069    2.184779
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.9491649   1.0805196    3.516127
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.3824839   0.7398983    2.583141
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 4.1206348   1.7244576    9.846361
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 2.0900646   1.2659925    3.450550
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                    0                 1.2318140   0.9395900    1.614923
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 4.1082687   2.0078731    8.405846
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.8767523   0.5644510    1.361845
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                    0                 1.9146482   1.0520298    3.484576
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.3577028   1.0496203    1.756213
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      1                    0                 5.3984326   2.4965848   11.673176
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    0                 1.7069434   1.3104830    2.223345
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.5059740   0.9894884    2.292051
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.2478687   1.0808742    1.440664
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.9020721   1.4469923    2.500275
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    0                 2.3636364   0.9637413    5.796967
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                    0                 3.0461538   1.3705002    6.770559
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.0495251   0.8746591    1.259351
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    0                 1.7548077   1.0278927    2.995789
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.8303030   0.4490617    1.535208
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    0                 0.9894501   0.5589405    1.751549
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.8262125   0.6597953    1.034604
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.0254493   0.3075485    3.419124
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.6474954   0.7856403    3.454814
6-24 months                   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1000108-IRC              INDIA                          1                    0                 2.0653846   0.8689731    4.909028
6-24 months                   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1000109-EE               PAKISTAN                       1                    0                 1.4250000   0.8546393    2.376002
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                    0                 1.2611940   0.6469300    2.458706
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 2.1948568   1.5788788    3.051150
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.6060759   0.9626482    2.679566
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.5763671   0.8370422    2.968707
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 4.0582524   1.6992153    9.692363
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 2.5300207   1.4361480    4.457065
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1101329-Keneba           GAMBIA                         1                    0                 1.3533273   1.0168219    1.801195
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 4.8078771   2.8544952    8.097993
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.9853723   0.6252945    1.552802
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                    0                 1.8009119   0.9091921    3.567215
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.5780186   1.1942336    2.085139
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                    0                 4.4032258   2.1448490    9.039516
6-24 months                   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1135781-COHORTS          INDIA                          1                    0                 2.4337073   1.8508746    3.200071
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.7188019   1.0856804    2.721132
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.7629599   1.4692480    2.115387
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 2.0218205   1.5353859    2.662365


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0007141   -0.0190634   0.0176352
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                -0.0050133   -0.0186015   0.0085750
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0423649    0.0073693   0.0773605
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0249103   -0.0064013   0.0562218
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0212545    0.0133375   0.0291715
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0269852    0.0018512   0.0521191
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0050553   -0.0058221   0.0159327
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0080352    0.0006782   0.0153922
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0035003    0.0002784   0.0067222
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0033465   -0.0013677   0.0080607
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0031820    0.0013350   0.0050291
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0040468   -0.0170098   0.0089162
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0356501    0.0009772   0.0703230
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0012365    0.0000650   0.0024079
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0103986    0.0042349   0.0165623
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0036569    0.0014630   0.0058508
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0023370   -0.0005317   0.0052058
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0026131    0.0008475   0.0043788
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0087891    0.0047538   0.0128243
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0200000   -0.0011581   0.0411581
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0292051    0.0043308   0.0540794
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0004165   -0.0011312   0.0019641
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0026617   -0.0004787   0.0058022
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0001681   -0.0006830   0.0003468
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                -0.0000213   -0.0011631   0.0011205
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0009702   -0.0020729   0.0001326
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0000300   -0.0014141   0.0014742
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0094830   -0.0066466   0.0256126
6-24 months                   ki1000108-IRC              INDIA                          0                    NA                 0.0075487   -0.0040444   0.0191418
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                 0.0215311   -0.0099727   0.0530349
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0096530   -0.0194846   0.0387906
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0239077    0.0141026   0.0337127
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0244067   -0.0029913   0.0518046
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0074205   -0.0045625   0.0194035
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0082585    0.0006596   0.0158574
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0038958    0.0004534   0.0073381
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0044817   -0.0002766   0.0092399
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0232801    0.0145903   0.0319699
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0004529   -0.0143615   0.0134557
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0264718   -0.0060540   0.0589976
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0018967    0.0005205   0.0032728
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0114034    0.0044357   0.0183710
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.0054319    0.0031706   0.0076931
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0026798   -0.0001928   0.0055524
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0060545    0.0038844   0.0082246
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0099590    0.0056637   0.0142544


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0047782   -0.1353636   0.1107878
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                -0.0266288   -0.1012912   0.0429717
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.2419934    0.0195399   0.4139751
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1341322   -0.0496239   0.2857184
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1856063    0.1247869   0.2421993
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.2678279   -0.0145481   0.4716110
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0563575   -0.0722532   0.1695422
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3029276    0.0082660   0.5100400
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0689647    0.0043674   0.1293710
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0250591   -0.0108327   0.0596766
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.3934260    0.1446156   0.5698635
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0203884   -0.0877942   0.0428404
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.2582221   -0.0277581   0.4646265
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0352752    0.0014078   0.0679940
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.5129977    0.2066162   0.7010637
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0774241    0.0304594   0.1221138
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0283355   -0.0069366   0.0623721
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0731257    0.0226364   0.1210067
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2044214    0.1046227   0.2930965
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                 0.3750000   -0.1215451   0.6517082
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.3663912    0.0151219   0.5923758
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0133358   -0.0381419   0.0622608
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0679164   -0.0146272   0.1437447
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0170316   -0.0704882   0.0337555
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                -0.0011747   -0.0661910   0.0598770
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0585090   -0.1267797   0.0056252
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0070908   -0.4007295   0.2961748
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1179054   -0.1028925   0.2944998
6-24 months                   ki1000108-IRC              INDIA                          0                    NA                 0.1190374   -0.0782406   0.2802208
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                 0.1578947   -0.1045195   0.3579640
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0690335   -0.1635020   0.2550949
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2478191    0.1253667   0.3531276
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1923819   -0.0495168   0.3785263
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0837902   -0.0602044   0.2082278
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3014354    0.0063132   0.5089071
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0947193    0.0094706   0.1726312
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0382267   -0.0030795   0.0778320
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.4608047    0.2875717   0.5919145
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0023858   -0.0783980   0.0682686
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.2300306   -0.0986101   0.4603609
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0576193    0.0152794   0.0981387
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.4637363    0.1724366   0.6524994
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.1478536    0.0866650   0.2049429
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0400404   -0.0035321   0.0817210
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1893867    0.1219233   0.2516669
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2262653    0.1244886   0.3162105

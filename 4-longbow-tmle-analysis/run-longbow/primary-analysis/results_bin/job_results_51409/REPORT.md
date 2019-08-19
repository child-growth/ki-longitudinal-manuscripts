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
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
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
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                     0      204     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                     1        3     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                     0       25     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                     1        0     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                     0      198     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                     1        7     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                     0       38     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                     1        3     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                     0      210     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                     1        1     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                     0       26     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                     1        2     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                     0      263     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                     1        3     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                     0       36     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                     1        0     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      266     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        9     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       31     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        2     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      214     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        5     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       41     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        1     261
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0      251     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1       44     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       62     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       11     368
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                     0      291     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                     1       70     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                     0       41     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                     1        7     409
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                     0      218     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                     1       28     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                     0      108     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                     1       23     377
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                     0      167     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                     1       32     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                     0       55     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                     1       20     274
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
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                     0      607     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                     1       15     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                     0       61     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                     1        4     687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      637     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       12     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       97     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1        8     754
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0     2117    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1      105    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      146    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       16    2384
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                     0     2215    2867
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                     1      335    2867
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                     0      267    2867
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                     1       50    2867
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                     0      239     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                     1        0     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                     0       72     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                     1        2     313
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                     0     2434    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                     1       12    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      632    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1       13    3091
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                     0      427     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                     1       99     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                     0       46     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                     1       18     590
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                     0      149     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                     1       17     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                     0       82     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                     1       20     268
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         0                     0      114     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         0                     1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         1                     0        5     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         1                     1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                     0     1196    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                     1       46    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                     0      242    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                     1       16    1500
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0                     0      799     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0                     1        4     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           1                     0      122     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           1                     1        3     928
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                     0      197     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                     1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                     0       18     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                     1        0     215
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                     0    16519   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                     1      203   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                     0      154   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                     1        1   16877
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                     0    11827   13624
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                     1      405   13624
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     1328   13624
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1       64   13624
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
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                     0      526     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                     1        4     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                     0      303     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                     1        4     837
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                     0    17575   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                     1      602   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     8011   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      345   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                     0     3727    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      132    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     1437    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      100    5396
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                     0      209     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                     1        7     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                     0       46     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                     1        0     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                     0      205     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                     1        2     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                     0       25     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                     1        0     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                     0      199     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                     1        5     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                     0       41     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                     1        0     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                     0      209     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                     1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                     0       27     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                     1        1     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                     0      265     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                     1        1     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                     0       36     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                     1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      272     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       32     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        1     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      217     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        2     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       42     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0     261
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                     0      256     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                     1       26     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       64     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1        4     350
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                     0      288     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                     1       54     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                     0       45     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                     1        3     390
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                     0      236     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                     1        8     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                     0      121     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                     1        8     373
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                     0      188     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                     1       10     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                     0       62     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                     1       12     272
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
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                     0      614     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                     1        5     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                     0       63     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                     1        1     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      644     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        1     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      104     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1        0     749
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0     2176    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       38    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      158    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1        4    2376
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                     0     2092    2410
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                     1       84    2410
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                     0      219    2410
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                     1       15    2410
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      0                     0      223     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      0                     1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      1                     0       67     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      1                     1        0     290
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                     0      490     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                     1       15     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                     0       60     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                     1        2     567
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                     0      163     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                     1        3     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                     0       95     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                     1        6     267
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         0                     0      112     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         0                     1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         1                     0        5     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         1                     1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  0                     0      829     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  0                     1        5     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  1                     0      122     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  1                     1        0     956
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           0                     0      651     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           0                     1        3     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           1                     0       40     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           1                     1        1     695
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                     0      197     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                     1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                     0       18     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                     1        0     215
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                     0    16326   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                     1      178   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                     0      152   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                     1        1   16657
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                     0    11921   13363
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                     1      120   13363
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     1311   13363
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                     1       11   13363
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      0                     0      891    1030
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      0                     1        1    1030
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      1                     0      137    1030
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      1                     1        1    1030
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                     0     5682    6510
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                     1      104    6510
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
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                     0    17666   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                     1      316   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                     0     8138   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                     1      118   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                     0     3551    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                     1       15    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                     0     1385    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                     1        6    4957
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                     0      198     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                     1        3     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                     0       37     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                     1        2     240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                     0      184     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                     1        2     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                     0       21     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                     1        0     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                     0      194     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                     1        2     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                     0       36     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                     1        3     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                     0      207     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                     1        1     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                     0       26     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                     1        1     235
6-24 months                   ki0047075b-MAL-ED          PERU                           0                     0      234     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0                     1        2     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                     0       34     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                     1        0     270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      225     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        8     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       25     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        1     259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      203     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        3     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       38     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        1     245
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0      277     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1       21     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       66     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1        9     373
6-24 months                   ki1000108-IRC              INDIA                          0                     0      340     410
6-24 months                   ki1000108-IRC              INDIA                          0                     1       22     410
6-24 months                   ki1000108-IRC              INDIA                          1                     0       44     410
6-24 months                   ki1000108-IRC              INDIA                          1                     1        4     410
6-24 months                   ki1000109-EE               PAKISTAN                       0                     0      223     375
6-24 months                   ki1000109-EE               PAKISTAN                       0                     1       22     375
6-24 months                   ki1000109-EE               PAKISTAN                       1                     0      113     375
6-24 months                   ki1000109-EE               PAKISTAN                       1                     1       17     375
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                     0      147     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                     1       22     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                     0       50     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                     1       11     230
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                     0      933    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                     1       73    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                     0      322    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                     1       61    1389
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                     0      219     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                     1       25     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0      132     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1       26     402
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                     0      419     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                     1       36     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                     0       75     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                     1       11     541
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                     0      544     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                     1       10     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                     0       58     615
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
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                     0      432     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                     1       93     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                     0       45     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                     1       20     590
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                     0      144     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                     1       14     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                     0       79     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                     1       15     252
6-24 months                   ki1114097-CMIN             BRAZIL                         0                     0      114     119
6-24 months                   ki1114097-CMIN             BRAZIL                         0                     1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         1                     0        5     119
6-24 months                   ki1114097-CMIN             BRAZIL                         1                     1        0     119
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                     0     1180    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                     1       45    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                     0      235    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                     1       22    1482
6-24 months                   ki1114097-CMIN             PERU                           0                     0      757     878
6-24 months                   ki1114097-CMIN             PERU                           0                     1        2     878
6-24 months                   ki1114097-CMIN             PERU                           1                     0      116     878
6-24 months                   ki1114097-CMIN             PERU                           1                     1        3     878
6-24 months                   ki1114097-CONTENT          PERU                           0                     0      197     215
6-24 months                   ki1114097-CONTENT          PERU                           0                     1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           1                     0       18     215
6-24 months                   ki1114097-CONTENT          PERU                           1                     1        0     215
6-24 months                   ki1119695-PROBIT           BELARUS                        0                     0    16432   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        0                     1       26   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        1                     0      140   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        1                     1        0   16598
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                     0     9268   10694
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                     1      292   10694
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     1078   10694
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1       56   10694
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                     0      898    1220
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                     1       12    1220
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                     0      292    1220
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                     1       18    1220
6-24 months                   ki1135781-COHORTS          INDIA                          0                     0     5909    6941
6-24 months                   ki1135781-COHORTS          INDIA                          0                     1      192    6941
6-24 months                   ki1135781-COHORTS          INDIA                          1                     0      776    6941
6-24 months                   ki1135781-COHORTS          INDIA                          1                     1       64    6941
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                     0     2476    2809
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                     1      170    2809
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    1                     0      145    2809
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    1                     1       18    2809
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                     0      514     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                     1        4     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                     0      303     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                     1        5     826
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                     0    11734   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                     1      312   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     5011   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      241   17298
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
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
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
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
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
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
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
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
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
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
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
![](/tmp/1b83c4e3-d637-4c43-a488-29f8363d9856/5f420fe2-e6e6-4fbf-8bf3-e83c27c5802d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1b83c4e3-d637-4c43-a488-29f8363d9856/5f420fe2-e6e6-4fbf-8bf3-e83c27c5802d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1b83c4e3-d637-4c43-a488-29f8363d9856/5f420fe2-e6e6-4fbf-8bf3-e83c27c5802d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1b83c4e3-d637-4c43-a488-29f8363d9856/5f420fe2-e6e6-4fbf-8bf3-e83c27c5802d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1497478   0.1087444   0.1907512
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1454804   0.0648702   0.2260906
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                0.1939058   0.1530725   0.2347391
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    NA                0.1458333   0.0458659   0.2458008
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                0.1153938   0.0756426   0.1551450
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    NA                0.1724520   0.1070729   0.2378311
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    NA                0.1568946   0.1062530   0.2075361
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                    NA                0.2823356   0.1798312   0.3848401
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0927861   0.0720711   0.1135011
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1705434   0.1269209   0.2141659
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0731289   0.0402137   0.1060440
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1439317   0.0880096   0.1998538
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0846380   0.0604073   0.1088686
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1163773   0.0512336   0.1815210
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0184900   0.0081188   0.0288612
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0761905   0.0254116   0.1269694
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0472611   0.0384355   0.0560867
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0994780   0.0532001   0.1457559
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    NA                0.1308455   0.1177495   0.1439415
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                    NA                0.1629734   0.1224665   0.2034803
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0049069   0.0014662   0.0083477
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0196822   0.0095324   0.0298320
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1886842   0.1550070   0.2223615
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3127740   0.1944100   0.4311380
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    NA                0.1028301   0.0560802   0.1495799
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                    NA                0.1923325   0.1130984   0.2715665
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0371200   0.0265973   0.0476426
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.0618886   0.0322741   0.0915030
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0331489   0.0299743   0.0363235
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0452384   0.0341408   0.0563360
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0099304   0.0038129   0.0160480
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0532411   0.0280782   0.0784039
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                0.0435667   0.0385204   0.0486130
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    NA                0.0744488   0.0567777   0.0921199
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0801053   0.0701227   0.0900879
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1160848   0.0690477   0.1631219
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0331707   0.0302084   0.0361329
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0410036   0.0362438   0.0457635
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0343192   0.0277499   0.0408886
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0646182   0.0521798   0.0770567
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                0.0327869   0.0104127   0.0551611
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    NA                0.0620155   0.0203397   0.1036913
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    NA                0.0496273   0.0191878   0.0800669
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                    NA                0.1694315   0.0829930   0.2558701
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0309839   0.0180550   0.0439129
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0312140   0.0191151   0.0433128
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    NA                0.0385202   0.0304270   0.0466133
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    NA                0.0652701   0.0324603   0.0980800
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0099577   0.0081834   0.0117320
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0091139   0.0039489   0.0142790
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                0.0179164   0.0144987   0.0213341
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    NA                0.0182596   0.0084844   0.0280348
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0175364   0.0153177   0.0197551
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0143009   0.0114283   0.0171735
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0042064   0.0010934   0.0073194
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0043134   0.0002338   0.0083930
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0704698   0.0413723   0.0995673
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1200000   0.0463568   0.1936432
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                0.0935522   0.0574090   0.1296953
6-24 months                   ki1000109-EE               PAKISTAN                       1                    NA                0.1332439   0.0769545   0.1895333
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    NA                0.1280201   0.0776286   0.1784117
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                    NA                0.1850023   0.0863919   0.2836127
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0719296   0.0466651   0.0971940
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1606318   0.1250226   0.1962410
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1030396   0.0648173   0.1412618
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1641974   0.1063818   0.2220130
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0787350   0.0539447   0.1035254
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1310889   0.0590531   0.2031247
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0191388   0.0084070   0.0298706
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0776699   0.0259454   0.1293945
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0372063   0.0286481   0.0457645
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1029586   0.0540072   0.1519100
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    NA                0.1126622   0.1000923   0.1252322
6-24 months                   ki1101329-Keneba           GAMBIA                         1                    NA                0.1555632   0.1147341   0.1963923
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0280179   0.0172365   0.0387993
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1220353   0.0775774   0.1664932
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1759095   0.1432388   0.2085803
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3404356   0.2200727   0.4607985
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    NA                0.0911530   0.0462445   0.1360615
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                    NA                0.1637359   0.0899234   0.2375484
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0367962   0.0262419   0.0473506
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.0848867   0.0503568   0.1194166
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0305738   0.0271237   0.0340239
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0489722   0.0363408   0.0616036
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0133780   0.0058498   0.0209061
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0573580   0.0308313   0.0838847
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                0.0314549   0.0270724   0.0358373
6-24 months                   ki1135781-COHORTS          INDIA                          1                    NA                0.0769828   0.0590175   0.0949481
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0641720   0.0548308   0.0735131
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1122824   0.0627086   0.1618562
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0259143   0.0228932   0.0289353
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0455224   0.0391038   0.0519409
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0341600   0.0276490   0.0406710
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0685264   0.0551550   0.0818978


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1494565   0.1129794   0.1859337
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.1882641   0.1503318   0.2261964
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       NA                   NA                0.1352785   0.1007079   0.1698491
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1897810   0.1432659   0.2362962
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1145140   0.0913579   0.1376700
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1007557   0.0711091   0.1304022
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0897010   0.0668555   0.1125465
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0265252   0.0150478   0.0380026
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0507550   0.0419422   0.0595679
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1342867   0.1218039   0.1467696
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0080880   0.0040249   0.0121511
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1983051   0.1661046   0.2305055
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1380597   0.0966822   0.1794372
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0413333   0.0312563   0.0514103
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0344245   0.0313630   0.0374861
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0202703   0.0126995   0.0278411
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          NA                   NA                0.0472320   0.0423094   0.0521545
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0824776   0.0726632   0.0922921
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0356914   0.0331158   0.0382671
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0429948   0.0372768   0.0487128
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       NA                   NA                0.0428954   0.0223052   0.0634857
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.0808824   0.0484203   0.1133444
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0312288   0.0186884   0.0437692
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0410788   0.0331533   0.0490044
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0098032   0.0081326   0.0114737
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0179724   0.0147449   0.0211998
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0165409   0.0147291   0.0183527
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0042364   0.0017272   0.0067456
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0804290   0.0527929   0.1080650
6-24 months                   ki1000109-EE               PAKISTAN                       NA                   NA                0.1040000   0.0730627   0.1349373
6-24 months                   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1434783   0.0980744   0.1888821
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0964723   0.0729872   0.1199573
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1268657   0.0942904   0.1594410
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0868762   0.0631205   0.1106318
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0273973   0.0155476   0.0392469
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0411298   0.0324631   0.0497965
6-24 months                   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1172389   0.1051866   0.1292911
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0505205   0.0383088   0.0627322
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1915254   0.1597467   0.2233042
6-24 months                   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1150794   0.0756007   0.1545580
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0452092   0.0346279   0.0557905
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0325416   0.0291786   0.0359047
6-24 months                   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0245902   0.0158961   0.0332842
6-24 months                   ki1135781-COHORTS          INDIA                          NA                   NA                0.0368823   0.0324481   0.0413165
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0669277   0.0576848   0.0761707
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0319690   0.0290813   0.0348568
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0440147   0.0381801   0.0498493


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9715028   0.5229758    1.804706
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    0                 0.7520833   0.3671386    1.540643
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    0                 1.4944653   0.8960174    2.492615
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                    0                 1.7995247   1.1108346    2.915186
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.8380274   1.4708345    2.296890
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.9681930   1.0863369    3.565914
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.3750013   0.7335427    2.577394
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 4.1206348   1.7244576    9.846361
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 2.1048608   1.2749891    3.474884
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                    0                 1.2455408   0.9533538    1.627278
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 4.0111082   2.0360560    7.902037
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.6576583   1.0909170    2.518827
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                    0                 1.8703918   1.0110863    3.460007
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 1.6672574   0.9559790    2.907749
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.3647027   1.0487852    1.775782
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      1                    0                 5.3614143   2.4661811   11.655577
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    0                 1.7088461   1.3121322    2.225504
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.4491529   0.9484861    2.214101
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.2361409   1.0710507    1.426678
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.8828582   1.4275337    2.483413
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    0                 1.8914729   0.7258566    4.928893
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                    0                 3.4140773   1.5375396    7.580893
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.0074238   0.8300077    1.222763
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    0                 1.6944415   0.9827674    2.921477
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9152650   0.5053084    1.657819
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    0                 1.0191554   0.5773194    1.799139
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.8155018   0.6479286    1.026414
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.0254493   0.3075485    3.419124
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.7028571   0.8127249    3.567902
6-24 months                   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1000109-EE               PAKISTAN                       1                    0                 1.4242740   0.8063255    2.515803
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                    0                 1.4451031   0.7450955    2.802759
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 2.2331816   1.5511661    3.215065
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.5935371   0.9551944    2.658475
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.6649374   0.8830002    3.139316
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 4.0582524   1.6992153    9.692363
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 2.7672363   1.6312411    4.694338
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1101329-Keneba           GAMBIA                         1                    0                 1.3807923   1.0385951    1.835737
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 4.3556157   2.6146696    7.255750
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.9352876   1.2995268    2.882078
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                    0                 1.7962763   0.9193747    3.509569
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 2.3069388   1.4023455    3.795047
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.6017706   1.2087785    2.122530
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                    0                 4.2874957   2.0690369    8.884626
6-24 months                   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1135781-COHORTS          INDIA                          1                    0                 2.4474053   1.8651247    3.211470
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.7497117   1.0991317    2.785372
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.7566522   1.4657882    2.105234
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 2.0060437   1.5170686    2.652623


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0002913   -0.0188369   0.0182543
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                -0.0056418   -0.0184035   0.0071200
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0198847   -0.0066265   0.0463960
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0328865    0.0021569   0.0636161
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0217279    0.0128981   0.0305577
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0276268    0.0024979   0.0527557
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0050630   -0.0058318   0.0159579
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0080352    0.0006782   0.0153922
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0034940    0.0002705   0.0067174
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0034412   -0.0011996   0.0080820
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0031811    0.0013458   0.0050163
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0096208   -0.0033666   0.0226083
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0352296    0.0001604   0.0702989
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0042134   -0.0011920   0.0096187
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0012757    0.0001028   0.0024485
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0103399    0.0041657   0.0165141
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0036653    0.0014668   0.0058637
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0023724   -0.0005007   0.0052454
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0025207    0.0007789   0.0042626
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0086756    0.0046236   0.0127276
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0101086   -0.0063115   0.0265286
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0312550    0.0063430   0.0561670
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0002448   -0.0016692   0.0021589
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0025587   -0.0006079   0.0057253
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0001545   -0.0006701   0.0003611
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0000560   -0.0010839   0.0011958
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0009955   -0.0021021   0.0001112
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0000300   -0.0014141   0.0014742
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0099592   -0.0060897   0.0260080
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                 0.0104478   -0.0130310   0.0339266
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0154581   -0.0134045   0.0443207
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0245427    0.0136032   0.0354822
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0238261   -0.0036021   0.0512543
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0081411   -0.0038944   0.0201767
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0082585    0.0006596   0.0158574
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0039235    0.0004791   0.0073680
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0045766   -0.0001572   0.0093104
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0225026    0.0137173   0.0312879
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0156159    0.0023297   0.0289021
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0239264   -0.0090900   0.0569428
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0084129    0.0021251   0.0147008
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0019678    0.0005784   0.0033572
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0112122    0.0042022   0.0182221
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.0054274    0.0031668   0.0076881
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0027558   -0.0001234   0.0056349
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0060547    0.0039127   0.0081968
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0098548    0.0055326   0.0141769


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0019490   -0.1340455   0.1147606
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                -0.0299673   -0.0998838   0.0355049
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.1469912   -0.0696377   0.3197472
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1732863   -0.0025165   0.3182602
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1897401    0.1178836   0.2557432
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.2741961   -0.0090233   0.4779197
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0564435   -0.0723864   0.1697965
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3029276    0.0082660   0.5100400
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0688395    0.0042079   0.1292763
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0256259   -0.0095134   0.0595422
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.3933080    0.1488291   0.5675661
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0485154   -0.0190706   0.1116190
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.2551769   -0.0355510   0.4642838
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.1019361   -0.0362657   0.2217066
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0370566    0.0025299   0.0703883
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.5100996    0.2022733   0.6991420
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0776011    0.0305406   0.1223771
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0287637   -0.0065672   0.0628544
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0706260    0.0207726   0.1179413
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2017821    0.1013334   0.2910032
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                 0.2356557   -0.2352502   0.5270414
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.3864258    0.0419667   0.6070353
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0078402   -0.0559026   0.0677349
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0622872   -0.0171595   0.1355286
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0157603   -0.0696641   0.0354271
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0031140   -0.0623687   0.0645604
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0601828   -0.1288608   0.0043170
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0070908   -0.4007295   0.2961748
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1238255   -0.0954049   0.2991799
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                 0.1004599   -0.1533434   0.2984116
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1077384   -0.1157289   0.2864478
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2544016    0.1175155   0.3700546
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1878058   -0.0544660   0.3744137
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0937097   -0.0537848   0.2205599
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3014354    0.0063132   0.5089071
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0953940    0.0101055   0.1733341
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0390366   -0.0020544   0.0784427
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.4454150    0.2726337   0.5771531
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0815343    0.0101134   0.1478021
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.2079122   -0.1256173   0.4426141
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.1860891    0.0420468   0.3084725
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0604713    0.0172500   0.1017916
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.4559622    0.1597039   0.6477705
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.1471558    0.0861885   0.2040555
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0411752   -0.0024923   0.0829407
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1893941    0.1229530   0.2508019
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2238967    0.1210386   0.3147181

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

agecat                        studyid                    country                        enstunt    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  --------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                    0      174     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                    1       43     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                    0       31     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                    1       15     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                    0      197     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                    1       10     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                    0       23     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                    1        2     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                    0      135     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                    1       70     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                    0       22     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                    1       19     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                    0      175     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                    1       36     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                    0       19     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                    1        9     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                    0      252     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                    1       14     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                    0       30     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                    1        6     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      236     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       39     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       28     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        5     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      196     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       23     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       35     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        7     261
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0      167     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1      128     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       35     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       38     368
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    0      177     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    1      184     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    0       19     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    1       29     409
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    0      148     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    1       98     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    0       64     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    1       67     377
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    0      113     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    1       86     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                    0       36     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                    1       39     274
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    0      720    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    1      363    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    0      239    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    1      180    1502
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      171     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       73     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       83     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       70     397
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    0      360     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    1      148     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    0       64     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    1       30     602
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    0      524     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    1       98     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    0       41     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    1       24     687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      564     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       85     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       82     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       23     754
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1796    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      426    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      114    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       48    2384
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    0     1685    2867
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    1      865    2867
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                    0      198    2867
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                    1      119    2867
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                    0      224     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                    1       15     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                    0       63     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                    1       11     313
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0     2279    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    1      167    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0      549    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1       96    3091
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    0      258     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    1      268     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    0       20     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    1       44     590
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    0      103     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    1       63     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                    0       50     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                    1       52     268
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         0                    0      110     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         0                    1        4     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         1                    0        5     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         1                    1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                    0     1060    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                    1      182    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                    0      204    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                    1       54    1500
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0                    0      766     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0                    1       37     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           1                    0      114     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           1                    1       11     928
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                    0      192     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                    1        5     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                    0       16     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                    1        2     215
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    0    15519   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    1     1203   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    0      148   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    1        7   16877
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0    11052   13624
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     1180   13624
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     1213   13624
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      179   13624
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    0      910    1332
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    1      103    1332
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      1                    0      263    1332
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      1                    1       56    1332
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    0     5189    7135
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    1     1099    7135
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    0      636    7135
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    1      211    7135
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    0     2004    3019
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    1      841    3019
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    1                    0       99    3019
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    1                    1       75    3019
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                    0      512     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                    1       18     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                    0      269     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                    1       38     837
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0    15183   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    1     2994   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     6856   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1500   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0     3000    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      859    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1005    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      532    5396
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                    0      202     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                    1       14     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                    0       41     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                    1        5     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                    0      200     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                    1        7     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                    0       25     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                    0      171     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                    1       33     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                    0       36     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                    1        5     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                    0      198     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                    1       11     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                    0       24     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                    1        4     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                    0      263     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                    1        3     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                    0       34     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                    1        2     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      264     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       10     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       31     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        2     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      211     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        8     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       42     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     261
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0      193     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1       89     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       49     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       19     350
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    0      223     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    1      119     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    0       34     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    1       14     390
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    0      200     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    1       44     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    0      101     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    1       28     373
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    0      159     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    1       39     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                    0       51     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                    1       23     272
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    0      935    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    1      136    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    0      353    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    1       49    1473
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      211     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0      130     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     341
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                    0      459     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                    1       36     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                    0       79     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                    1       10     584
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    0      589     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    1       30     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    0       58     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    1        6     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      626     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       19     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      103     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1        1     749
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     2026    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      188    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      146    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       16    2376
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    0     1902    2410
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    1      274    2410
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    0      206    2410
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    1       28    2410
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      0                    0      219     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      0                    1        4     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      1                    0       66     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      1                    1        1     290
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    0      432     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    1       73     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    0       54     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    1        8     567
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                    0      147     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                    1       19     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                    0       89     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                    1       12     267
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         0                    0      111     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         0                    1        1     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         1                    0        5     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         1                    1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  0                    0      816     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  0                    1       18     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  1                    0      118     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  1                    1        4     956
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           0                    0      639     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           0                    1       15     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           1                    0       38     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           1                    1        3     695
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                    0      194     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                    1        3     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                    0       18     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                    1        0     215
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    0    15448   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    1     1056   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    0      147   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    1        6   16657
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0    11652   13363
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      389   13363
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     1284   13363
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1       38   13363
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      0                    0      875    1030
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      0                    1       17    1030
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      1                    0      137    1030
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      1                    1        1    1030
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    0     5293    6510
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    1      493    6510
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    0      684    6510
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    1       40    6510
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    0                    0     2553    2998
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    0                    1      273    2998
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    1                    0      161    2998
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    1                    1       11    2998
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                    0      171     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                    1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                    0       97     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                    1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0    16547   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    1     1435   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     7810   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      446   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0     3465    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    1      101    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1365    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    1       26    4957
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                    0      168     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                    1       33     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                    0       28     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                    1       11     240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                    0      182     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                    1        4     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                    0       19     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                    1        2     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                    0      148     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                    1       48     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                    0       23     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                    1       16     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                    0      180     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                    1       28     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                    0       19     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                    1        8     235
6-24 months                   ki0047075b-MAL-ED          PERU                           0                    0      224     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0                    1       12     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                    0       29     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                    1        5     270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      202     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       31     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       21     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        5     259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      187     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       19     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       32     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        7     245
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0      227     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1       71     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       47     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       28     373
6-24 months                   ki1000108-IRC              INDIA                          0                    0      254     410
6-24 months                   ki1000108-IRC              INDIA                          0                    1      108     410
6-24 months                   ki1000108-IRC              INDIA                          1                    0       29     410
6-24 months                   ki1000108-IRC              INDIA                          1                    1       19     410
6-24 months                   ki1000109-EE               PAKISTAN                       0                    0      171     375
6-24 months                   ki1000109-EE               PAKISTAN                       0                    1       74     375
6-24 months                   ki1000109-EE               PAKISTAN                       1                    0       80     375
6-24 months                   ki1000109-EE               PAKISTAN                       1                    1       50     375
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    0      107     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    1       62     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                    0       39     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                    1       22     230
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    0      730    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    1      276    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    0      234    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    1      149    1389
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      171     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       73     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       88     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       70     402
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    0      325     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    1      130     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    0       57     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    1       29     541
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    0      476     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    1       78     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    0       40     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    1       21     615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      554     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       73     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       80     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       23     730
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1593    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      287    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      101    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       37    2018
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    0     1684    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    1      746    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         1                    0      186    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         1                    1      122    2738
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0                    0      198     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0                    1       13     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      1                    0       56     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      1                    1       10     277
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0     2090    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    1      443    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0      419    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1      314    3266
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    0      284     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    1      241     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    0       27     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    1       38     590
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    0      106     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    1       52     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                    0       49     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                    1       45     252
6-24 months                   ki1114097-CMIN             BRAZIL                         0                    0      110     119
6-24 months                   ki1114097-CMIN             BRAZIL                         0                    1        4     119
6-24 months                   ki1114097-CMIN             BRAZIL                         1                    0        5     119
6-24 months                   ki1114097-CMIN             BRAZIL                         1                    1        0     119
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                    0     1045    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                    1      180    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                    0      190    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                    1       67    1482
6-24 months                   ki1114097-CMIN             PERU                           0                    0      734     878
6-24 months                   ki1114097-CMIN             PERU                           0                    1       25     878
6-24 months                   ki1114097-CMIN             PERU                           1                    0      109     878
6-24 months                   ki1114097-CMIN             PERU                           1                    1       10     878
6-24 months                   ki1114097-CONTENT          PERU                           0                    0      195     215
6-24 months                   ki1114097-CONTENT          PERU                           0                    1        2     215
6-24 months                   ki1114097-CONTENT          PERU                           1                    0       16     215
6-24 months                   ki1114097-CONTENT          PERU                           1                    1        2     215
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    0    16292   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    1      166   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    0      139   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    1        1   16598
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     8707   10694
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      853   10694
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      982   10694
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      152   10694
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    0      817    1220
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    1       93    1220
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                    0      249    1220
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                    1       61    1220
6-24 months                   ki1135781-COHORTS          INDIA                          0                    0     5433    6941
6-24 months                   ki1135781-COHORTS          INDIA                          0                    1      668    6941
6-24 months                   ki1135781-COHORTS          INDIA                          1                    0      656    6941
6-24 months                   ki1135781-COHORTS          INDIA                          1                    1      184    6941
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    0     1967    2809
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    1      679    2809
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    1                    0       93    2809
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    1                    1       70    2809
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                    0      497     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                    1       21     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                    0      265     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                    1       43     826
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0    10323   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    1     1723   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     4138   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1114   17298
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0     3061    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      815    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1026    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      528    5430


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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/8f57599a-6b50-4b5d-9026-faf5b597a598/9dde5366-34ed-426f-b640-b08f06d20c5c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8f57599a-6b50-4b5d-9026-faf5b597a598/9dde5366-34ed-426f-b640-b08f06d20c5c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8f57599a-6b50-4b5d-9026-faf5b597a598/9dde5366-34ed-426f-b640-b08f06d20c5c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8f57599a-6b50-4b5d-9026-faf5b597a598/9dde5366-34ed-426f-b640-b08f06d20c5c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1985719   0.1453924   0.2517515
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.3448115   0.2066791   0.4829439
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                    NA                0.3417595   0.2765621   0.4069568
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                    NA                0.4394254   0.2838635   0.5949874
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1706161   0.1197527   0.2214795
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.3214286   0.1480803   0.4947769
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                    NA                0.0526316   0.0257528   0.0795104
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                    NA                0.1666667   0.0447254   0.2886080
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1418182   0.1005188   0.1831176
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1515152   0.0289838   0.2740465
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1050228   0.0643403   0.1457053
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1666667   0.0537415   0.2795918
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.4356712   0.3788677   0.4924747
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5120624   0.3941241   0.6300008
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                0.5080457   0.4563253   0.5597661
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    NA                0.6259198   0.4886716   0.7631681
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                0.4006360   0.3389835   0.4622885
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    NA                0.4938388   0.4101980   0.5774797
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    NA                0.4321005   0.3629444   0.5012565
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                    NA                0.5265659   0.4131259   0.6400059
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3343224   0.2882368   0.3804080
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4287382   0.3554030   0.5020735
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.3043300   0.2467163   0.3619437
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4673434   0.3880211   0.5466657
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2914741   0.2518995   0.3310487
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3095476   0.2167246   0.4023706
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1565159   0.1278764   0.1851555
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3595501   0.2461277   0.4729725
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1310207   0.1050410   0.1570005
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2187873   0.1386737   0.2989010
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1919247   0.1755493   0.2083002
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2943967   0.2224063   0.3663872
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    NA                0.3378077   0.3194561   0.3561592
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                    NA                0.3844350   0.3300619   0.4388082
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.0621091   0.0312638   0.0929545
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.1484334   0.0643283   0.2325386
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0693306   0.0543569   0.0843043
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1419924   0.0883713   0.1956135
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5095531   0.4667259   0.5523804
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7044948   0.5834638   0.8255258
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    NA                0.3851150   0.3104933   0.4597367
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                    NA                0.5187156   0.4205999   0.6168313
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.1466375   0.1269547   0.1663202
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2072329   0.1572563   0.2572095
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0                    NA                0.0460072   0.0315006   0.0605138
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           1                    NA                0.0885448   0.0382256   0.1388641
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                0.0719412   0.0596689   0.0842134
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    NA                0.0451613   0.0354244   0.0548981
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0965071   0.0912700   0.1017441
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1283783   0.1103740   0.1463827
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1007146   0.0821549   0.1192743
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1823289   0.1390527   0.2256050
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                0.1744210   0.1650394   0.1838026
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    NA                0.2499818   0.2209470   0.2790167
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2958163   0.2790405   0.3125922
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4249621   0.3515350   0.4983892
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0350817   0.0190609   0.0511025
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1115511   0.0771646   0.1459375
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1646593   0.1584007   0.1709179
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1798271   0.1704916   0.1891625
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2226031   0.2073196   0.2378867
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3471101   0.3201503   0.3740700
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0648148   0.0319192   0.0977104
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1086957   0.0185762   0.1988151
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                    NA                0.1617647   0.1111303   0.2123991
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                    NA                0.1219512   0.0215829   0.2223195
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3178385   0.2630856   0.3725915
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2649122   0.1614247   0.3683998
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                0.3463029   0.2956020   0.3970038
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    NA                0.3253176   0.1929116   0.4577237
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                0.1848457   0.1368011   0.2328903
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    NA                0.2149873   0.1435984   0.2863762
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    NA                0.1961579   0.1406090   0.2517068
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                    NA                0.3151614   0.2074394   0.4228834
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1255893   0.0947619   0.1564168
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1216019   0.0892524   0.1539515
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0723780   0.0494717   0.0952843
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1179892   0.0510309   0.1849475
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0484653   0.0315356   0.0653949
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0937500   0.0222862   0.1652138
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0848142   0.0732005   0.0964279
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0936754   0.0473476   0.1400032
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    NA                0.1255139   0.1115621   0.1394658
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    NA                0.1307244   0.0845456   0.1769031
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1445545   0.1138573   0.1752516
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1290323   0.0455132   0.2125513
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                    NA                0.1186669   0.0697893   0.1675444
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                    NA                0.1267602   0.0638916   0.1896288
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                0.0639845   0.0523813   0.0755877
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    NA                0.0392157   0.0294766   0.0489548
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0322703   0.0291124   0.0354283
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0291956   0.0198934   0.0384977
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                0.0851514   0.0779549   0.0923478
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    NA                0.0552890   0.0385518   0.0720262
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0967171   0.0858110   0.1076233
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0598411   0.0233383   0.0963439
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0795991   0.0748578   0.0843404
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0544036   0.0490659   0.0597412
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0283114   0.0223908   0.0342319
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0187535   0.0112039   0.0263030
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1644216   0.1129433   0.2158999
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.2617263   0.1157642   0.4076884
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                    NA                0.2444402   0.1840735   0.3048070
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                    NA                0.4089337   0.2527129   0.5651545
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1346154   0.0881324   0.1810984
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2962963   0.1236925   0.4689001
6-24 months                   ki0047075b-MAL-ED          PERU                           0                    NA                0.0508475   0.0227672   0.0789277
6-24 months                   ki0047075b-MAL-ED          PERU                           1                    NA                0.1470588   0.0277921   0.2663256
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1330472   0.0893543   0.1767401
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1923077   0.0405248   0.3440906
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0922330   0.0526387   0.1318273
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1794872   0.0587994   0.3001750
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2392535   0.1905876   0.2879194
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3708133   0.2589926   0.4826340
6-24 months                   ki1000108-IRC              INDIA                          0                    NA                0.2985698   0.2513872   0.3457525
6-24 months                   ki1000108-IRC              INDIA                          1                    NA                0.3841244   0.2460980   0.5221508
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                0.3065751   0.2486342   0.3645159
6-24 months                   ki1000109-EE               PAKISTAN                       1                    NA                0.3757609   0.2932579   0.4582639
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    NA                0.3668085   0.2937611   0.4398559
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                    NA                0.3602607   0.2388525   0.4816688
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2731278   0.2346151   0.3116405
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3913995   0.3202898   0.4625091
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.3007958   0.2431632   0.3584284
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4402894   0.3619637   0.5186152
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2856512   0.2440862   0.3272162
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3345433   0.2339276   0.4351590
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1401405   0.1111678   0.1691133
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3498013   0.2301523   0.4694503
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1159275   0.0908028   0.1410522
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2098417   0.1286453   0.2910380
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1524751   0.1362109   0.1687393
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2656212   0.1902539   0.3409885
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    NA                0.3056628   0.2873426   0.3239830
6-24 months                   ki1101329-Keneba           GAMBIA                         1                    NA                0.3993311   0.3438848   0.4547773
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.0610305   0.0286800   0.0933809
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.1542458   0.0658677   0.2426239
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.1762783   0.1513324   0.2012243
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.4211086   0.3096649   0.5325524
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4595498   0.4168615   0.5022381
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5741224   0.4479302   0.7003147
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    NA                0.3272072   0.2533800   0.4010344
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                    NA                0.4766632   0.3741792   0.5791471
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.1471674   0.1273176   0.1670173
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2547000   0.2006076   0.3087924
6-24 months                   ki1114097-CMIN             PERU                           0                    NA                0.0329451   0.0202398   0.0456503
6-24 months                   ki1114097-CMIN             PERU                           1                    NA                0.0850324   0.0359427   0.1341221
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0892441   0.0835241   0.0949641
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1336841   0.1133274   0.1540407
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1021479   0.0824621   0.1218338
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2001970   0.1549170   0.2454771
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                0.1092888   0.1014606   0.1171170
6-24 months                   ki1135781-COHORTS          INDIA                          1                    NA                0.2209519   0.1930739   0.2488298
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2566399   0.2399917   0.2732881
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4275156   0.3519453   0.5030860
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0427693   0.0252360   0.0603026
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1291782   0.0913967   0.1669596
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1429874   0.1363116   0.1496633
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2129478   0.2006398   0.2252557
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2103726   0.1953784   0.2253668
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3396445   0.3125360   0.3667530


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2205323   0.1703290   0.2707357
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3617886   0.3016193   0.4219579
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1882845   0.1386174   0.2379516
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0662252   0.0381322   0.0943181
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1428571   0.1037139   0.1820004
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1149425   0.0761733   0.1537118
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4510870   0.4001777   0.5019962
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.5207824   0.4723080   0.5692568
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       NA                   NA                0.4376658   0.3875213   0.4878102
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.4562044   0.3971211   0.5152876
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3615180   0.3107193   0.4123167
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3602015   0.3129196   0.4074834
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2956811   0.2591967   0.3321655
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1988255   0.1828010   0.2148500
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3432159   0.3258337   0.3605981
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0830671   0.0524436   0.1136905
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0850857   0.0676201   0.1025513
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5288136   0.4885012   0.5691259
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.4291045   0.3697365   0.4884725
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1573333   0.1389008   0.1757659
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           NA                   NA                0.0517241   0.0374673   0.0659809
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0716952   0.0597165   0.0836739
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0997504   0.0947183   0.1047826
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1193694   0.1019512   0.1367875
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          NA                   NA                0.1836020   0.1746179   0.1925860
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3034117   0.2870099   0.3198136
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0669056   0.0499685   0.0838427
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1693740   0.1640742   0.1746738
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2577835   0.2441424   0.2714247
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0725191   0.0410556   0.1039825
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1551020   0.1096803   0.2005238
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3085714   0.2601110   0.3570318
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          NA                   NA                0.3410256   0.2939169   0.3881343
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       NA                   NA                0.1930295   0.1529228   0.2331362
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2279412   0.1779953   0.2778871
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1255940   0.0954030   0.1557851
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0787671   0.0569010   0.1006332
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0858586   0.0745914   0.0971258
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1253112   0.1120906   0.1385318
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1428571   0.1140289   0.1716853
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1161049   0.0776073   0.1546024
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0637570   0.0524446   0.0750694
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0319539   0.0289718   0.0349360
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0818740   0.0752134   0.0885347
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0947298   0.0842456   0.1052141
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0716899   0.0680353   0.0753445
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0256203   0.0209093   0.0303314
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1833333   0.1342773   0.2323893
6-24 months                   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2723404   0.2153029   0.3293779
6-24 months                   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1531915   0.1070438   0.1993392
6-24 months                   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0629630   0.0339366   0.0919893
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1389961   0.0967835   0.1812087
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1061224   0.0674772   0.1447677
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months                   ki1000108-IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months                   ki1000109-EE               PAKISTAN                       NA                   NA                0.3306667   0.2829875   0.3783458
6-24 months                   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.3652174   0.3028556   0.4275792
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3059755   0.2638053   0.3481458
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1605550   0.1445335   0.1765765
6-24 months                   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3170197   0.2995873   0.3344522
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0830325   0.0504792   0.1155858
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2317820   0.2038933   0.2596707
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4728814   0.4325613   0.5132014
6-24 months                   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3849206   0.3247254   0.4451159
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1666667   0.1476863   0.1856470
6-24 months                   ki1114097-CMIN             PERU                           NA                   NA                0.0398633   0.0269154   0.0528113
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0939779   0.0884472   0.0995086
6-24 months                   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1262295   0.1075861   0.1448729
6-24 months                   ki1135781-COHORTS          INDIA                          NA                   NA                0.1227489   0.1150285   0.1304693
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months                   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0774818   0.0592383   0.0957254
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1640074   0.1578946   0.1701202
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2473297   0.2337864   0.2608729


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.7364563   1.0713685   2.8144195
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                    0                 1.2857739   0.8576472   1.9276162
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                    0                 1.8839286   1.0172897   3.4888655
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                    0                 3.1666667   1.2974797   7.7286587
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.0683761   0.4523033   2.5235886
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 1.5869565   0.7271305   3.4635202
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.1753415   0.9016958   1.5320328
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    0                 1.2320148   0.9675957   1.5686929
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    0                 1.2326372   0.9814100   1.5481751
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                    0                 1.2186191   0.9318070   1.5937126
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.2824096   1.1498369   1.4302675
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.5356470   1.1901836   1.9813849
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.0620075   0.7643039   1.4756695
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 2.2972110   1.5978034   3.3027707
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.6698677   1.1012732   2.5320314
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.5339175   1.1839531   1.9873278
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                    0                 1.1380293   0.9781999   1.3239736
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 2.3898810   1.1241753   5.0806412
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 2.0480475   1.3829809   3.0329404
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.3825739   1.1413379   1.6747980
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                    0                 1.3469110   1.0268893   1.7666647
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 1.4132330   1.0724930   1.8622289
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           1                    0                 1.9245872   1.0045394   3.6872977
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    0                 0.6277532   0.4876567   0.8080974
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.3302483   1.1445777   1.5460378
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.8103516   1.3418204   2.4424824
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    0                 1.4332095   1.2611618   1.6287280
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.4365742   1.1979100   1.7227883
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                    0                 3.1797491   1.8348400   5.5104556
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.0921161   1.0255099   1.1630482
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.5593226   1.4096755   1.7248558
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.6770186   0.6343906   4.4332175
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                    0                 0.7538803   0.3125298   1.8184998
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.8334805   0.5439326   1.2771613
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    0                 0.9394020   0.6094440   1.4480021
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    0                 1.1630634   0.7629902   1.7729146
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                    0                 1.6066717   1.0315505   2.5024409
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.9682505   0.8216866   1.1409569
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.6301801   0.8505047   3.1245999
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.9343750   0.8363385   4.4740336
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1044783   0.6611214   1.8451564
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    0                 1.0415127   0.7192730   1.5081183
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.8926204   0.4516663   1.7640705
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                    0                 1.0682020   0.5606832   2.0351166
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    0                 0.6128938   0.4574491   0.8211596
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9047185   0.6482575   1.2626394
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    0                 0.6493023   0.4741891   0.8890830
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.6187226   0.3327298   1.1505360
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.6834698   0.6094112   0.7665284
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.6624004   0.4189469   1.0473266
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.5917998   0.8384838   3.0219147
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                    0                 1.6729394   1.0606780   2.6386201
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                    0                 2.2010582   1.1182333   4.3324209
6-24 months                   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED          PERU                           1                    0                 2.8921569   1.0841767   7.7151369
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.4454094   0.6147907   3.3982436
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 1.9460189   0.8763681   4.3212316
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.5498763   1.0772444   2.2298715
6-24 months                   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-IRC              INDIA                          1                    0                 1.2865480   0.8691839   1.9043216
6-24 months                   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE               PAKISTAN                       1                    0                 1.2256733   0.9198532   1.6331682
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                    0                 0.9821492   0.6636801   1.4534366
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.4330268   1.2162026   1.6885063
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.4637486   1.1266556   1.9016991
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.1711600   0.8384051   1.6359821
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 2.4960752   1.6754921   3.7185440
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.8101114   1.1622699   2.8190553
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.7420627   1.2863886   2.3591491
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1101329-Keneba           GAMBIA                         1                    0                 1.3064431   1.1231033   1.5197120
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 2.5273569   1.1558577   5.5262275
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 2.3888849   1.7626808   3.2375520
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.2493149   0.9840065   1.5861560
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                    0                 1.4567624   1.0657544   1.9912249
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 1.7306819   1.3456694   2.2258513
6-24 months                   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1114097-CMIN             PERU                           1                    0                 2.5810359   1.2885962   5.1697699
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.4979594   1.2698800   1.7670034
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.9598734   1.4576555   2.6351245
6-24 months                   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          INDIA                          1                    0                 2.0217245   1.7491917   2.3367193
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.6658190   1.3804262   2.0102147
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                    0                 3.0203496   1.8258027   4.9964392
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.4892762   1.3862414   1.5999691
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.6144903   1.4551959   1.7912220


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0219604   -0.0042776    0.0481984
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0200291   -0.0091914    0.0492497
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0176684   -0.0043751    0.0397119
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0135936   -0.0018657    0.0290528
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0010390   -0.0128191    0.0148970
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0099197   -0.0095907    0.0294301
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0154158   -0.0105109    0.0413424
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                 0.0127367   -0.0050269    0.0305003
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0370298    0.0007503    0.0733093
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0241039   -0.0126284    0.0608362
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0271956    0.0134643    0.0409269
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0558715    0.0173828    0.0943603
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0042070   -0.0118346    0.0202486
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0210678    0.0088319    0.0333037
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0122153    0.0004256    0.0240051
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0069008    0.0018756    0.0119260
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0054082   -0.0008728    0.0116893
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0209580   -0.0000504    0.0419664
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0157551    0.0071234    0.0243868
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0192604    0.0048212    0.0336997
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0439895   -0.0037563    0.0917353
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0106959    0.0014202    0.0199716
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0                    NA                 0.0057170   -0.0013235    0.0127574
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0002459   -0.0006310    0.0001391
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0032434    0.0013607    0.0051260
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0186548    0.0076049    0.0297046
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0091810    0.0055113    0.0128506
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0075954    0.0031334    0.0120574
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0318239    0.0166309    0.0470169
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0047147    0.0012598    0.0081696
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0351804    0.0265192    0.0438416
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0077043   -0.0092607    0.0246693
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0066627   -0.0255675    0.0122422
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0092671   -0.0329711    0.0144369
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                -0.0052773   -0.0227376    0.0121831
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0081838   -0.0213215    0.0376890
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0317833   -0.0011609    0.0647274
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0000047   -0.0055294    0.0055388
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0063891   -0.0043714    0.0171496
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0042434   -0.0027093    0.0111961
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0010444   -0.0021952    0.0042840
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0002027   -0.0044998    0.0040943
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0016973   -0.0114354    0.0080408
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0025620   -0.0330735    0.0279495
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0002275   -0.0006023    0.0001473
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0003164   -0.0012624    0.0006296
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                -0.0032773   -0.0053083   -0.0012464
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0019873   -0.0042129    0.0002383
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0079092   -0.0101540   -0.0056644
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0026910   -0.0053921    0.0000100
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0189117   -0.0062353    0.0440588
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0279002   -0.0012444    0.0570448
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0185761   -0.0029978    0.0401500
6-24 months                   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0121155   -0.0037784    0.0280094
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0059489   -0.0100549    0.0219528
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0138894   -0.0067225    0.0345013
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0261620    0.0013741    0.0509500
6-24 months                   ki1000108-IRC              INDIA                          0                    NA                 0.0111863   -0.0063388    0.0287114
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                 0.0240916   -0.0105139    0.0586971
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0015911   -0.0393002    0.0361180
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0328477    0.0155415    0.0501539
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0549256    0.0161943    0.0936569
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0082490   -0.0090680    0.0255659
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0208351    0.0078614    0.0338088
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0155794    0.0033823    0.0277764
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0080799    0.0027290    0.0134309
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0113569    0.0047450    0.0179689
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0220020   -0.0005709    0.0445749
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0555037    0.0357280    0.0752794
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0133315   -0.0012569    0.0279200
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0577134    0.0097043    0.1057225
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0194992    0.0092966    0.0297018
6-24 months                   ki1114097-CMIN             PERU                           0                    NA                 0.0069183   -0.0001541    0.0139907
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0047338    0.0025276    0.0069401
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0240816    0.0115760    0.0365872
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.0134601    0.0098642    0.0170560
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0100030    0.0053190    0.0146871
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0347126    0.0183886    0.0510365
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0210200    0.0168814    0.0251585
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0369571    0.0283003    0.0456138


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0995789   -0.0263355    0.2100458
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0553614   -0.0288930    0.1327164
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0938389   -0.0294005    0.2023241
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                    NA                 0.2052632   -0.0462934    0.3963389
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0072727   -0.0946166    0.0996780
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0863014   -0.0979263    0.2396164
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0341747   -0.0251252    0.0900443
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                 0.0244568   -0.0103478    0.0580625
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0846075   -0.0026874    0.1643024
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0528358   -0.0314204    0.1302092
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0752261    0.0401831    0.1089896
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1551119    0.0415307    0.2552334
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0142282   -0.0415402    0.0670104
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1186358    0.0484678    0.1836294
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0852811    0.0001741    0.1631436
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0347076    0.0091882    0.0595698
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0157575   -0.0027141    0.0338889
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.2523017   -0.0288932    0.4566465
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.1851675    0.0921192    0.2686793
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0364220    0.0085801    0.0634820
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.1025147   -0.0163004    0.2074391
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0679823    0.0075026    0.1247765
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0                    NA                 0.1105277   -0.0329993    0.2341129
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0034305   -0.0083948    0.0015094
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0325149    0.0135105    0.0511533
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1562776    0.0606839    0.2421428
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0500048    0.0298870    0.0697054
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0250333    0.0102230    0.0396221
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.4756536    0.2383214    0.6390353
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0278360    0.0072240    0.0480200
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1364726    0.1022790    0.1693638
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.1062378   -0.1560655    0.3090263
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0429567   -0.1718005    0.0717203
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0300323   -0.1097501    0.0439590
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                -0.0154747   -0.0679703    0.0344406
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0423965   -0.1228837    0.1833486
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1394362   -0.0163246    0.2713253
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0000373   -0.0450113    0.0431440
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0811138   -0.0644780    0.2067926
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0805062   -0.0587370    0.2014363
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0121643   -0.0262737    0.0491628
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0016178   -0.0365008    0.0320912
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0118812   -0.0823666    0.0540141
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0220664   -0.3219636    0.2097969
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0035684   -0.0089897    0.0018238
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0099022   -0.0399287    0.0192573
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                -0.0400290   -0.0649445   -0.0156963
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0209789   -0.0446553    0.0021609
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1103249   -0.1411495   -0.0803330
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1050356   -0.2129278   -0.0067406
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.1031549   -0.0432140    0.2289875
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.1024460   -0.0102966    0.2026073
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.1212607   -0.0276514    0.2485947
6-24 months                   ki0047075b-MAL-ED          PERU                           0                    NA                 0.1924227   -0.0845409    0.3986570
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0427992   -0.0789778    0.1508321
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1308813   -0.0809017    0.3011692
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0985701    0.0006755    0.1868749
6-24 months                   ki1000108-IRC              INDIA                          0                    NA                 0.0361132   -0.0220987    0.0910099
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                 0.0728577   -0.0381163    0.1719686
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0043566   -0.1131003    0.0937634
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1073541    0.0534823    0.1581597
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1544062    0.0384284    0.2563955
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0280672   -0.0326560    0.0852197
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1294300    0.0472064    0.2045580
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1184680    0.0226533    0.2048894
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0503249    0.0166453    0.0828510
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0358240    0.0147498    0.0564475
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.2649807   -0.0386886    0.4798698
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.2394649    0.1602860    0.3111779
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0281922   -0.0032152    0.0586163
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.1499359    0.0152897    0.2661709
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.1169954    0.0546548    0.1752250
6-24 months                   ki1114097-CMIN             PERU                           0                    NA                 0.1735495   -0.0137904    0.3262706
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0503716    0.0267524    0.0734177
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1907760    0.0888568    0.2812947
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.1096554    0.0804852    0.1379002
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0375147    0.0198212    0.0548887
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.4480090    0.2301003    0.6042419
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1281648    0.1030663    0.1525610
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1494243    0.1139166    0.1835091

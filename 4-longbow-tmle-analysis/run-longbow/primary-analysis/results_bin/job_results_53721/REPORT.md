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

agecat                        studyid                    country                        enstunt    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  --------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                    0      174     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                    1       43     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                    0       31     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                    1       15     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                    0      191     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                    1       11     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                    0       29     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                    1        2     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                    0      134     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                    1       72     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                    0       21     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                    1       19     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                    0      173     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                    1       37     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                    0       20     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                    1        9     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                    0      251     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                    1       15     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                    0       30     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                    1        6     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      230     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       40     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       33     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        5     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      193     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       26     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       34     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        8     261
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0      166     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1      127     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       36     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       39     368
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    0      176     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    1      181     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    0       20     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    1       32     409
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    0      111     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    1      100     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    0       63     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    1      103     377
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    0      113     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    1       86     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                    0       40     280
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                    1       41     280
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
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    0      523     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    1       98     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    0       42     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    1       24     687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      564     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       85     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       82     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       23     754
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1796    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      426    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      114    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       48    2384
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    0     1697    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    1      853    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                    0      198    2868
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                    1      120    2868
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                    0      224     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                    1       15     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                    0       63     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                    1       11     313
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0     2279    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    1      167    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0      549    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1       96    3091
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    0      275     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    1      278     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    0       54     660
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    1       53     660
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    0      103     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    1       63     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                    0       50     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                    1       52     268
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                    0      192     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                    1        5     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                    0       16     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                    1        2     215
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    0    15519   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    1     1203   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    0      148   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    1        7   16877
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0    11033   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     1210   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     1213   13637
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      181   13637
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
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0    15104   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    1     2981   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     6931   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1513   26529
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0     3000    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      859    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1005    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      532    5396
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                    0      202     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                    1       14     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                    0       41     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                    1        5     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                    0      194     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                    1        8     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                    0       31     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                    0      171     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                    1       34     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                    0       34     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                    1        5     244
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                    0      196     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                    1       12     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                    0       25     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                    1        4     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                    0      263     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                    1        3     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                    0       34     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                    1        2     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      257     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       12     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       36     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        2     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      210     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        9     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       41     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        1     261
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0      192     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1       88     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       50     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       20     350
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    0      222     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    1      117     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    0       35     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    1       16     390
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    0      162     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    1       48     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    0      132     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    1       33     375
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    0      159     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    1       39     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                    0       54     276
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                    1       24     276
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
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    0      587     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    1       31     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    0       59     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    1        6     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      626     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       19     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      103     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1        1     749
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     2026    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      188    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      146    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       16    2376
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    0     1947    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    1      243    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    0      206    2424
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    1       28    2424
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      0                    0      219     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      0                    1        4     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      1                    0       66     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      1                    1        1     290
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    0      426     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    1      111     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    0       93     642
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    1       12     642
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                    0      147     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                    1       19     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                    0       89     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                    1       12     267
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                    0      194     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                    1        3     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                    0       18     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                    1        0     215
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    0    15448   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    1     1056   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    0      147   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    1        6   16657
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0    11666   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      390   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     1282   13376
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1       38   13376
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      0                    0      875    1030
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      0                    1       17    1030
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      1                    0      137    1030
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      1                    1        1    1030
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    0     5292    6510
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    1      494    6510
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
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0    16461   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    1     1429   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     7892   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      452   26234
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0     3465    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    1      101    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1365    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    1       26    4957
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                    0      168     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                    1       33     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                    0       29     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                    1       10     240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                    0      178     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                    1        4     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                    0       23     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                    1        2     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                    0      148     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                    1       49     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                    0       23     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                    1       15     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                    0      179     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                    1       28     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                    0       20     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                    1        8     235
6-24 months                   ki0047075b-MAL-ED          PERU                           0                    0      223     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0                    1       13     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                    0       29     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                    1        5     270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      199     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       32     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       23     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        5     259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      185     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       21     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       32     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        7     245
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0      226     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1       70     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       48     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       29     373
6-24 months                   ki1000108-IRC              INDIA                          0                    0      252     410
6-24 months                   ki1000108-IRC              INDIA                          0                    1      106     410
6-24 months                   ki1000108-IRC              INDIA                          1                    0       31     410
6-24 months                   ki1000108-IRC              INDIA                          1                    1       21     410
6-24 months                   ki1000109-EE               PAKISTAN                       0                    0      129     374
6-24 months                   ki1000109-EE               PAKISTAN                       0                    1       80     374
6-24 months                   ki1000109-EE               PAKISTAN                       1                    0       84     374
6-24 months                   ki1000109-EE               PAKISTAN                       1                    1       81     374
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    0      107     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    1       62     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                    0       43     236
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                    1       24     236
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    0      730    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    1      276    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    0      234    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    1      149    1389
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      171     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       73     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       88     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       70     402
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    0      326     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    1      130     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    0       57     542
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    1       29     542
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    0      475     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    1       78     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    0       41     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    1       21     615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      554     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       73     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       80     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       23     730
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1593    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      287    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      101    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       37    2018
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    0     1685    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    1      745    2738
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
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    0      263     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    1      231     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    0       48     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    1       48     590
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    0      106     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    1       52     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                    0       49     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                    1       45     252
6-24 months                   ki1114097-CONTENT          PERU                           0                    0      195     215
6-24 months                   ki1114097-CONTENT          PERU                           0                    1        2     215
6-24 months                   ki1114097-CONTENT          PERU                           1                    0       16     215
6-24 months                   ki1114097-CONTENT          PERU                           1                    1        2     215
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    0    16292   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    1      166   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    0      139   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    1        1   16598
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     8788   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      883   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      990   10815
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      154   10815
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    0      817    1220
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    1       93    1220
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                    0      249    1220
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                    1       61    1220
6-24 months                   ki1135781-COHORTS          INDIA                          0                    0     5434    6941
6-24 months                   ki1135781-COHORTS          INDIA                          0                    1      667    6941
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
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0    10285   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    1     1716   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     4176   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1121   17298
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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/316c7c9a-3f5b-4a31-8a4c-a1e29c08bcce/0dd5e07b-a381-48e3-b1d6-7ff7e0f54bab/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/316c7c9a-3f5b-4a31-8a4c-a1e29c08bcce/0dd5e07b-a381-48e3-b1d6-7ff7e0f54bab/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/316c7c9a-3f5b-4a31-8a4c-a1e29c08bcce/0dd5e07b-a381-48e3-b1d6-7ff7e0f54bab/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/316c7c9a-3f5b-4a31-8a4c-a1e29c08bcce/0dd5e07b-a381-48e3-b1d6-7ff7e0f54bab/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1975751   0.1443685   0.2507818
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.3221533   0.1820733   0.4622333
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                    NA                0.3498298   0.2844365   0.4152230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                    NA                0.4827340   0.3291584   0.6363097
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1761905   0.1245544   0.2278266
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.3103448   0.1416127   0.4790770
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                    NA                0.0563910   0.0286240   0.0841579
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                    NA                0.1666667   0.0447254   0.2886080
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1481481   0.1057055   0.1905908
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1315789   0.0239273   0.2392306
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1187215   0.0757994   0.1616435
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1904762   0.0714912   0.3094612
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.4355443   0.3781857   0.4929029
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.4944293   0.3792362   0.6096224
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                0.5067611   0.4547757   0.5587466
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    NA                0.6138322   0.4756248   0.7520397
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                0.4779895   0.4097465   0.5462325
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    NA                0.6084821   0.5351826   0.6817816
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    NA                0.4307055   0.3615938   0.4998171
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                    NA                0.5133530   0.4026382   0.6240678
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3343224   0.2882368   0.3804080
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4287382   0.3554030   0.5020735
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.3035876   0.2458979   0.3612773
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4589352   0.3799586   0.5379119
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2910163   0.2514709   0.3305617
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3154935   0.2203117   0.4106752
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1572072   0.1285236   0.1858909
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3807001   0.2659511   0.4954491
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1311590   0.1051719   0.1571460
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2169973   0.1370368   0.2969578
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1917959   0.1754218   0.2081700
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2960325   0.2241813   0.3678838
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    NA                0.3324604   0.3141890   0.3507318
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                    NA                0.3922256   0.3378318   0.4466194
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.0611523   0.0302084   0.0920961
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.1287212   0.0462725   0.2111699
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0690515   0.0541525   0.0839505
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1424925   0.0872297   0.1977553
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5039286   0.4622067   0.5456505
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4953270   0.3980916   0.5925624
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    NA                0.3805173   0.3062500   0.4547845
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                    NA                0.5129433   0.4148123   0.6110742
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                0.0719412   0.0596689   0.0842134
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    NA                0.0451613   0.0354244   0.0548981
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0989054   0.0936122   0.1041987
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1291293   0.1112078   0.1470509
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1011267   0.0825215   0.1197319
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1789122   0.1363279   0.2214965
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                0.1744479   0.1650668   0.1838290
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    NA                0.2498476   0.2207027   0.2789926
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2957735   0.2789972   0.3125498
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4297148   0.3553318   0.5040978
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0351398   0.0191180   0.0511617
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1130711   0.0784652   0.1476770
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1647093   0.1584406   0.1709780
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1794362   0.1702204   0.1886519
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2226692   0.2073394   0.2379990
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3455037   0.3184897   0.3725178
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0648148   0.0319192   0.0977104
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1086957   0.0185762   0.1988151
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                    NA                0.1658537   0.1148329   0.2168744
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                    NA                0.1282051   0.0230653   0.2333450
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3154077   0.2607584   0.3700570
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2803754   0.1752077   0.3855430
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                0.3438571   0.2931303   0.3945840
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    NA                0.3181561   0.1891354   0.4471769
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                0.2263497   0.1693223   0.2833770
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    NA                0.1995702   0.1382898   0.2608505
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    NA                0.1964181   0.1405299   0.2523062
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                    NA                0.3093072   0.2021134   0.4165010
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1255893   0.0947619   0.1564168
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1216019   0.0892524   0.1539515
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0726578   0.0497060   0.0956095
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1079530   0.0382598   0.1776461
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0501618   0.0329398   0.0673838
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0923077   0.0218874   0.1627280
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0848322   0.0732195   0.0964449
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1007042   0.0546293   0.1467792
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    NA                0.1108045   0.0976298   0.1239792
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    NA                0.1255902   0.0800101   0.1711702
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2058507   0.1716113   0.2400900
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1157569   0.0539022   0.1776115
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                    NA                0.1079647   0.0590779   0.1568514
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                    NA                0.1074643   0.0433513   0.1715772
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                0.0639845   0.0523813   0.0755877
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    NA                0.0392157   0.0294766   0.0489548
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0322771   0.0291218   0.0354324
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0295535   0.0201316   0.0389754
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                0.0852671   0.0780661   0.0924681
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    NA                0.0560835   0.0392772   0.0728899
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0966578   0.0857540   0.1075617
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0607919   0.0245168   0.0970670
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0796730   0.0749530   0.0843930
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0543194   0.0490435   0.0595953
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0283881   0.0224575   0.0343187
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0185883   0.0110479   0.0261287
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1655000   0.1139637   0.2170363
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.2747704   0.1398985   0.4096423
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                    NA                0.2487989   0.1882171   0.3093807
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3870923   0.2249802   0.5492045
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1352657   0.0885757   0.1819557
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2857143   0.1180282   0.4534004
6-24 months                   ki0047075b-MAL-ED          PERU                           0                    NA                0.0550847   0.0259232   0.0842463
6-24 months                   ki0047075b-MAL-ED          PERU                           1                    NA                0.1470588   0.0277921   0.2663256
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1385281   0.0938935   0.1831627
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1785714   0.0364368   0.3207061
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1019417   0.0605388   0.1433447
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1794872   0.0587994   0.3001750
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2381781   0.1889795   0.2873768
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3689437   0.2576652   0.4802221
6-24 months                   ki1000108-IRC              INDIA                          0                    NA                0.2953527   0.2479891   0.3427163
6-24 months                   ki1000108-IRC              INDIA                          1                    NA                0.4081312   0.2711085   0.5451539
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                0.4039067   0.3371016   0.4707119
6-24 months                   ki1000109-EE               PAKISTAN                       1                    NA                0.4972144   0.4216790   0.5727498
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    NA                0.3681541   0.2951397   0.4411684
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                    NA                0.3534978   0.2382767   0.4687189
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2731278   0.2346151   0.3116405
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3913995   0.3202898   0.4625091
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2996698   0.2419670   0.3573726
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4399642   0.3620360   0.5178923
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2862524   0.2447688   0.3277360
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3647070   0.2678226   0.4615914
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1403264   0.1112776   0.1693753
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3014073   0.1870379   0.4157767
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1162073   0.0910885   0.1413261
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2211471   0.1397900   0.3025041
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1523611   0.1361009   0.1686213
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2657694   0.1904212   0.3411177
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    NA                0.3053301   0.2870231   0.3236370
6-24 months                   ki1101329-Keneba           GAMBIA                         1                    NA                0.4046389   0.3478404   0.4614373
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.0612828   0.0289255   0.0936401
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.1579189   0.0705061   0.2453317
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.1766281   0.1515681   0.2016880
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.4177663   0.3039251   0.5316076
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4693174   0.4252681   0.5133667
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4957817   0.3918342   0.5997291
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    NA                0.3290327   0.2551844   0.4028810
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                    NA                0.4776488   0.3748437   0.5804538
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0913304   0.0855851   0.0970757
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1341757   0.1138929   0.1544584
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1012942   0.0816804   0.1209080
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2003663   0.1556611   0.2450715
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                0.1090792   0.1012564   0.1169020
6-24 months                   ki1135781-COHORTS          INDIA                          1                    NA                0.2212091   0.1932802   0.2491379
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2566623   0.2400120   0.2733126
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4335644   0.3583098   0.5088190
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0423576   0.0249456   0.0597696
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1307089   0.0925984   0.1688194
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1430569   0.1363526   0.1497612
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2119707   0.1997145   0.2242270
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2106283   0.1954911   0.2257654
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3380604   0.3109215   0.3651993


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2205323   0.1703290   0.2707357
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3699187   0.3094659   0.4303715
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1924686   0.1423823   0.2425550
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0695364   0.0408008   0.0982721
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1461039   0.1065934   0.1856144
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1302682   0.0893541   0.1711823
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4510870   0.4001777   0.5019962
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.5207824   0.4723080   0.5692568
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       NA                   NA                0.5384615   0.4880726   0.5888505
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.4535714   0.3951549   0.5119879
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3615180   0.3107193   0.4123167
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3602015   0.3129196   0.4074834
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2956811   0.2591967   0.3321655
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1988255   0.1828010   0.2148500
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3392608   0.3219301   0.3565915
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0830671   0.0524436   0.1136905
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0850857   0.0676201   0.1025513
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5015152   0.4633406   0.5396897
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.4291045   0.3697365   0.4884725
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0716952   0.0597165   0.0836739
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1020019   0.0969221   0.1070817
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1193694   0.1019512   0.1367875
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          NA                   NA                0.1836020   0.1746179   0.1925860
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3034117   0.2870099   0.3198136
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0669056   0.0499685   0.0838427
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1693995   0.1641138   0.1746853
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2577835   0.2441424   0.2714247
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0725191   0.0410556   0.1039825
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1598361   0.1137612   0.2059110
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3085714   0.2601110   0.3570318
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          NA                   NA                0.3410256   0.2939169   0.3881343
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       NA                   NA                0.2160000   0.1742941   0.2577059
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2282609   0.1786550   0.2778667
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1255940   0.0954030   0.1557851
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0787671   0.0569010   0.1006332
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0541728   0.0371844   0.0711612
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0858586   0.0745914   0.0971258
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1117987   0.0992515   0.1243458
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1915888   0.1611224   0.2220551
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1161049   0.0776073   0.1546024
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0637570   0.0524446   0.0750694
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0319976   0.0290150   0.0349802
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0820276   0.0753613   0.0886940
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0947298   0.0842456   0.1052141
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0717008   0.0680635   0.0753382
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0256203   0.0209093   0.0303314
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1791667   0.1305478   0.2277856
6-24 months                   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2723404   0.2153029   0.3293779
6-24 months                   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1531915   0.1070438   0.1993392
6-24 months                   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0666667   0.0368579   0.0964755
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1428571   0.1001583   0.1855560
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1142857   0.0743652   0.1542062
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months                   ki1000108-IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months                   ki1000109-EE               PAKISTAN                       NA                   NA                0.4304813   0.3802326   0.4807300
6-24 months                   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.3644068   0.3028753   0.4259382
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3059755   0.2638053   0.3481458
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2933579   0.2549918   0.3317241
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1605550   0.1445335   0.1765765
6-24 months                   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3166545   0.2992274   0.3340815
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0830325   0.0504792   0.1155858
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2317820   0.2038933   0.2596707
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4728814   0.4325613   0.5132014
6-24 months                   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3849206   0.3247254   0.4451159
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0958853   0.0903360   0.1014347
6-24 months                   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1262295   0.1075861   0.1448729
6-24 months                   ki1135781-COHORTS          INDIA                          NA                   NA                0.1226048   0.1148883   0.1303213
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months                   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0774818   0.0592383   0.0957254
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1640074   0.1578946   0.1701202
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2473297   0.2337864   0.2608729


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.6305358   0.9769439   2.7213919
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                    0                 1.3799113   0.9509643   2.0023415
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                    0                 1.7614166   0.9497737   3.2666607
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                    0                 2.9555556   1.2235735   7.1391780
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.8881579   0.3732647   2.1133113
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 1.6043956   0.7795781   3.3018954
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.1351987   0.8686517   1.4835362
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    0                 1.2112852   0.9456203   1.5515867
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    0                 1.2730031   1.0573145   1.5326915
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                    0                 1.1918887   0.9104523   1.5603218
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.2824096   1.1498369   1.4302675
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.5117060   1.1695889   1.9538959
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.0841092   0.7786137   1.5094685
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 2.4216448   1.7052290   3.4390475
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.6544607   1.0889858   2.5135682
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.5434772   1.1932799   1.9964485
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                    0                 1.1797663   1.0164933   1.3692649
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 2.1049292   0.9267036   4.7811693
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 2.0635687   1.3712853   3.1053462
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.9829309   0.7941478   1.2165912
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                    0                 1.3480157   1.0254580   1.7720340
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    0                 0.6277532   0.4876567   0.8080974
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.3055839   1.1251494   1.5149539
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.7691889   1.3110459   2.3874291
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    0                 1.4322189   1.2596713   1.6284018
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.4528509   1.2111070   1.7428483
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                    0                 3.2177469   1.8590836   5.5693543
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.0894113   1.0234853   1.1595837
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.5516459   1.4021034   1.7171379
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.6770186   0.6343906   4.4332175
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                    0                 0.7730015   0.3219485   1.8559842
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.8889299   0.5881205   1.3435960
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    0                 0.9252567   0.6008264   1.4248708
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    0                 0.8816897   0.5931370   1.3106191
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                    0                 1.5747391   1.0042997   2.4691865
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.9682505   0.8216866   1.1409569
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.4857735   0.7229847   3.0533464
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.8401985   0.7971526   4.2480332
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1870991   0.7363707   1.9137159
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    0                 1.1334395   0.7737097   1.6604226
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.5623342   0.3212850   0.9842346
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                    0                 0.9953653   0.4693016   2.1111206
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    0                 0.6128938   0.4574491   0.8211596
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9156196   0.6559724   1.2780405
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    0                 0.6577393   0.4817640   0.8979935
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.6289389   0.3426467   1.1544373
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.6817798   0.6087308   0.7635948
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.6547914   0.4130088   1.0381180
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.6602444   0.9287194   2.9679702
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                    0                 1.5558444   0.9577028   2.5275603
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                    0                 2.1122449   1.0691581   4.1729830
6-24 months                   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED          PERU                           1                    0                 2.6696833   1.0135461   7.0319529
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.2890625   0.5461939   3.0422936
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 1.7606837   0.8026463   3.8622332
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.5490240   1.0749133   2.2322501
6-24 months                   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-IRC              INDIA                          1                    0                 1.3818435   0.9517549   2.0062849
6-24 months                   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE               PAKISTAN                       1                    0                 1.2310129   0.9837992   1.5403477
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                    0                 0.9601898   0.6554172   1.4066835
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.4330268   1.2162026   1.6885063
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.4681631   1.1296020   1.9081966
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.2740750   0.9407990   1.7254133
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 2.1479010   1.3944891   3.3083649
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.9030390   1.2421936   2.9154534
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.7443390   1.2883565   2.3617055
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1101329-Keneba           GAMBIA                         1                    0                 1.3252506   1.1377231   1.5436876
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 2.5768884   1.1974857   5.5452469
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 2.3652319   1.7311580   3.2315491
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0563888   0.8386292   1.3306921
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                    0                 1.4516756   1.0622613   1.9838452
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.4691246   1.2472614   1.7304528
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.9780624   1.4735155   2.6553715
6-24 months                   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          INDIA                          1                    0                 2.0279668   1.7543462   2.3442634
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.6892408   1.4040246   2.0323964
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                    0                 3.0858449   1.8641520   5.1081879
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.4817236   1.3784816   1.5926979
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.6050098   1.4452944   1.7823749


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0229572   -0.0033478    0.0492622
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0200889   -0.0091842    0.0493621
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0162781   -0.0058443    0.0384006
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0131454   -0.0022995    0.0285904
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0020443   -0.0163339    0.0122454
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0115467   -0.0090588    0.0321522
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0155427   -0.0112780    0.0423633
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                 0.0140213   -0.0045405    0.0325830
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0604720    0.0158445    0.1050996
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0228659   -0.0149996    0.0607315
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0271956    0.0134643    0.0409269
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0566139    0.0180350    0.0951928
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0046647   -0.0113746    0.0207041
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0203764    0.0082307    0.0325222
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0120771    0.0002890    0.0238652
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0070296    0.0019878    0.0120715
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0068004    0.0005015    0.0130993
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0219148    0.0006948    0.0431349
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0160342    0.0070791    0.0249893
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0024134   -0.0193157    0.0144888
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0485872    0.0012519    0.0959226
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0002459   -0.0006310    0.0001391
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0030965    0.0012037    0.0049892
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0182427    0.0071894    0.0292959
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0091540    0.0054801    0.0128280
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0076383    0.0031773    0.0120992
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0317658    0.0165702    0.0469613
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0046902    0.0012286    0.0081519
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0351144    0.0264102    0.0438185
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0077043   -0.0092607    0.0246693
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0060176   -0.0247773    0.0127421
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0068363   -0.0308457    0.0171730
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                -0.0028315   -0.0210634    0.0154005
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                -0.0103497   -0.0471192    0.0264199
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0318428   -0.0020394    0.0657250
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0000047   -0.0055294    0.0055388
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0061094   -0.0046841    0.0169028
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0040110   -0.0029505    0.0109724
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0010264   -0.0022069    0.0042597
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0009942   -0.0032585    0.0052470
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0142619   -0.0259800   -0.0025438
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0081402   -0.0225913    0.0388718
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0002275   -0.0006023    0.0001473
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0002795   -0.0012233    0.0006643
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                -0.0032395   -0.0052726   -0.0012064
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0019280   -0.0041547    0.0002986
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0079721   -0.0102189   -0.0057253
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0027678   -0.0054748   -0.0000608
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0136667   -0.0106608    0.0379942
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0235415   -0.0046024    0.0516854
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0179258   -0.0037337    0.0395852
6-24 months                   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0115819   -0.0043035    0.0274673
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0043290   -0.0118481    0.0205061
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0123440   -0.0082762    0.0329641
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0272374    0.0014752    0.0529996
6-24 months                   ki1000108-IRC              INDIA                          0                    NA                 0.0144034   -0.0040273    0.0328341
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                 0.0265745   -0.0184799    0.0716290
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0037473   -0.0427218    0.0352273
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0328477    0.0155415    0.0501539
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0560516    0.0173352    0.0947679
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0071055   -0.0103956    0.0246067
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0206492    0.0075805    0.0337178
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0152995    0.0031049    0.0274941
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0081939    0.0028328    0.0135550
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0113244    0.0047048    0.0179440
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0217497   -0.0007781    0.0442776
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0551539    0.0354121    0.0748958
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0035639   -0.0147916    0.0219195
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0558879    0.0078633    0.1039125
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0045550    0.0023614    0.0067486
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0249353    0.0124578    0.0374127
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.0135256    0.0099272    0.0171240
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0099806    0.0052959    0.0146654
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0351243    0.0188728    0.0513758
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0209505    0.0167759    0.0251252
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0367014    0.0279361    0.0454667


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.1040991   -0.0222606    0.2148397
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0543064   -0.0281326    0.1301351
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0845756   -0.0365399    0.1915392
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                    NA                 0.1890440   -0.0502559    0.3738197
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0139918   -0.1166164    0.0792010
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0886382   -0.0819673    0.2323425
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0344560   -0.0269739    0.0922115
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                 0.0269235   -0.0094824    0.0620164
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.1123052    0.0243827    0.1923041
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0504131   -0.0370132    0.1304688
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0752261    0.0401831    0.1089896
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1571728    0.0432520    0.2575290
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0157762   -0.0399856    0.0685482
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1147428    0.0450505    0.1793489
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0843162   -0.0007806    0.1621772
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0353558    0.0097522    0.0602974
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0200448    0.0013021    0.0384358
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.2638208   -0.0218096    0.4696078
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.1884479    0.0918872    0.2747412
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0048123   -0.0390889    0.0283337
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.1132293   -0.0047086    0.2173231
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0034305   -0.0083948    0.0015094
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0303570    0.0116692    0.0486914
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1528253    0.0571335    0.2388053
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0498581    0.0297181    0.0695800
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0251746    0.0103670    0.0397605
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.4747850    0.2374926    0.6382320
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0276874    0.0070326    0.0479125
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1362164    0.1018296    0.1692867
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.1062378   -0.1560655    0.3090263
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0376485   -0.1615715    0.0730537
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0221547   -0.1029853    0.0527523
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                -0.0083029   -0.0632055    0.0437646
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                -0.0479151   -0.2324764    0.1090085
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1395018   -0.0209793    0.2747579
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0000373   -0.0450113    0.0431440
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0775624   -0.0685342    0.2036838
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0740401   -0.0616406    0.1923804
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0119544   -0.0264075    0.0488826
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0088929   -0.0298805    0.0462065
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0744401   -0.1367118   -0.0155797
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0701109   -0.2369705    0.3009584
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0035684   -0.0089897    0.0018238
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0087340   -0.0386515    0.0203217
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                -0.0394927   -0.0643900   -0.0151777
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0203529   -0.0440428    0.0027995
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1111861   -0.1420578   -0.0811489
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1080311   -0.2160750   -0.0095865
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0762793   -0.0687755    0.2016471
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0864416   -0.0223762    0.1836772
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.1170156   -0.0327800    0.2450846
6-24 months                   ki0047075b-MAL-ED          PERU                           0                    NA                 0.1737288   -0.0873034    0.3720943
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0303030   -0.0895376    0.1369622
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1080097   -0.0882169    0.2688528
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1026217    0.0005325    0.1942832
6-24 months                   ki1000108-IRC              INDIA                          0                    NA                 0.0464991   -0.0148490    0.1041387
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                 0.0617322   -0.0491028    0.1608577
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0102832   -0.1231083    0.0912077
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1073541    0.0534823    0.1581597
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1575716    0.0415120    0.2595779
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0242214   -0.0372435    0.0820441
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1282751    0.0453416    0.2040041
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1163401    0.0205850    0.2027335
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0510348    0.0172936    0.0836175
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0357627    0.0146428    0.0564299
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.2619421   -0.0408978    0.4766735
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.2379561    0.1587031    0.3097432
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0075367   -0.0320443    0.0455996
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.1451934    0.0106373    0.2614494
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0475045    0.0244822    0.0699835
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1975392    0.0959365    0.2877233
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.1103185    0.0810966    0.1386112
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0374308    0.0197338    0.0548083
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.4533226    0.2370581    0.6082845
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1277413    0.1024041    0.1523633
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1483905    0.1123424    0.1829747

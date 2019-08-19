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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        enstunt    ever_co   n_cell       n
------------  -------------------------  -----------------------------  --------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      193     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1       24     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0       31     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1       15     263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      207     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       24     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        1     233
0-24 months   ki0047075b-MAL-ED          INDIA                          0                0      173     251
0-24 months   ki0047075b-MAL-ED          INDIA                          0                1       36     251
0-24 months   ki0047075b-MAL-ED          INDIA                          1                0       24     251
0-24 months   ki0047075b-MAL-ED          INDIA                          1                1       18     251
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                0      202     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                1       10     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                0       17     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                1       11     240
0-24 months   ki0047075b-MAL-ED          PERU                           0                0      260     302
0-24 months   ki0047075b-MAL-ED          PERU                           0                1        6     302
0-24 months   ki0047075b-MAL-ED          PERU                           1                0       30     302
0-24 months   ki0047075b-MAL-ED          PERU                           1                1        6     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      263     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       16     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       27     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        6     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      203     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       16     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       35     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        7     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0      249     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1       49     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       38     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1       37     373
0-24 months   ki1000108-IRC              INDIA                          0                0      307     410
0-24 months   ki1000108-IRC              INDIA                          0                1       55     410
0-24 months   ki1000108-IRC              INDIA                          1                0       27     410
0-24 months   ki1000108-IRC              INDIA                          1                1       21     410
0-24 months   ki1000109-EE               PAKISTAN                       0                0      168     379
0-24 months   ki1000109-EE               PAKISTAN                       0                1       81     379
0-24 months   ki1000109-EE               PAKISTAN                       1                0       67     379
0-24 months   ki1000109-EE               PAKISTAN                       1                1       63     379
0-24 months   ki1000109-ResPak           PAKISTAN                       0                0      187     278
0-24 months   ki1000109-ResPak           PAKISTAN                       0                1       15     278
0-24 months   ki1000109-ResPak           PAKISTAN                       1                0       51     278
0-24 months   ki1000109-ResPak           PAKISTAN                       1                1       25     278
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                0      912    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                1      177    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                0      250    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                1      174    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                0      189     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                1       68     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                0       74     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                1       87     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0      435     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1       93     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       52     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1       44     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      571     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1       63     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0       39     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       27     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      612     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       41     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0       75     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       30     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     2143    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       90    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      134    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       29    2396
0-24 months   ki1101329-Keneba           GAMBIA                         0                0     2256    2912
0-24 months   ki1101329-Keneba           GAMBIA                         0                1      326    2912
0-24 months   ki1101329-Keneba           GAMBIA                         1                0      224    2912
0-24 months   ki1101329-Keneba           GAMBIA                         1                1      106    2912
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                0      230     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                1        9     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                0       62     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                1       14     315
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                0     2431    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                1      102    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                0      427    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                1      305    3265
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                0      382     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                1      153     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                0       27     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                1       40     602
0-24 months   ki1114097-CMIN             BANGLADESH                     0                0      125     271
0-24 months   ki1114097-CMIN             BANGLADESH                     0                1       43     271
0-24 months   ki1114097-CMIN             BANGLADESH                     1                0       54     271
0-24 months   ki1114097-CMIN             BANGLADESH                     1                1       49     271
0-24 months   ki1114097-CMIN             BRAZIL                         0                0      113     119
0-24 months   ki1114097-CMIN             BRAZIL                         0                1        1     119
0-24 months   ki1114097-CMIN             BRAZIL                         1                0        5     119
0-24 months   ki1114097-CMIN             BRAZIL                         1                1        0     119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                0     1184    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                1       61    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                0      201    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                1       61    1507
0-24 months   ki1114097-CMIN             PERU                           0                0      785     929
0-24 months   ki1114097-CMIN             PERU                           0                1       18     929
0-24 months   ki1114097-CMIN             PERU                           1                0      113     929
0-24 months   ki1114097-CMIN             PERU                           1                1       13     929
0-24 months   ki1114097-CONTENT          PERU                           0                0      195     215
0-24 months   ki1114097-CONTENT          PERU                           0                1        2     215
0-24 months   ki1114097-CONTENT          PERU                           1                0       16     215
0-24 months   ki1114097-CONTENT          PERU                           1                1        2     215
0-24 months   ki1119695-PROBIT           BELARUS                        0                0    16715   16897
0-24 months   ki1119695-PROBIT           BELARUS                        0                1       27   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                0      155   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                1        0   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0    12124   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1      393   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0     1229   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1      189   13935
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                0      934    1349
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                1       91    1349
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                0      266    1349
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                1       58    1349
0-24 months   ki1135781-COHORTS          INDIA                          0                0     6095    7402
0-24 months   ki1135781-COHORTS          INDIA                          0                1      393    7402
0-24 months   ki1135781-COHORTS          INDIA                          1                0      645    7402
0-24 months   ki1135781-COHORTS          INDIA                          1                1      269    7402
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                0     2382    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                1      485    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                0      103    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                1       75    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         0                0      523     840
0-24 months   ki1148112-LCNI-5           MALAWI                         0                1        8     840
0-24 months   ki1148112-LCNI-5           MALAWI                         1                0      274     840
0-24 months   ki1148112-LCNI-5           MALAWI                         1                1       35     840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0    17706   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1      757   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     6837   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     1627   26927
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0     3508    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1      378    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     1056    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      500    5442
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0      216     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1        1     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0       38     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        8     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                0      208     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                0       25     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0     233
0-6 months    ki0047075b-MAL-ED          INDIA                          0                0      203     251
0-6 months    ki0047075b-MAL-ED          INDIA                          0                1        6     251
0-6 months    ki0047075b-MAL-ED          INDIA                          1                0       30     251
0-6 months    ki0047075b-MAL-ED          INDIA                          1                1       12     251
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                0      212     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                0       21     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                1        7     240
0-6 months    ki0047075b-MAL-ED          PERU                           0                0      266     302
0-6 months    ki0047075b-MAL-ED          PERU                           0                1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           1                0       34     302
0-6 months    ki0047075b-MAL-ED          PERU                           1                1        2     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      279     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       28     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        5     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      217     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        2     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       40     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        2     261
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0      285     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1        9     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0       52     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1       22     368
0-6 months    ki1000108-IRC              INDIA                          0                0      348     409
0-6 months    ki1000108-IRC              INDIA                          0                1       14     409
0-6 months    ki1000108-IRC              INDIA                          1                0       36     409
0-6 months    ki1000108-IRC              INDIA                          1                1       11     409
0-6 months    ki1000109-EE               PAKISTAN                       0                0      225     379
0-6 months    ki1000109-EE               PAKISTAN                       0                1       24     379
0-6 months    ki1000109-EE               PAKISTAN                       1                0      101     379
0-6 months    ki1000109-EE               PAKISTAN                       1                1       29     379
0-6 months    ki1000109-ResPak           PAKISTAN                       0                0      200     278
0-6 months    ki1000109-ResPak           PAKISTAN                       0                1        2     278
0-6 months    ki1000109-ResPak           PAKISTAN                       1                0       61     278
0-6 months    ki1000109-ResPak           PAKISTAN                       1                1       15     278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                0     1053    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                1       35    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0      345    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1       71    1504
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                0      257     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                1        0     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0      127     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1       32     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                0      515     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                1       13     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0       62     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1       32     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      623     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1       11     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0       47     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1       19     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      652     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1        1     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0       89     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1       16     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     2224    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        9    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      153    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       10    2396
0-6 months    ki1101329-Keneba           GAMBIA                         0                0     2155    2433
0-6 months    ki1101329-Keneba           GAMBIA                         0                1       40    2433
0-6 months    ki1101329-Keneba           GAMBIA                         1                0      208    2433
0-6 months    ki1101329-Keneba           GAMBIA                         1                1       30    2433
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                0      221     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                1        2     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                0       66     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                1        6     295
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                0      528     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                1        7     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                0       50     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                1       17     602
0-6 months    ki1114097-CMIN             BANGLADESH                     0                0      165     271
0-6 months    ki1114097-CMIN             BANGLADESH                     0                1        3     271
0-6 months    ki1114097-CMIN             BANGLADESH                     1                0       91     271
0-6 months    ki1114097-CMIN             BANGLADESH                     1                1       12     271
0-6 months    ki1114097-CMIN             BRAZIL                         0                0      114     119
0-6 months    ki1114097-CMIN             BRAZIL                         0                1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         1                0        5     119
0-6 months    ki1114097-CMIN             BRAZIL                         1                1        0     119
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                0      840     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                1        1     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                0      118     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                1        5     964
0-6 months    ki1114097-CMIN             PERU                           0                0      652     699
0-6 months    ki1114097-CMIN             PERU                           0                1        6     699
0-6 months    ki1114097-CMIN             PERU                           1                0       36     699
0-6 months    ki1114097-CMIN             PERU                           1                1        5     699
0-6 months    ki1114097-CONTENT          PERU                           0                0      197     215
0-6 months    ki1114097-CONTENT          PERU                           0                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           1                0       18     215
0-6 months    ki1114097-CONTENT          PERU                           1                1        0     215
0-6 months    ki1119695-PROBIT           BELARUS                        0                0    16721   16893
0-6 months    ki1119695-PROBIT           BELARUS                        0                1       19   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                0      153   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                1        0   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0    12429   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1       59   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0     1244   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1      108   13840
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                0      906    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                1       17    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                0      136    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                1        4    1063
0-6 months    ki1135781-COHORTS          INDIA                          0                0     6237    7127
0-6 months    ki1135781-COHORTS          INDIA                          0                1       48    7127
0-6 months    ki1135781-COHORTS          INDIA                          1                0      705    7127
0-6 months    ki1135781-COHORTS          INDIA                          1                1      137    7127
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                0     2815    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                1       52    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                0      157    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                1       20    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         0                0      175     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                0       97     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                1        0     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0    18284   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1      134   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     7480   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      922   26820
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0     3640    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1       15    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     1317    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1      120    5092
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      177     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1       24     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0       27     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1       11     239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      185     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       20     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        1     207
6-24 months   ki0047075b-MAL-ED          INDIA                          0                0      162     235
6-24 months   ki0047075b-MAL-ED          INDIA                          0                1       34     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                0       26     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                1       13     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                0      198     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                1       10     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                0       21     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                1        6     235
6-24 months   ki0047075b-MAL-ED          PERU                           0                0      230     270
6-24 months   ki0047075b-MAL-ED          PERU                           0                1        6     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                0       29     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                1        5     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      217     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       16     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       23     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        3     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      190     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       16     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       34     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        5     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0      254     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1       44     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       49     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1       26     373
6-24 months   ki1000108-IRC              INDIA                          0                0      316     410
6-24 months   ki1000108-IRC              INDIA                          0                1       46     410
6-24 months   ki1000108-IRC              INDIA                          1                0       30     410
6-24 months   ki1000108-IRC              INDIA                          1                1       18     410
6-24 months   ki1000109-EE               PAKISTAN                       0                0      169     373
6-24 months   ki1000109-EE               PAKISTAN                       0                1       76     373
6-24 months   ki1000109-EE               PAKISTAN                       1                0       72     373
6-24 months   ki1000109-EE               PAKISTAN                       1                1       56     373
6-24 months   ki1000109-ResPak           PAKISTAN                       0                0      155     230
6-24 months   ki1000109-ResPak           PAKISTAN                       0                1       14     230
6-24 months   ki1000109-ResPak           PAKISTAN                       1                0       46     230
6-24 months   ki1000109-ResPak           PAKISTAN                       1                1       15     230
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                0      841    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                1      165    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                0      234    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                1      149    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                0      176     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                1       68     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                0       80     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                1       77     401
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0      371     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1       85     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       57     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1       29     542
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      496     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1       57     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0       43     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       18     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      586     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       41     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0       81     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       22     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1791    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       88    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      113    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       25    2017
6-24 months   ki1101329-Keneba           GAMBIA                         0                0     2115    2735
6-24 months   ki1101329-Keneba           GAMBIA                         0                1      314    2735
6-24 months   ki1101329-Keneba           GAMBIA                         1                0      218    2735
6-24 months   ki1101329-Keneba           GAMBIA                         1                1       88    2735
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                0      203     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                1        8     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                0       56     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                1       10     277
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                0     2431    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                1      102    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                0      427    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                1      305    3265
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                0      373     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                1      152     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                0       27     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                1       38     590
6-24 months   ki1114097-CMIN             BANGLADESH                     0                0      115     251
6-24 months   ki1114097-CMIN             BANGLADESH                     0                1       43     251
6-24 months   ki1114097-CMIN             BANGLADESH                     1                0       50     251
6-24 months   ki1114097-CMIN             BANGLADESH                     1                1       43     251
6-24 months   ki1114097-CMIN             BRAZIL                         0                0      113     119
6-24 months   ki1114097-CMIN             BRAZIL                         0                1        1     119
6-24 months   ki1114097-CMIN             BRAZIL                         1                0        5     119
6-24 months   ki1114097-CMIN             BRAZIL                         1                1        0     119
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                0     1164    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                1       61    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                0      198    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                1       58    1481
6-24 months   ki1114097-CMIN             PERU                           0                0      744     878
6-24 months   ki1114097-CMIN             PERU                           0                1       15     878
6-24 months   ki1114097-CMIN             PERU                           1                0      110     878
6-24 months   ki1114097-CMIN             PERU                           1                1        9     878
6-24 months   ki1114097-CONTENT          PERU                           0                0      195     215
6-24 months   ki1114097-CONTENT          PERU                           0                1        2     215
6-24 months   ki1114097-CONTENT          PERU                           1                0       16     215
6-24 months   ki1114097-CONTENT          PERU                           1                1        2     215
6-24 months   ki1119695-PROBIT           BELARUS                        0                0    16449   16598
6-24 months   ki1119695-PROBIT           BELARUS                        0                1        9   16598
6-24 months   ki1119695-PROBIT           BELARUS                        1                0      140   16598
6-24 months   ki1119695-PROBIT           BELARUS                        1                1        0   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0     9213   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1      346   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0     1045   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       89   10693
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                0      828    1218
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                1       81    1218
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                0      254    1218
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                1       55    1218
6-24 months   ki1135781-COHORTS          INDIA                          0                0     5720    6938
6-24 months   ki1135781-COHORTS          INDIA                          0                1      381    6938
6-24 months   ki1135781-COHORTS          INDIA                          1                0      641    6938
6-24 months   ki1135781-COHORTS          INDIA                          1                1      196    6938
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                0     2173    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                1      472    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                0       99    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                1       64    2808
6-24 months   ki1148112-LCNI-5           MALAWI                         0                0      510     826
6-24 months   ki1148112-LCNI-5           MALAWI                         0                1        8     826
6-24 months   ki1148112-LCNI-5           MALAWI                         1                0      273     826
6-24 months   ki1148112-LCNI-5           MALAWI                         1                1       35     826
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0    11399   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1      646   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     4379   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      856   17280
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0     3506    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1      370    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     1121    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      432    5429


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/ee4a64d6-f606-4820-948b-0168a6e95f55/943c5bb6-330c-49b9-82d4-ec778d9b04bb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ee4a64d6-f606-4820-948b-0168a6e95f55/943c5bb6-330c-49b9-82d4-ec778d9b04bb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ee4a64d6-f606-4820-948b-0168a6e95f55/943c5bb6-330c-49b9-82d4-ec778d9b04bb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ee4a64d6-f606-4820-948b-0168a6e95f55/943c5bb6-330c-49b9-82d4-ec778d9b04bb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1104335   0.0685268   0.1523403
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.3192995   0.1763986   0.4622004
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.1749849   0.1233907   0.2265792
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.4162441   0.2646238   0.5678645
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0475290   0.0188435   0.0762144
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.4437880   0.2473559   0.6402201
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0225564   0.0046830   0.0404298
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.1666667   0.0447254   0.2886080
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0573477   0.0300216   0.0846737
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1818182   0.0500132   0.3136232
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0730594   0.0385272   0.1075915
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1666667   0.0537415   0.2795918
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1658631   0.1234908   0.2082354
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.4814004   0.3618275   0.6009732
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1531211   0.1160031   0.1902391
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.4238167   0.2820340   0.5655993
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.3305010   0.2719431   0.3890588
0-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.4997125   0.4141468   0.5852781
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.0729541   0.0371267   0.1087815
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.3256162   0.2168723   0.4343600
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1618190   0.1317969   0.1918411
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4112776   0.3282340   0.4943213
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2648572   0.2109487   0.3187657
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5357422   0.4578075   0.6136768
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1767077   0.1441419   0.2092736
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4454158   0.3471829   0.5436488
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0989922   0.0756799   0.1223045
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4357724   0.3207299   0.5508148
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0626992   0.0440753   0.0813230
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2852791   0.1965059   0.3740522
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0404243   0.0322672   0.0485815
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1698189   0.1105283   0.2291095
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1254643   0.1126799   0.1382488
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3360327   0.2846464   0.3874191
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.0376569   0.0134841   0.0618297
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.1842105   0.0969178   0.2715032
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0412306   0.0304671   0.0519942
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.4056420   0.2979195   0.5133645
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2866017   0.2481579   0.3250456
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6073719   0.4845130   0.7302307
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.2535312   0.1871826   0.3198799
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.4740950   0.3763476   0.5718424
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0491889   0.0371661   0.0612117
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2300925   0.1783332   0.2818518
0-24 months   ki1114097-CMIN             PERU                           0                    NA                0.0224020   0.0121475   0.0326566
0-24 months   ki1114097-CMIN             PERU                           1                    NA                0.0994157   0.0454944   0.1533369
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0314090   0.0283509   0.0344672
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1327006   0.1145535   0.1508477
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0880926   0.0707490   0.1054361
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1852918   0.1425385   0.2280451
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0606022   0.0548014   0.0664030
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.2936932   0.2642831   0.3231033
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1693182   0.1555848   0.1830517
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4278194   0.3552276   0.5004113
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0150659   0.0046987   0.0254331
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1132686   0.0779114   0.1486258
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0411577   0.0380626   0.0442527
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1911395   0.1820763   0.2002027
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0974205   0.0867245   0.1081165
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3207569   0.2941164   0.3473975
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.0287081   0.0060242   0.0513921
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.2857143   0.1488178   0.4226108
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0306122   0.0108943   0.0503302
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2972973   0.1930165   0.4015781
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.0399335   0.0196785   0.0601884
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.1877745   0.0762742   0.2992747
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.0979183   0.0612072   0.1346293
0-6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.2308383   0.1586597   0.3030169
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0326563   0.0169856   0.0483270
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1758553   0.1027526   0.2489581
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0249717   0.0116259   0.0383174
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3284040   0.2324767   0.4243313
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0173897   0.0072138   0.0275656
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2704847   0.1626826   0.3782867
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0040305   0.0014020   0.0066589
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0613497   0.0245026   0.0981968
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0181436   0.0125471   0.0237400
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1477447   0.0981752   0.1973143
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0130841   0.0034471   0.0227212
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2537313   0.1494501   0.3580126
0-6 months    ki1114097-CMIN             PERU                           0                    NA                0.0091185   0.0018505   0.0163866
0-6 months    ki1114097-CMIN             PERU                           1                    NA                0.1219512   0.0217162   0.2221862
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0047070   0.0035077   0.0059064
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0807488   0.0659127   0.0955848
0-6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0076253   0.0054733   0.0097773
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.1625055   0.1374448   0.1875662
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0181552   0.0132694   0.0230411
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1132840   0.0637863   0.1627816
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0073154   0.0060395   0.0085913
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1086653   0.1015959   0.1157347
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0041077   0.0018442   0.0063712
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0831557   0.0660616   0.1002499
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1198968   0.0749573   0.1648363
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.3187902   0.1683646   0.4692159
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.1735604   0.1203198   0.2268011
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.2863413   0.1352610   0.4374217
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0480769   0.0189421   0.0772117
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2222222   0.0650725   0.3793720
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0254237   0.0053038   0.0455436
6-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.1470588   0.0277921   0.2663256
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0776699   0.0410454   0.1142944
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1282051   0.0230661   0.2333441
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1494194   0.1087763   0.1900626
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3353783   0.2268570   0.4438996
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1293884   0.0946722   0.1641046
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.3458945   0.2094532   0.4823358
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.3130012   0.2546379   0.3713645
6-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.4407369   0.3553445   0.5261293
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.0815222   0.0403740   0.1226705
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.2481913   0.1358512   0.3605314
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1624756   0.1357631   0.1891880
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3904794   0.3158898   0.4650689
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2810580   0.2245161   0.3375999
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4849620   0.4063878   0.5635363
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1876631   0.1518343   0.2234918
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3444167   0.2436406   0.4451929
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1033596   0.0779693   0.1287499
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3052405   0.1913850   0.4190959
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0656216   0.0462501   0.0849930
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2330494   0.1539143   0.3121845
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0470063   0.0374499   0.0565627
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1671238   0.1022533   0.2319943
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1287550   0.1154278   0.1420821
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2969326   0.2453515   0.3485137
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.0379147   0.0120979   0.0637315
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.1515152   0.0648566   0.2381737
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0411018   0.0303348   0.0518688
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.4057975   0.3000036   0.5115915
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2896191   0.2506722   0.3285661
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5998279   0.4753770   0.7242788
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.2718685   0.2018772   0.3418599
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.4614670   0.3586678   0.5642662
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0499269   0.0377227   0.0621310
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2251040   0.1734360   0.2767721
6-24 months   ki1114097-CMIN             PERU                           0                    NA                0.0197628   0.0098553   0.0296704
6-24 months   ki1114097-CMIN             PERU                           1                    NA                0.0756303   0.0280975   0.1231630
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0362414   0.0324975   0.0399854
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0773041   0.0616805   0.0929277
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0888213   0.0703602   0.1072823
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1811170   0.1372786   0.2249554
6-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0624328   0.0563648   0.0685007
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.2341952   0.2056338   0.2627566
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1785638   0.1639585   0.1931690
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3969845   0.3221716   0.4717973
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0154440   0.0048186   0.0260694
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1136364   0.0781713   0.1491014
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0536225   0.0492378   0.0580072
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1641350   0.1533922   0.1748777
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0955869   0.0849671   0.1062067
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2776162   0.2530164   0.3022160


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1482890   0.1052563   0.1913216
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2151394   0.1642023   0.2660766
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.0875000   0.0516764   0.1233236
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0397351   0.0176679   0.0618023
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0705128   0.0420601   0.0989655
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0881226   0.0536659   0.1225793
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2305630   0.1877616   0.2733644
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1853659   0.1477057   0.2230261
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.3799472   0.3310169   0.4288776
0-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1438849   0.1025533   0.1852165
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2319894   0.1917264   0.2722524
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3708134   0.3244530   0.4171738
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0496661   0.0409652   0.0583670
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1483516   0.1354394   0.1612639
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0730159   0.0442400   0.1017917
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1246554   0.1041227   0.1451882
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3205980   0.2832855   0.3579105
0-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3394834   0.2830004   0.3959663
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0809555   0.0671794   0.0947317
0-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.0333692   0.0218140   0.0449244
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0417653   0.0384437   0.0450870
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1104522   0.0937191   0.1271852
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0894353   0.0829338   0.0959368
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1839080   0.1701456   0.1976705
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0511905   0.0362780   0.0661030
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0885357   0.0846606   0.0924107
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1613377   0.1500063   0.1726692
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0717131   0.0397302   0.1036961
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0842391   0.0558231   0.1126551
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0611247   0.0378797   0.0843697
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.1398417   0.1048786   0.1748048
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0704787   0.0478990   0.0930584
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0723473   0.0519719   0.0927227
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0079299   0.0043777   0.0114821
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0287711   0.0221274   0.0354147
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0398671   0.0242254   0.0555088
0-6 months    ki1114097-CMIN             PERU                           NA                   NA                0.0157368   0.0065040   0.0249696
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120665   0.0102474   0.0138855
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0259576   0.0222658   0.0296495
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0236531   0.0182537   0.0290525
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0393736   0.0368903   0.0418569
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0265122   0.0211694   0.0318550
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1464435   0.1015265   0.1913605
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2000000   0.1487493   0.2512507
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.0680851   0.0358110   0.1003592
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0407407   0.0171167   0.0643648
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0857143   0.0505889   0.1208396
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1876676   0.1479906   0.2273445
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1560976   0.1209228   0.1912723
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.3538874   0.3052956   0.4024792
6-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1260870   0.0830938   0.1690801
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2260619   0.1909133   0.2612105
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3615960   0.3145115   0.4086805
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0560238   0.0459853   0.0660623
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1469835   0.1337108   0.1602563
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0649819   0.0359016   0.0940623
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1246554   0.1041227   0.1451882
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3220339   0.2842988   0.3597690
6-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3426295   0.2837999   0.4014590
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0803511   0.0665019   0.0942003
6-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.0273349   0.0165432   0.0381265
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0406808   0.0369363   0.0444253
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1116585   0.0939639   0.1293530
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0831652   0.0766672   0.0896632
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1908832   0.1763448   0.2054216
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0520581   0.0368996   0.0672166
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0869213   0.0822621   0.0915805
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1477252   0.1371297   0.1583206


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  2.891327    1.6048528    5.209059
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  2.378743    1.4813871    3.819675
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  9.337214    4.4117372   19.761729
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0                  7.388889    2.5129690   21.725568
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  3.170454    1.3315812    7.548756
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  2.281250    0.9986000    5.211397
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  2.902396    2.0325216    4.144558
0-24 months   ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                  2.767853    1.8341240    4.176932
0-24 months   ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1000109-EE               PAKISTAN                       1                    0                  1.511985    1.1813102    1.935223
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                  4.463303    2.4631989    8.087479
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                  2.541590    2.1798108    2.963414
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  2.022759    1.5755834    2.596849
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  2.520636    1.8906423    3.360554
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  4.402088    3.0947155    6.261765
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  4.549966    2.9571815    7.000649
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  4.200907    2.8068633    6.287311
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0                  2.678313    2.2291472    3.217984
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  4.891813    2.2026861   10.863933
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                  9.838370    6.7506941   14.338309
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  2.119219    1.6626545    2.701156
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                  1.869967    1.3395404    2.610429
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  4.677729    3.3554327    6.521111
0-24 months   ki1114097-CMIN             PERU                           0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1114097-CMIN             PERU                           1                    0                  4.437799    2.1821892    9.024911
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  4.224920    3.5721217    4.997016
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  2.103376    1.5557392    2.843788
0-24 months   ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1135781-COHORTS          INDIA                          1                    0                  4.846247    4.2204840    5.564790
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  2.526718    2.0944453    3.048209
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                  7.518204    3.5314685   16.005633
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  4.644078    4.2686340    5.052543
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  3.292499    2.8747582    3.770943
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0                  9.952381    3.9500653   25.075506
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  9.711712    4.6641201   20.221895
0-6 months    ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                  4.702182    2.1639040   10.217881
0-6 months    ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1000109-EE               PAKISTAN                       1                    0                  2.357459    1.4446202    3.847111
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  5.385040    3.2149346    9.019984
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 13.151069    7.1583497   24.160683
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 15.554267    7.6470628   31.637666
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 15.221541    6.2722592   36.939688
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0                  8.143099    5.1651738   12.837916
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 19.392324    8.3430058   45.075149
0-6 months    ki1114097-CMIN             PERU                           0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1114097-CMIN             PERU                           1                    0                 13.373984    4.2561946   42.024263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 17.154920   12.5303684   23.486244
0-6 months    ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1135781-COHORTS          INDIA                          1                    0                 21.311349   15.4516442   29.393222
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  6.239747    3.7341399   10.426616
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 14.854362   12.3463823   17.871800
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 20.243953   11.2756606   36.345332
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  2.658872    1.4511004    4.871891
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  1.649808    0.8929000    3.048344
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  4.622222    1.8213307   11.730400
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0                  5.784314    1.8626489   17.962743
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  1.650641    0.6409384    4.250979
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  2.244543    1.4749199    3.415759
6-24 months   ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                  2.673304    1.6644305    4.293692
6-24 months   ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1000109-EE               PAKISTAN                       1                    0                  1.408100    1.0765999    1.841673
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                  3.044463    1.5432424    6.006026
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                  2.403311    2.0363769    2.836363
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  1.725487    1.3324625    2.234440
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  1.835293    1.2945225    2.601964
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  2.953189    1.8928467    4.607518
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  3.551415    2.2642443    5.570312
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  3.555349    2.2941434    5.509901
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0                  2.306184    1.8842777    2.822558
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  3.996212    1.6422918    9.724040
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                  9.872977    6.8398652   14.251111
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  2.071092    1.6177821    2.651421
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                  1.697390    1.2069198    2.387179
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  4.508676    3.2246626    6.303964
6-24 months   ki1114097-CMIN             PERU                           0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1114097-CMIN             PERU                           1                    0                  3.826891    1.7127710    8.550526
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  2.133031    1.7000998    2.676209
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  2.039117    1.4850972    2.799815
6-24 months   ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1135781-COHORTS          INDIA                          1                    0                  3.751159    3.2108098    4.382443
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  2.223209    1.8111892    2.728956
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                  7.357954    3.4566776   15.662292
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  3.060933    2.7646949    3.388912
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  2.904333    2.5217444    3.344967


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0378554    0.0109490   0.0647619
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0401545    0.0109563   0.0693527
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0399710    0.0142043   0.0657378
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0171787    0.0015689   0.0327885
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0131652   -0.0016943   0.0280246
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0150632   -0.0043938   0.0345203
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0646999    0.0369011   0.0924988
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.0322448    0.0133069   0.0511826
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.0494463    0.0133835   0.0855090
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.0709308    0.0373657   0.1044959
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0701704    0.0521567   0.0881841
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1059562    0.0674893   0.1444232
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0428436    0.0248236   0.0608635
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0295792    0.0163862   0.0427723
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0309684    0.0175007   0.0444360
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0092418    0.0049848   0.0134987
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0228873    0.0165663   0.0292083
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.0353590    0.0124312   0.0582868
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0834248    0.0645666   0.1022830
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0339963    0.0179503   0.0500423
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.0859522    0.0393399   0.1325644
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0317666    0.0219674   0.0415658
0-24 months   ki1114097-CMIN             PERU                           0                    NA                0.0109672    0.0034161   0.0185183
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0103563    0.0084590   0.0122536
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0223596    0.0113849   0.0333344
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0288331    0.0247396   0.0329266
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0145898    0.0098495   0.0193302
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0361246    0.0221970   0.0500522
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0473780    0.0442865   0.0504694
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0639172    0.0554036   0.0724309
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.0430050    0.0169176   0.0690924
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0536269    0.0296470   0.0776068
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.0211912    0.0061078   0.0362746
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.0419234    0.0137488   0.0700981
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0378225    0.0208005   0.0548444
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0473756    0.0303107   0.0644405
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0254674    0.0135809   0.0373539
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0038994    0.0013207   0.0064781
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0106275    0.0062701   0.0149850
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0267830    0.0136505   0.0399155
0-6 months    ki1114097-CMIN             PERU                           0                    NA                0.0066182    0.0004040   0.0128325
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0073594    0.0058950   0.0088239
0-6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0183323    0.0151554   0.0215093
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0054979    0.0026538   0.0083419
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0320582    0.0297171   0.0343994
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0224045    0.0173066   0.0275023
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0265467    0.0011704   0.0519231
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0264396   -0.0011607   0.0540399
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0200082    0.0003147   0.0397017
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0153170   -0.0006592   0.0312932
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0080444   -0.0098296   0.0259183
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0382481    0.0139656   0.0625306
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.0267091    0.0086592   0.0447591
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.0408862    0.0051808   0.0765916
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.0445648    0.0122624   0.0768671
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0635863    0.0463623   0.0808104
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0805380    0.0413584   0.1197176
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0226690    0.0052373   0.0401008
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0187902    0.0064478   0.0311326
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0206798    0.0085756   0.0327840
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0090175    0.0043447   0.0136903
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0182286    0.0120499   0.0244072
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.0270673    0.0047788   0.0493557
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0835536    0.0649322   0.1021750
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0324148    0.0164333   0.0483962
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.0707610    0.0233935   0.1181284
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0304242    0.0206974   0.0401511
6-24 months   ki1114097-CMIN             PERU                           0                    NA                0.0075720    0.0008706   0.0142734
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0044394    0.0027189   0.0061599
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0228372    0.0109310   0.0347433
6-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0207324    0.0169802   0.0244846
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0123194    0.0075836   0.0170552
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0366141    0.0224339   0.0507942
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0332988    0.0298128   0.0367847
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0521383    0.0443479   0.0599287


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.2552815    0.0643285   0.4072645
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.1866441    0.0443035   0.3077846
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.4568120    0.1648086   0.6467238
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.4323308    0.0107995   0.6742336
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1867058   -0.0382149   0.3628992
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1709351   -0.0708039   0.3581004
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2806171    0.1571779   0.3859775
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1739521    0.0695480   0.2666412
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.1301398    0.0296098   0.2202552
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.4929691    0.2570255   0.6539850
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3024725    0.2463262   0.3544360
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2857400    0.1753568   0.3813477
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1951416    0.1119130   0.2705702
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2300607    0.1286680   0.3196548
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3306201    0.1911880   0.4460154
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1860780    0.1023557   0.2619917
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1542775    0.1121185   0.1944347
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.4842641    0.1540456   0.6855818
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.6692434    0.5775204   0.7410528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1060402    0.0548260   0.1544793
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.2531852    0.1039274   0.3775812
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3923957    0.2798990   0.4873178
0-24 months   ki1114097-CMIN             PERU                           0                    NA                0.3286620    0.0992057   0.4996697
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2479644    0.2055574   0.2881076
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2024372    0.1007500   0.2926255
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.3223905    0.2809042   0.3614834
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0793323    0.0535807   0.1043831
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.7056891    0.4538749   0.8413937
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.5351288    0.5070321   0.5616241
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3961704    0.3469080   0.4417170
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.5996810    0.2423344   0.7884881
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6366030    0.3786204   0.7874771
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.3466883    0.0957566   0.5279854
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.2997920    0.0819927   0.4659179
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.5366506    0.3349567   0.6771750
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.6548362    0.4615440   0.7787414
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.5942394    0.3560497   0.7443255
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4917388    0.1849308   0.6830582
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.3693820    0.2292129   0.4840610
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.6718069    0.3920910   0.8228177
0-6 months    ki1114097-CMIN             PERU                           0                    NA                0.4205582    0.0104116   0.6607147
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6099082    0.5213859   0.6820578
0-6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.7062404    0.6257753   0.7694041
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2324378    0.1161835   0.3334004
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.8142060    0.7814503   0.8420523
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.8450643    0.7385601   0.9081813
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1812763   -0.0032538   0.3318654
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.1321980   -0.0144593   0.2576535
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2938702   -0.0167239   0.5095824
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.3759630   -0.0586014   0.6321353
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0938511   -0.1368976   0.2777663
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2038078    0.0684113   0.3195259
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1711054    0.0522083   0.2750874
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.1155345    0.0084394   0.2110626
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.3534446    0.0753336   0.5479084
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2812785    0.2223041   0.3357806
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2227293    0.1070161   0.3234483
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1077774    0.0221040   0.1859449
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1538293    0.0509676   0.2455423
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2396230    0.0980058   0.3590058
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1609583    0.0785138   0.2360265
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1240178    0.0820351   0.1640805
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.4165350    0.0363123   0.6467410
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.6702764    0.5800375   0.7411253
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1006563    0.0498332   0.1487610
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.2065233    0.0561928   0.3329090
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3786413    0.2652320   0.4745462
6-24 months   ki1114097-CMIN             PERU                           0                    NA                0.2770092    0.0191606   0.4670731
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1091275    0.0670025   0.1493505
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2045270    0.0948896   0.3008838
6-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.2492920    0.2067446   0.2895572
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0645392    0.0396491   0.0887841
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.7033312    0.4495815   0.8400992
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3830910    0.3461376   0.4179559
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3529411    0.3015156   0.4005804

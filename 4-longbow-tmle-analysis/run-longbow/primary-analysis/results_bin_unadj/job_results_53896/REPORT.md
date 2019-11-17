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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** enwast

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        enwast    sstunted   n_cell       n
----------  -------------------------  -----------------------------  -------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                0      178     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                1        1     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0       36     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1        0     215
Birth       ki0047075b-MAL-ED          BRAZIL                         0                0       59      62
Birth       ki0047075b-MAL-ED          BRAZIL                         0                1        1      62
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0        2      62
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1        0      62
Birth       ki0047075b-MAL-ED          INDIA                          0                0       40      45
Birth       ki0047075b-MAL-ED          INDIA                          0                1        0      45
Birth       ki0047075b-MAL-ED          INDIA                          1                0        5      45
Birth       ki0047075b-MAL-ED          INDIA                          1                1        0      45
Birth       ki0047075b-MAL-ED          NEPAL                          0                0       24      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          1                0        2      26
Birth       ki0047075b-MAL-ED          NEPAL                          1                1        0      26
Birth       ki0047075b-MAL-ED          PERU                           0                0      222     228
Birth       ki0047075b-MAL-ED          PERU                           0                1        1     228
Birth       ki0047075b-MAL-ED          PERU                           1                0        5     228
Birth       ki0047075b-MAL-ED          PERU                           1                1        0     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      108     121
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0     121
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       13     121
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      114     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        0     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        1     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0       75      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0       11      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1      87
Birth       ki1000108-IRC              INDIA                          0                0      251     364
Birth       ki1000108-IRC              INDIA                          0                1        0     364
Birth       ki1000108-IRC              INDIA                          1                0      113     364
Birth       ki1000108-IRC              INDIA                          1                1        0     364
Birth       ki1000109-EE               PAKISTAN                       0                0      154     180
Birth       ki1000109-EE               PAKISTAN                       0                1        1     180
Birth       ki1000109-EE               PAKISTAN                       1                0       25     180
Birth       ki1000109-EE               PAKISTAN                       1                1        0     180
Birth       ki1000109-ResPak           PAKISTAN                       0                0       33      38
Birth       ki1000109-ResPak           PAKISTAN                       0                1        1      38
Birth       ki1000109-ResPak           PAKISTAN                       1                0        4      38
Birth       ki1000109-ResPak           PAKISTAN                       1                1        0      38
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                0      983    1105
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                1        2    1105
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                0      120    1105
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                1        0    1105
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                0      407     580
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                1        0     580
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                0      173     580
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                1        0     580
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                0      414     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                1        1     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                0      117     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                1        0     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0      532     713
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        3     713
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0      178     713
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        0     713
Birth       ki1101329-Keneba           GAMBIA                         0                0     1102    1488
Birth       ki1101329-Keneba           GAMBIA                         0                1        0    1488
Birth       ki1101329-Keneba           GAMBIA                         1                0      386    1488
Birth       ki1101329-Keneba           GAMBIA                         1                1        0    1488
Birth       ki1113344-GMS-Nepal        NEPAL                          0                0      509     645
Birth       ki1113344-GMS-Nepal        NEPAL                          0                1        0     645
Birth       ki1113344-GMS-Nepal        NEPAL                          1                0      136     645
Birth       ki1113344-GMS-Nepal        NEPAL                          1                1        0     645
Birth       ki1114097-CMIN             BANGLADESH                     0                0       15      19
Birth       ki1114097-CMIN             BANGLADESH                     0                1        0      19
Birth       ki1114097-CMIN             BANGLADESH                     1                0        4      19
Birth       ki1114097-CMIN             BANGLADESH                     1                1        0      19
Birth       ki1114097-CONTENT          PERU                           0                0        2       2
Birth       ki1114097-CONTENT          PERU                           0                1        0       2
Birth       ki1114097-CONTENT          PERU                           1                0        0       2
Birth       ki1114097-CONTENT          PERU                           1                1        0       2
Birth       ki1119695-PROBIT           BELARUS                        0                0    10942   13883
Birth       ki1119695-PROBIT           BELARUS                        0                1        0   13883
Birth       ki1119695-PROBIT           BELARUS                        1                0     2941   13883
Birth       ki1119695-PROBIT           BELARUS                        1                1        0   13883
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                0    10856   13092
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                1        0   13092
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0     2236   13092
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1        0   13092
Birth       ki1135781-COHORTS          GUATEMALA                      0                0      564     762
Birth       ki1135781-COHORTS          GUATEMALA                      0                1        0     762
Birth       ki1135781-COHORTS          GUATEMALA                      1                0      198     762
Birth       ki1135781-COHORTS          GUATEMALA                      1                1        0     762
Birth       ki1135781-COHORTS          INDIA                          0                0     5097    6231
Birth       ki1135781-COHORTS          INDIA                          0                1        0    6231
Birth       ki1135781-COHORTS          INDIA                          1                0     1134    6231
Birth       ki1135781-COHORTS          INDIA                          1                1        0    6231
Birth       ki1135781-COHORTS          PHILIPPINES                    0                0     2448    2910
Birth       ki1135781-COHORTS          PHILIPPINES                    0                1        0    2910
Birth       ki1135781-COHORTS          PHILIPPINES                    1                0      462    2910
Birth       ki1135781-COHORTS          PHILIPPINES                    1                1        0    2910
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0    16036   18062
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1        5   18062
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0     2019   18062
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1        2   18062
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0     2156    2399
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1        1    2399
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0      242    2399
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1        0    2399
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0      183     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1        5     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0       40     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        1     229
6 months    ki0047075b-MAL-ED          BRAZIL                         0                0      192     199
6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        0     199
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0        7     199
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0     199
6 months    ki0047075b-MAL-ED          INDIA                          0                0      185     232
6 months    ki0047075b-MAL-ED          INDIA                          0                1        4     232
6 months    ki0047075b-MAL-ED          INDIA                          1                0       40     232
6 months    ki0047075b-MAL-ED          INDIA                          1                1        3     232
6 months    ki0047075b-MAL-ED          NEPAL                          0                0      201     232
6 months    ki0047075b-MAL-ED          NEPAL                          0                1        0     232
6 months    ki0047075b-MAL-ED          NEPAL                          1                0       31     232
6 months    ki0047075b-MAL-ED          NEPAL                          1                1        0     232
6 months    ki0047075b-MAL-ED          PERU                           0                0      252     266
6 months    ki0047075b-MAL-ED          PERU                           0                1        9     266
6 months    ki0047075b-MAL-ED          PERU                           1                0        5     266
6 months    ki0047075b-MAL-ED          PERU                           1                1        0     266
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      231     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        4     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       17     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        1     253
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      223     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       12     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        3     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     238
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0      245     363
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1       27     363
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0       76     363
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1       15     363
6 months    ki1000108-IRC              INDIA                          0                0      255     382
6 months    ki1000108-IRC              INDIA                          0                1       13     382
6 months    ki1000108-IRC              INDIA                          1                0      105     382
6 months    ki1000108-IRC              INDIA                          1                1        9     382
6 months    ki1000109-EE               PAKISTAN                       0                0      227     292
6 months    ki1000109-EE               PAKISTAN                       0                1       28     292
6 months    ki1000109-EE               PAKISTAN                       1                0       32     292
6 months    ki1000109-EE               PAKISTAN                       1                1        5     292
6 months    ki1000109-ResPak           PAKISTAN                       0                0      152     228
6 months    ki1000109-ResPak           PAKISTAN                       0                1       33     228
6 months    ki1000109-ResPak           PAKISTAN                       1                0       31     228
6 months    ki1000109-ResPak           PAKISTAN                       1                1       12     228
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                0     1004    1213
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                1       70    1213
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0      121    1213
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1       18    1213
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                0      272     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                1       39     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0       54     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1       15     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                0      354     514
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                1       14     514
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0      135     514
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1       11     514
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      467     597
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        5     597
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      119     597
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1        6     597
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      506     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1       11     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      170     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1        7     694
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1883    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       18    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      119    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0    2020
6 months    ki1101329-Keneba           GAMBIA                         0                0     1597    2029
6 months    ki1101329-Keneba           GAMBIA                         0                1       44    2029
6 months    ki1101329-Keneba           GAMBIA                         1                0      367    2029
6 months    ki1101329-Keneba           GAMBIA                         1                1       21    2029
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                0      270     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                1       23     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                0        2     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                1        4     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0                0      410     528
6 months    ki1113344-GMS-Nepal        NEPAL                          0                1       11     528
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0      105     528
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1        2     528
6 months    ki1114097-CMIN             BANGLADESH                     0                0      200     232
6 months    ki1114097-CMIN             BANGLADESH                     0                1       18     232
6 months    ki1114097-CMIN             BANGLADESH                     1                0       11     232
6 months    ki1114097-CMIN             BANGLADESH                     1                1        3     232
6 months    ki1114097-CONTENT          PERU                           0                0      210     215
6 months    ki1114097-CONTENT          PERU                           0                1        4     215
6 months    ki1114097-CONTENT          PERU                           1                0        1     215
6 months    ki1114097-CONTENT          PERU                           1                1        0     215
6 months    ki1119695-PROBIT           BELARUS                        0                0    12526   15754
6 months    ki1119695-PROBIT           BELARUS                        0                1      195   15754
6 months    ki1119695-PROBIT           BELARUS                        1                0     2987   15754
6 months    ki1119695-PROBIT           BELARUS                        1                1       46   15754
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0     6710    8174
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1      194    8174
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0     1186    8174
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1       84    8174
6 months    ki1135781-COHORTS          GUATEMALA                      0                0      628     901
6 months    ki1135781-COHORTS          GUATEMALA                      0                1       97     901
6 months    ki1135781-COHORTS          GUATEMALA                      1                0      164     901
6 months    ki1135781-COHORTS          GUATEMALA                      1                1       12     901
6 months    ki1135781-COHORTS          INDIA                          0                0     5205    6508
6 months    ki1135781-COHORTS          INDIA                          0                1      159    6508
6 months    ki1135781-COHORTS          INDIA                          1                0     1089    6508
6 months    ki1135781-COHORTS          INDIA                          1                1       55    6508
6 months    ki1135781-COHORTS          PHILIPPINES                    0                0     2099    2593
6 months    ki1135781-COHORTS          PHILIPPINES                    0                1       92    2593
6 months    ki1135781-COHORTS          PHILIPPINES                    1                0      385    2593
6 months    ki1135781-COHORTS          PHILIPPINES                    1                1       17    2593
6 months    ki1148112-LCNI-5           MALAWI                         0                0      759     839
6 months    ki1148112-LCNI-5           MALAWI                         0                1       66     839
6 months    ki1148112-LCNI-5           MALAWI                         1                0        9     839
6 months    ki1148112-LCNI-5           MALAWI                         1                1        5     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0    12374   14244
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1      350   14244
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     1456   14244
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1       64   14244
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0     3861    4410
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1      149    4410
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0      375    4410
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1       25    4410
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      146     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1       18     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0       32     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        5     201
24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      153     160
24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        1     160
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0        6     160
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     160
24 months   ki0047075b-MAL-ED          INDIA                          0                0      157     223
24 months   ki0047075b-MAL-ED          INDIA                          0                1       23     223
24 months   ki0047075b-MAL-ED          INDIA                          1                0       37     223
24 months   ki0047075b-MAL-ED          INDIA                          1                1        6     223
24 months   ki0047075b-MAL-ED          NEPAL                          0                0      189     225
24 months   ki0047075b-MAL-ED          NEPAL                          0                1        6     225
24 months   ki0047075b-MAL-ED          NEPAL                          1                0       29     225
24 months   ki0047075b-MAL-ED          NEPAL                          1                1        1     225
24 months   ki0047075b-MAL-ED          PERU                           0                0      179     197
24 months   ki0047075b-MAL-ED          PERU                           0                1       14     197
24 months   ki0047075b-MAL-ED          PERU                           1                0        4     197
24 months   ki0047075b-MAL-ED          PERU                           1                1        0     197
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      197     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       24     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       13     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        3     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      138     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       64     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        2     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        1     205
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0      183     364
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1       89     364
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       59     364
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1       33     364
24 months   ki1000108-IRC              INDIA                          0                0      247     383
24 months   ki1000108-IRC              INDIA                          0                1       22     383
24 months   ki1000108-IRC              INDIA                          1                0      101     383
24 months   ki1000108-IRC              INDIA                          1                1       13     383
24 months   ki1000109-EE               PAKISTAN                       0                0       81     137
24 months   ki1000109-EE               PAKISTAN                       0                1       34     137
24 months   ki1000109-EE               PAKISTAN                       1                0       14     137
24 months   ki1000109-EE               PAKISTAN                       1                1        8     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0      235     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1       58     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       92     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1       24     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      411     570
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1       41     570
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      110     570
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1        8     570
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      342     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       22     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      127     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1        9     500
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   ki1101329-Keneba           GAMBIA                         0                0     1256    1677
24 months   ki1101329-Keneba           GAMBIA                         0                1       98    1677
24 months   ki1101329-Keneba           GAMBIA                         1                0      289    1677
24 months   ki1101329-Keneba           GAMBIA                         1                1       34    1677
24 months   ki1113344-GMS-Nepal        NEPAL                          0                0      332     455
24 months   ki1113344-GMS-Nepal        NEPAL                          0                1       33     455
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0       81     455
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1        9     455
24 months   ki1114097-CMIN             BANGLADESH                     0                0      159     232
24 months   ki1114097-CMIN             BANGLADESH                     0                1       58     232
24 months   ki1114097-CMIN             BANGLADESH                     1                0       10     232
24 months   ki1114097-CMIN             BANGLADESH                     1                1        5     232
24 months   ki1114097-CONTENT          PERU                           0                0      160     164
24 months   ki1114097-CONTENT          PERU                           0                1        3     164
24 months   ki1114097-CONTENT          PERU                           1                0        1     164
24 months   ki1114097-CONTENT          PERU                           1                1        0     164
24 months   ki1119695-PROBIT           BELARUS                        0                0     3074    4032
24 months   ki1119695-PROBIT           BELARUS                        0                1       47    4032
24 months   ki1119695-PROBIT           BELARUS                        1                0      894    4032
24 months   ki1119695-PROBIT           BELARUS                        1                1       17    4032
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0     1224    1505
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1      122    1505
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0      140    1505
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       19    1505
24 months   ki1135781-COHORTS          GUATEMALA                      0                0      439    1027
24 months   ki1135781-COHORTS          GUATEMALA                      0                1      435    1027
24 months   ki1135781-COHORTS          GUATEMALA                      1                0       85    1027
24 months   ki1135781-COHORTS          GUATEMALA                      1                1       68    1027
24 months   ki1135781-COHORTS          INDIA                          0                0     3359    5070
24 months   ki1135781-COHORTS          INDIA                          0                1      893    5070
24 months   ki1135781-COHORTS          INDIA                          1                0      629    5070
24 months   ki1135781-COHORTS          INDIA                          1                1      189    5070
24 months   ki1135781-COHORTS          PHILIPPINES                    0                0     1421    2347
24 months   ki1135781-COHORTS          PHILIPPINES                    0                1      568    2347
24 months   ki1135781-COHORTS          PHILIPPINES                    1                0      269    2347
24 months   ki1135781-COHORTS          PHILIPPINES                    1                1       89    2347
24 months   ki1148112-LCNI-5           MALAWI                         0                0      502     579
24 months   ki1148112-LCNI-5           MALAWI                         0                1       67     579
24 months   ki1148112-LCNI-5           MALAWI                         1                0        7     579
24 months   ki1148112-LCNI-5           MALAWI                         1                1        3     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0     5677    7242
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1      745    7242
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0      728    7242
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1       92    7242
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0     3627    4315
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1      316    4315
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0      331    4315
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1       41    4315


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/914ae5c3-d09e-4e17-ac61-b82e02c5074e/4db07178-0786-4033-8168-ae2567738efa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/914ae5c3-d09e-4e17-ac61-b82e02c5074e/4db07178-0786-4033-8168-ae2567738efa/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/914ae5c3-d09e-4e17-ac61-b82e02c5074e/4db07178-0786-4033-8168-ae2567738efa/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/914ae5c3-d09e-4e17-ac61-b82e02c5074e/4db07178-0786-4033-8168-ae2567738efa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0992647   0.0636804   0.1348490
6 months    ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.1648352   0.0884977   0.2411726
6 months    ki1000108-IRC              INDIA         0                    NA                0.0485075   0.0227527   0.0742622
6 months    ki1000108-IRC              INDIA         1                    NA                0.0789474   0.0293823   0.1285125
6 months    ki1000109-EE               PAKISTAN      0                    NA                0.1098039   0.0713647   0.1482432
6 months    ki1000109-EE               PAKISTAN      1                    NA                0.1351351   0.0247907   0.2454796
6 months    ki1000109-ResPak           PAKISTAN      0                    NA                0.1783784   0.1230913   0.2336655
6 months    ki1000109-ResPak           PAKISTAN      1                    NA                0.2790698   0.1447093   0.4134302
6 months    ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0651769   0.0463612   0.0839926
6 months    ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.1294964   0.0704696   0.1885232
6 months    ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1254019   0.0885469   0.1622569
6 months    ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.2173913   0.1199397   0.3148429
6 months    ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0380435   0.0184792   0.0576078
6 months    ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.0753425   0.0324871   0.1181978
6 months    ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0105932   0.0013496   0.0198369
6 months    ki1017093b-PROVIDE         BANGLADESH    1                    NA                0.0480000   0.0104944   0.0855056
6 months    ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0212766   0.0088287   0.0337245
6 months    ki1017093c-NIH-Crypto      BANGLADESH    1                    NA                0.0395480   0.0108154   0.0682806
6 months    ki1101329-Keneba           GAMBIA        0                    NA                0.0268129   0.0189954   0.0346305
6 months    ki1101329-Keneba           GAMBIA        1                    NA                0.0541237   0.0316047   0.0766428
6 months    ki1119695-PROBIT           BELARUS       0                    NA                0.0153290   0.0096647   0.0209932
6 months    ki1119695-PROBIT           BELARUS       1                    NA                0.0151665   0.0095350   0.0207980
6 months    ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0280997   0.0242013   0.0319980
6 months    ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.0661417   0.0524723   0.0798112
6 months    ki1135781-COHORTS          GUATEMALA     0                    NA                0.1337931   0.1089990   0.1585872
6 months    ki1135781-COHORTS          GUATEMALA     1                    NA                0.0681818   0.0309227   0.1054410
6 months    ki1135781-COHORTS          INDIA         0                    NA                0.0296421   0.0251031   0.0341810
6 months    ki1135781-COHORTS          INDIA         1                    NA                0.0480769   0.0356793   0.0604745
6 months    ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0419900   0.0335902   0.0503897
6 months    ki1135781-COHORTS          PHILIPPINES   1                    NA                0.0422886   0.0226121   0.0619650
6 months    ki1148112-LCNI-5           MALAWI        0                    NA                0.0800000   0.0613187   0.0986813
6 months    ki1148112-LCNI-5           MALAWI        1                    NA                0.3571429   0.1895146   0.5247712
6 months    kiGH5241-JiVitA-3          BANGLADESH    0                    NA                0.0275071   0.0244343   0.0305799
6 months    kiGH5241-JiVitA-3          BANGLADESH    1                    NA                0.0421053   0.0307490   0.0534615
6 months    kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0371571   0.0311868   0.0431274
6 months    kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.0625000   0.0417916   0.0832084
24 months   ki0047075b-MAL-ED          BANGLADESH    0                    NA                0.1097561   0.0617962   0.1577160
24 months   ki0047075b-MAL-ED          BANGLADESH    1                    NA                0.1351351   0.0247048   0.2455655
24 months   ki0047075b-MAL-ED          INDIA         0                    NA                0.1277778   0.0788980   0.1766575
24 months   ki0047075b-MAL-ED          INDIA         1                    NA                0.1395349   0.0357348   0.2433350
24 months   ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.3272059   0.2713701   0.3830417
24 months   ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.3586957   0.2605555   0.4568358
24 months   ki1000108-IRC              INDIA         0                    NA                0.0817844   0.0489940   0.1145748
24 months   ki1000108-IRC              INDIA         1                    NA                0.1140351   0.0556111   0.1724590
24 months   ki1000109-EE               PAKISTAN      0                    NA                0.2956522   0.2119428   0.3793616
24 months   ki1000109-EE               PAKISTAN      1                    NA                0.3636364   0.1618862   0.5653865
24 months   ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.1979522   0.1522722   0.2436322
24 months   ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.2068966   0.1330905   0.2807026
24 months   ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0907080   0.0642087   0.1172073
24 months   ki1017093b-PROVIDE         BANGLADESH    1                    NA                0.0677966   0.0223975   0.1131958
24 months   ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0604396   0.0359345   0.0849446
24 months   ki1017093c-NIH-Crypto      BANGLADESH    1                    NA                0.0661765   0.0243552   0.1079978
24 months   ki1101329-Keneba           GAMBIA        0                    NA                0.0723781   0.0585725   0.0861838
24 months   ki1101329-Keneba           GAMBIA        1                    NA                0.1052632   0.0717849   0.1387414
24 months   ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0904110   0.0609591   0.1198628
24 months   ki1113344-GMS-Nepal        NEPAL         1                    NA                0.1000000   0.0379523   0.1620477
24 months   ki1114097-CMIN             BANGLADESH    0                    NA                0.2672811   0.2082734   0.3262889
24 months   ki1114097-CMIN             BANGLADESH    1                    NA                0.3333333   0.0942583   0.5724084
24 months   ki1119695-PROBIT           BELARUS       0                    NA                0.0150593   0.0004248   0.0296937
24 months   ki1119695-PROBIT           BELARUS       1                    NA                0.0186608   0.0057381   0.0315836
24 months   ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0906389   0.0752965   0.1059814
24 months   ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.1194969   0.0690612   0.1699325
24 months   ki1135781-COHORTS          GUATEMALA     0                    NA                0.4977117   0.4645475   0.5308759
24 months   ki1135781-COHORTS          GUATEMALA     1                    NA                0.4444444   0.3656698   0.5232191
24 months   ki1135781-COHORTS          INDIA         0                    NA                0.2100188   0.1977746   0.2222631
24 months   ki1135781-COHORTS          INDIA         1                    NA                0.2310513   0.2021634   0.2599393
24 months   ki1135781-COHORTS          PHILIPPINES   0                    NA                0.2855706   0.2657161   0.3054252
24 months   ki1135781-COHORTS          PHILIPPINES   1                    NA                0.2486034   0.2038230   0.2933837
24 months   kiGH5241-JiVitA-3          BANGLADESH    0                    NA                0.1160075   0.1070437   0.1249713
24 months   kiGH5241-JiVitA-3          BANGLADESH    1                    NA                0.1121951   0.0860994   0.1382909
24 months   kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0801420   0.0701936   0.0900905
24 months   kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.1102151   0.0816854   0.1387447


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.1157025   0.0827518   0.1486532
6 months    ki1000108-IRC              INDIA         NA                   NA                0.0575916   0.0341987   0.0809846
6 months    ki1000109-EE               PAKISTAN      NA                   NA                0.1130137   0.0766368   0.1493906
6 months    ki1000109-ResPak           PAKISTAN      NA                   NA                0.1973684   0.1455920   0.2491449
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0725474   0.0527677   0.0923271
6 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1421053   0.1069532   0.1772573
6 months    ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.0486381   0.0300237   0.0672526
6 months    ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0184255   0.0076286   0.0292223
6 months    ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0259366   0.0141026   0.0377706
6 months    ki1101329-Keneba           GAMBIA        NA                   NA                0.0320355   0.0243714   0.0396996
6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0152977   0.0100190   0.0205764
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0340103   0.0300807   0.0379399
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1209767   0.0996719   0.1422815
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0328826   0.0285497   0.0372155
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0420363   0.0343109   0.0497616
6 months    ki1148112-LCNI-5           MALAWI        NA                   NA                0.0846246   0.0657805   0.1034686
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0290649   0.0261073   0.0320225
6 months    kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0394558   0.0337069   0.0452047
24 months   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.1144279   0.0703104   0.1585454
24 months   ki0047075b-MAL-ED          INDIA         NA                   NA                0.1300448   0.0857996   0.1742901
24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.3351648   0.2866046   0.3837251
24 months   ki1000108-IRC              INDIA         NA                   NA                0.0913838   0.0624876   0.1202800
24 months   ki1000109-EE               PAKISTAN      NA                   NA                0.3065693   0.2290795   0.3840591
24 months   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.2004890   0.1616404   0.2393376
24 months   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0859649   0.0629328   0.1089970
24 months   ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0620000   0.0408410   0.0831590
24 months   ki1101329-Keneba           GAMBIA        NA                   NA                0.0787120   0.0658197   0.0916043
24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.0923077   0.0656815   0.1189338
24 months   ki1114097-CMIN             BANGLADESH    NA                   NA                0.2715517   0.2141972   0.3289063
24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0158730   0.0044440   0.0273021
24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0936877   0.0789610   0.1084144
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4897760   0.4591879   0.5203642
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.2134122   0.2021332   0.2246912
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2799318   0.2617642   0.2980994
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1155758   0.1070958   0.1240558
24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0827346   0.0732177   0.0922516


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  -----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA         0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 1.6605616   0.9245110    2.9826200
6 months    ki1000108-IRC              INDIA         0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000108-IRC              INDIA         1                    0                 1.6275303   0.7152181    3.7035625
6 months    ki1000109-EE               PAKISTAN      0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000109-EE               PAKISTAN      1                    0                 1.2306950   0.5061877    2.9921906
6 months    ki1000109-ResPak           PAKISTAN      0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000109-ResPak           PAKISTAN      1                    0                 1.5644820   0.8824603    2.7736138
6 months    ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA         1                    0                 1.9868448   1.2099150    3.2626692
6 months    ki1000304b-SAS-FoodSuppl   INDIA         0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA         1                    0                 1.7335563   1.0142465    2.9630049
6 months    ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH    1                    0                 1.9804305   0.9198892    4.2636714
6 months    ki1017093b-PROVIDE         BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH    1                    0                 4.5312000   1.4044963   14.6186030
6 months    ki1017093c-NIH-Crypto      BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH    1                    0                 1.8587571   0.7313258    4.7242661
6 months    ki1101329-Keneba           GAMBIA        0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1101329-Keneba           GAMBIA        1                    0                 2.0185684   1.2145034    3.3549666
6 months    ki1119695-PROBIT           BELARUS       0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT           BELARUS       1                    0                 0.9894004   0.7058306    1.3868953
6 months    ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 2.3538274   1.8351501    3.0191010
6 months    ki1135781-COHORTS          GUATEMALA     0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          GUATEMALA     1                    0                 0.5096064   0.2861752    0.9074814
6 months    ki1135781-COHORTS          INDIA         0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          INDIA         1                    0                 1.6219158   1.2016558    2.1891551
6 months    ki1135781-COHORTS          PHILIPPINES   0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   1                    0                 1.0071112   0.6069038    1.6712253
6 months    ki1148112-LCNI-5           MALAWI        0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5           MALAWI        1                    0                 4.4642857   2.6428796    7.5409592
6 months    kiGH5241-JiVitA-3          BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    1                    0                 1.5307068   1.1380219    2.0588912
6 months    kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH    1                    0                 1.6820470   1.1647766    2.4290341
24 months   ki0047075b-MAL-ED          BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH    1                    0                 1.2312312   0.4874034    3.1102168
24 months   ki0047075b-MAL-ED          INDIA         0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          INDIA         1                    0                 1.0920121   0.4730886    2.5206494
24 months   ki1000108-CMC-V-BCS-2002   INDIA         0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 1.0962384   0.7940797    1.5133728
24 months   ki1000108-IRC              INDIA         0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1000108-IRC              INDIA         1                    0                 1.3943381   0.7274964    2.6724238
24 months   ki1000109-EE               PAKISTAN      0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1000109-EE               PAKISTAN      1                    0                 1.2299465   0.6597384    2.2929822
24 months   ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH    1                    0                 1.0451843   0.6834045    1.5984826
24 months   ki1017093b-PROVIDE         BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH    1                    0                 0.7474163   0.3599748    1.5518618
24 months   ki1017093c-NIH-Crypto      BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH    1                    0                 1.0949198   0.5167665    2.3199053
24 months   ki1101329-Keneba           GAMBIA        0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1101329-Keneba           GAMBIA        1                    0                 1.4543502   1.0037096    2.1073170
24 months   ki1113344-GMS-Nepal        NEPAL         0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL         1                    0                 1.1060606   0.5488190    2.2290959
24 months   ki1114097-CMIN             BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1114097-CMIN             BANGLADESH    1                    0                 1.2471264   0.5888451    2.6413131
24 months   ki1119695-PROBIT           BELARUS       0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1119695-PROBIT           BELARUS       1                    0                 1.2391573   0.3583536    4.2849041
24 months   ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 1.3183833   0.8366592    2.0774702
24 months   ki1135781-COHORTS          GUATEMALA     0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     1                    0                 0.8929757   0.7389314    1.0791335
24 months   ki1135781-COHORTS          INDIA         0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          INDIA         1                    0                 1.1001459   0.9583806    1.2628815
24 months   ki1135781-COHORTS          PHILIPPINES   0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   1                    0                 0.8705494   0.7176951    1.0559586
24 months   kiGH5241-JiVitA-3          BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    1                    0                 0.9671370   0.7569051    1.2357612
24 months   kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    1                    0                 1.3752467   1.0369743    1.8238673


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                 0.0164378   -0.0048782    0.0377537
6 months    ki1000108-IRC              INDIA         0                    NA                 0.0090842   -0.0076438    0.0258121
6 months    ki1000109-EE               PAKISTAN      0                    NA                 0.0032098   -0.0116279    0.0180475
6 months    ki1000109-ResPak           PAKISTAN      0                    NA                 0.0189900   -0.0088863    0.0468663
6 months    ki1000304b-SAS-CompFeed    INDIA         0                    NA                 0.0073705   -0.0003326    0.0150736
6 months    ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                 0.0167033   -0.0025489    0.0359556
6 months    ki1017093-NIH-Birth        BANGLADESH    0                    NA                 0.0105947   -0.0028657    0.0240550
6 months    ki1017093b-PROVIDE         BANGLADESH    0                    NA                 0.0078322   -0.0003475    0.0160119
6 months    ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                 0.0046600   -0.0033482    0.0126682
6 months    ki1101329-Keneba           GAMBIA        0                    NA                 0.0052226    0.0006403    0.0098048
6 months    ki1119695-PROBIT           BELARUS       0                    NA                -0.0000313   -0.0010255    0.0009629
6 months    ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                 0.0059106    0.0036820    0.0081393
6 months    ki1135781-COHORTS          GUATEMALA     0                    NA                -0.0128164   -0.0217224   -0.0039104
6 months    ki1135781-COHORTS          INDIA         0                    NA                 0.0032405    0.0009135    0.0055676
6 months    ki1135781-COHORTS          PHILIPPINES   0                    NA                 0.0000463   -0.0032705    0.0033631
6 months    ki1148112-LCNI-5           MALAWI        0                    NA                 0.0046246   -0.0002290    0.0094781
6 months    kiGH5241-JiVitA-3          BANGLADESH    0                    NA                 0.0015578    0.0002867    0.0028288
6 months    kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0022987    0.0003710    0.0042264
24 months   ki0047075b-MAL-ED          BANGLADESH    0                    NA                 0.0046718   -0.0175324    0.0268760
24 months   ki0047075b-MAL-ED          INDIA         0                    NA                 0.0022671   -0.0198648    0.0243989
24 months   ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                 0.0079590   -0.0206140    0.0365319
24 months   ki1000108-IRC              INDIA         0                    NA                 0.0095994   -0.0103969    0.0295958
24 months   ki1000109-EE               PAKISTAN      0                    NA                 0.0109172   -0.0244087    0.0462430
24 months   ki1017093-NIH-Birth        BANGLADESH    0                    NA                 0.0025368   -0.0220840    0.0271576
24 months   ki1017093b-PROVIDE         BANGLADESH    0                    NA                -0.0047431   -0.0156521    0.0061659
24 months   ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                 0.0015604   -0.0116258    0.0147467
24 months   ki1101329-Keneba           GAMBIA        0                    NA                 0.0063338   -0.0006686    0.0133363
24 months   ki1113344-GMS-Nepal        NEPAL         0                    NA                 0.0018967   -0.0116934    0.0154869
24 months   ki1114097-CMIN             BANGLADESH    0                    NA                 0.0042706   -0.0117879    0.0203291
24 months   ki1119695-PROBIT           BELARUS       0                    NA                 0.0008137   -0.0038460    0.0054735
24 months   ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                 0.0030488   -0.0025387    0.0086363
24 months   ki1135781-COHORTS          GUATEMALA     0                    NA                -0.0079356   -0.0207217    0.0048504
24 months   ki1135781-COHORTS          INDIA         0                    NA                 0.0033934   -0.0016733    0.0084601
24 months   ki1135781-COHORTS          PHILIPPINES   0                    NA                -0.0056388   -0.0131300    0.0018524
24 months   kiGH5241-JiVitA-3          BANGLADESH    0                    NA                -0.0004317   -0.0035543    0.0026910
24 months   kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0025926    0.0000492    0.0051361


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                 0.1420693   -0.0591347    0.3050506
6 months    ki1000108-IRC              INDIA         0                    NA                 0.1577341   -0.1800814    0.3988449
6 months    ki1000109-EE               PAKISTAN      0                    NA                 0.0284017   -0.1118993    0.1509993
6 months    ki1000109-ResPak           PAKISTAN      0                    NA                 0.0962162   -0.0551876    0.2258958
6 months    ki1000304b-SAS-CompFeed    INDIA         0                    NA                 0.1015956   -0.0051720    0.1970225
6 months    ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                 0.1175420   -0.0262974    0.2412217
6 months    ki1017093-NIH-Birth        BANGLADESH    0                    NA                 0.2178261   -0.0975118    0.4425608
6 months    ki1017093b-PROVIDE         BANGLADESH    0                    NA                 0.4250770   -0.0928713    0.6975523
6 months    ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                 0.1796690   -0.1798998    0.4296610
6 months    ki1101329-Keneba           GAMBIA        0                    NA                 0.1630244    0.0130864    0.2901829
6 months    ki1119695-PROBIT           BELARUS       0                    NA                -0.0020448   -0.0689602    0.0606817
6 months    ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                 0.1737894    0.1087961    0.2340428
6 months    ki1135781-COHORTS          GUATEMALA     0                    NA                -0.1059412   -0.1802875   -0.0362779
6 months    ki1135781-COHORTS          INDIA         0                    NA                 0.0985490    0.0261484    0.1655670
6 months    ki1135781-COHORTS          PHILIPPINES   0                    NA                 0.0011013   -0.0810028    0.0769693
6 months    ki1148112-LCNI-5           MALAWI        0                    NA                 0.0546479   -0.0037528    0.1096507
6 months    kiGH5241-JiVitA-3          BANGLADESH    0                    NA                 0.0535972    0.0091844    0.0960193
6 months    kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0582595    0.0077899    0.1061620
24 months   ki0047075b-MAL-ED          BANGLADESH    0                    NA                 0.0408271   -0.1736513    0.2161108
24 months   ki0047075b-MAL-ED          INDIA         0                    NA                 0.0174330   -0.1682942    0.1736345
24 months   ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                 0.0237464   -0.0653357    0.1053795
24 months   ki1000108-IRC              INDIA         0                    NA                 0.1050451   -0.1401935    0.2975366
24 months   ki1000109-EE               PAKISTAN      0                    NA                 0.0356108   -0.0867270    0.1441765
24 months   ki1017093-NIH-Birth        BANGLADESH    0                    NA                 0.0126530   -0.1181006    0.1281159
24 months   ki1017093b-PROVIDE         BANGLADESH    0                    NA                -0.0551743   -0.1892409    0.0637786
24 months   ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                 0.0251684   -0.2123089    0.2161266
24 months   ki1101329-Keneba           GAMBIA        0                    NA                 0.0804686   -0.0120294    0.1645125
24 months   ki1113344-GMS-Nepal        NEPAL         0                    NA                 0.0205479   -0.1382088    0.1571614
24 months   ki1114097-CMIN             BANGLADESH    0                    NA                 0.0157267   -0.0451956    0.0730980
24 months   ki1119695-PROBIT           BELARUS       0                    NA                 0.0512656   -0.3243162    0.3203308
24 months   ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                 0.0325419   -0.0287876    0.0902154
24 months   ki1135781-COHORTS          GUATEMALA     0                    NA                -0.0162026   -0.0426658    0.0095891
24 months   ki1135781-COHORTS          INDIA         0                    NA                 0.0159007   -0.0081221    0.0393512
24 months   ki1135781-COHORTS          PHILIPPINES   0                    NA                -0.0201435   -0.0472516    0.0062629
24 months   kiGH5241-JiVitA-3          BANGLADESH    0                    NA                -0.0037349   -0.0311281    0.0229306
24 months   kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0313366   -0.0002629    0.0619378

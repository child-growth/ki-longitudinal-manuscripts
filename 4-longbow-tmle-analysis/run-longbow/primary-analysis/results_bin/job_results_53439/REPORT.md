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




# Results Detail

## Results Plots
![](/tmp/437a03a5-60c3-4384-bd18-fad96fbd1c93/d1aecf6d-472c-418c-b834-f5542b84c702/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/437a03a5-60c3-4384-bd18-fad96fbd1c93/d1aecf6d-472c-418c-b834-f5542b84c702/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/437a03a5-60c3-4384-bd18-fad96fbd1c93/d1aecf6d-472c-418c-b834-f5542b84c702/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/437a03a5-60c3-4384-bd18-fad96fbd1c93/d1aecf6d-472c-418c-b834-f5542b84c702/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0992730   0.0636280   0.1349181
6 months    ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.1676700   0.0902702   0.2450698
6 months    ki1000108-IRC              INDIA         0                    NA                0.0485075   0.0227527   0.0742622
6 months    ki1000108-IRC              INDIA         1                    NA                0.0789474   0.0293823   0.1285125
6 months    ki1000109-EE               PAKISTAN      0                    NA                0.1098039   0.0713647   0.1482432
6 months    ki1000109-EE               PAKISTAN      1                    NA                0.1351351   0.0247907   0.2454796
6 months    ki1000109-ResPak           PAKISTAN      0                    NA                0.1757422   0.1207482   0.2307362
6 months    ki1000109-ResPak           PAKISTAN      1                    NA                0.2930481   0.1528251   0.4332710
6 months    ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0650528   0.0461089   0.0839968
6 months    ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.1225237   0.0661569   0.1788905
6 months    ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1245679   0.0876461   0.1614897
6 months    ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.1875055   0.0920353   0.2829756
6 months    ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0379250   0.0181139   0.0577361
6 months    ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.0797028   0.0353709   0.1240346
6 months    ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0105932   0.0013496   0.0198369
6 months    ki1017093b-PROVIDE         BANGLADESH    1                    NA                0.0480000   0.0104944   0.0855056
6 months    ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0212766   0.0088287   0.0337245
6 months    ki1017093c-NIH-Crypto      BANGLADESH    1                    NA                0.0395480   0.0108154   0.0682806
6 months    ki1101329-Keneba           GAMBIA        0                    NA                0.0266465   0.0188543   0.0344388
6 months    ki1101329-Keneba           GAMBIA        1                    NA                0.0556765   0.0324850   0.0788680
6 months    ki1119695-PROBIT           BELARUS       0                    NA                0.0153197   0.0095952   0.0210442
6 months    ki1119695-PROBIT           BELARUS       1                    NA                0.0139897   0.0075015   0.0204779
6 months    ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0280036   0.0241071   0.0319001
6 months    ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.0697052   0.0557336   0.0836767
6 months    ki1135781-COHORTS          GUATEMALA     0                    NA                0.1330918   0.1083538   0.1578299
6 months    ki1135781-COHORTS          GUATEMALA     1                    NA                0.0700111   0.0325209   0.1075013
6 months    ki1135781-COHORTS          INDIA         0                    NA                0.0295771   0.0250366   0.0341176
6 months    ki1135781-COHORTS          INDIA         1                    NA                0.0490380   0.0365241   0.0615518
6 months    ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0416089   0.0332522   0.0499655
6 months    ki1135781-COHORTS          PHILIPPINES   1                    NA                0.0450908   0.0247510   0.0654306
6 months    ki1148112-LCNI-5           MALAWI        0                    NA                0.0800000   0.0613187   0.0986813
6 months    ki1148112-LCNI-5           MALAWI        1                    NA                0.3571429   0.1895146   0.5247712
6 months    kiGH5241-JiVitA-3          BANGLADESH    0                    NA                0.0274380   0.0243697   0.0305063
6 months    kiGH5241-JiVitA-3          BANGLADESH    1                    NA                0.0436771   0.0320083   0.0553458
6 months    kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0372472   0.0312620   0.0432323
6 months    kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.0628628   0.0411931   0.0845325
24 months   ki0047075b-MAL-ED          BANGLADESH    0                    NA                0.1097561   0.0617962   0.1577160
24 months   ki0047075b-MAL-ED          BANGLADESH    1                    NA                0.1351351   0.0247048   0.2455655
24 months   ki0047075b-MAL-ED          INDIA         0                    NA                0.1277778   0.0788980   0.1766575
24 months   ki0047075b-MAL-ED          INDIA         1                    NA                0.1395349   0.0357348   0.2433350
24 months   ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.3293054   0.2734968   0.3851140
24 months   ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.3679113   0.2697785   0.4660440
24 months   ki1000108-IRC              INDIA         0                    NA                0.0814620   0.0485792   0.1143447
24 months   ki1000108-IRC              INDIA         1                    NA                0.1159554   0.0558250   0.1760858
24 months   ki1000109-EE               PAKISTAN      0                    NA                0.2956522   0.2119428   0.3793616
24 months   ki1000109-EE               PAKISTAN      1                    NA                0.3636364   0.1618862   0.5653865
24 months   ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.1984958   0.1527432   0.2442483
24 months   ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.2059403   0.1310236   0.2808569
24 months   ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0907080   0.0642087   0.1172073
24 months   ki1017093b-PROVIDE         BANGLADESH    1                    NA                0.0677966   0.0223975   0.1131958
24 months   ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0604396   0.0359345   0.0849446
24 months   ki1017093c-NIH-Crypto      BANGLADESH    1                    NA                0.0661765   0.0243552   0.1079978
24 months   ki1101329-Keneba           GAMBIA        0                    NA                0.0728334   0.0590428   0.0866240
24 months   ki1101329-Keneba           GAMBIA        1                    NA                0.1056582   0.0721278   0.1391885
24 months   ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0904110   0.0609591   0.1198628
24 months   ki1113344-GMS-Nepal        NEPAL         1                    NA                0.1000000   0.0379523   0.1620477
24 months   ki1114097-CMIN             BANGLADESH    0                    NA                0.2672811   0.2082734   0.3262889
24 months   ki1114097-CMIN             BANGLADESH    1                    NA                0.3333333   0.0942583   0.5724084
24 months   ki1119695-PROBIT           BELARUS       0                    NA                0.0152144   0.0005501   0.0298788
24 months   ki1119695-PROBIT           BELARUS       1                    NA                0.0173997   0.0042374   0.0305619
24 months   ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0911583   0.0757030   0.1066137
24 months   ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.1227274   0.0679583   0.1774964
24 months   ki1135781-COHORTS          GUATEMALA     0                    NA                0.4993522   0.4662239   0.5324804
24 months   ki1135781-COHORTS          GUATEMALA     1                    NA                0.4339265   0.3553880   0.5124651
24 months   ki1135781-COHORTS          INDIA         0                    NA                0.2091443   0.1969271   0.2213616
24 months   ki1135781-COHORTS          INDIA         1                    NA                0.2345715   0.2056789   0.2634642
24 months   ki1135781-COHORTS          PHILIPPINES   0                    NA                0.2821613   0.2623672   0.3019554
24 months   ki1135781-COHORTS          PHILIPPINES   1                    NA                0.2664935   0.2210917   0.3118954
24 months   kiGH5241-JiVitA-3          BANGLADESH    0                    NA                0.1156250   0.1066501   0.1246000
24 months   kiGH5241-JiVitA-3          BANGLADESH    1                    NA                0.1172708   0.0900883   0.1444532
24 months   kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0801481   0.0701925   0.0901036
24 months   kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.1065081   0.0775263   0.1354898


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
6 months    ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 1.6889780   0.9402369    3.0339659
6 months    ki1000108-IRC              INDIA         0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000108-IRC              INDIA         1                    0                 1.6275303   0.7152181    3.7035625
6 months    ki1000109-EE               PAKISTAN      0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000109-EE               PAKISTAN      1                    0                 1.2306950   0.5061877    2.9921906
6 months    ki1000109-ResPak           PAKISTAN      0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000109-ResPak           PAKISTAN      1                    0                 1.6674881   0.9402447    2.9572266
6 months    ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA         1                    0                 1.8834489   1.1516977    3.0801310
6 months    ki1000304b-SAS-FoodSuppl   INDIA         0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA         1                    0                 1.5052470   0.8334691    2.7184794
6 months    ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH    1                    0                 2.1015906   0.9803906    4.5050240
6 months    ki1017093b-PROVIDE         BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH    1                    0                 4.5312000   1.4044963   14.6186030
6 months    ki1017093c-NIH-Crypto      BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH    1                    0                 1.8587571   0.7313258    4.7242661
6 months    ki1101329-Keneba           GAMBIA        0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1101329-Keneba           GAMBIA        1                    0                 2.0894476   1.2563008    3.4751163
6 months    ki1119695-PROBIT           BELARUS       0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT           BELARUS       1                    0                 0.9131865   0.6001985    1.3893896
6 months    ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 2.4891497   1.9504413    3.1766483
6 months    ki1135781-COHORTS          GUATEMALA     0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          GUATEMALA     1                    0                 0.5260362   0.2985524    0.9268526
6 months    ki1135781-COHORTS          INDIA         0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          INDIA         1                    0                 1.6579701   1.2311746    2.2327174
6 months    ki1135781-COHORTS          PHILIPPINES   0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   1                    0                 1.0836821   0.6614718    1.7753847
6 months    ki1148112-LCNI-5           MALAWI        0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5           MALAWI        1                    0                 4.4642857   2.6428796    7.5409592
6 months    kiGH5241-JiVitA-3          BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    1                    0                 1.5918477   1.1879843    2.1330072
6 months    kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH    1                    0                 1.6877201   1.1538056    2.4686993
24 months   ki0047075b-MAL-ED          BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH    1                    0                 1.2312312   0.4874034    3.1102168
24 months   ki0047075b-MAL-ED          INDIA         0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          INDIA         1                    0                 1.0920121   0.4730886    2.5206494
24 months   ki1000108-CMC-V-BCS-2002   INDIA         0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 1.1172343   0.8156145    1.5303952
24 months   ki1000108-IRC              INDIA         0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1000108-IRC              INDIA         1                    0                 1.4234297   0.7371915    2.7484744
24 months   ki1000109-EE               PAKISTAN      0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1000109-EE               PAKISTAN      1                    0                 1.2299465   0.6597384    2.2929822
24 months   ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH    1                    0                 1.0375046   0.6740209    1.5970066
24 months   ki1017093b-PROVIDE         BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH    1                    0                 0.7474163   0.3599748    1.5518618
24 months   ki1017093c-NIH-Crypto      BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH    1                    0                 1.0949198   0.5167665    2.3199053
24 months   ki1101329-Keneba           GAMBIA        0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1101329-Keneba           GAMBIA        1                    0                 1.4506824   1.0028317    2.0985371
24 months   ki1113344-GMS-Nepal        NEPAL         0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL         1                    0                 1.1060606   0.5488190    2.2290959
24 months   ki1114097-CMIN             BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1114097-CMIN             BANGLADESH    1                    0                 1.2471264   0.5888451    2.6413131
24 months   ki1119695-PROBIT           BELARUS       0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1119695-PROBIT           BELARUS       1                    0                 1.1436275   0.3200540    4.0864468
24 months   ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 1.3463102   0.8351020    2.1704548
24 months   ki1135781-COHORTS          GUATEMALA     0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     1                    0                 0.8689790   0.7170538    1.0530932
24 months   ki1135781-COHORTS          INDIA         0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          INDIA         1                    0                 1.1215774   0.9791858    1.2846754
24 months   ki1135781-COHORTS          PHILIPPINES   0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   1                    0                 0.9444723   0.7860620    1.1348061
24 months   kiGH5241-JiVitA-3          BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    1                    0                 1.0142337   0.7939393    1.2956532
24 months   kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    1                    0                 1.3288913   0.9893426    1.7849753


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                 0.0164294   -0.0049560    0.0378149
6 months    ki1000108-IRC              INDIA         0                    NA                 0.0090842   -0.0076438    0.0258121
6 months    ki1000109-EE               PAKISTAN      0                    NA                 0.0032098   -0.0116279    0.0180475
6 months    ki1000109-ResPak           PAKISTAN      0                    NA                 0.0216262   -0.0063700    0.0496224
6 months    ki1000304b-SAS-CompFeed    INDIA         0                    NA                 0.0074946   -0.0001790    0.0151681
6 months    ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                 0.0175374   -0.0019198    0.0369945
6 months    ki1017093-NIH-Birth        BANGLADESH    0                    NA                 0.0107132   -0.0028318    0.0242581
6 months    ki1017093b-PROVIDE         BANGLADESH    0                    NA                 0.0078322   -0.0003475    0.0160119
6 months    ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                 0.0046600   -0.0033482    0.0126682
6 months    ki1101329-Keneba           GAMBIA        0                    NA                 0.0053890    0.0008120    0.0099660
6 months    ki1119695-PROBIT           BELARUS       0                    NA                -0.0000220   -0.0011205    0.0010766
6 months    ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                 0.0060067    0.0037793    0.0082341
6 months    ki1135781-COHORTS          GUATEMALA     0                    NA                -0.0121151   -0.0209636   -0.0032667
6 months    ki1135781-COHORTS          INDIA         0                    NA                 0.0033055    0.0009801    0.0056309
6 months    ki1135781-COHORTS          PHILIPPINES   0                    NA                 0.0004274   -0.0028751    0.0037299
6 months    ki1148112-LCNI-5           MALAWI        0                    NA                 0.0046246   -0.0002290    0.0094781
6 months    kiGH5241-JiVitA-3          BANGLADESH    0                    NA                 0.0016269    0.0003637    0.0028900
6 months    kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0022086    0.0002650    0.0041522
24 months   ki0047075b-MAL-ED          BANGLADESH    0                    NA                 0.0046718   -0.0175324    0.0268760
24 months   ki0047075b-MAL-ED          INDIA         0                    NA                 0.0022671   -0.0198648    0.0243989
24 months   ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                 0.0058594   -0.0224498    0.0341687
24 months   ki1000108-IRC              INDIA         0                    NA                 0.0099218   -0.0101607    0.0300044
24 months   ki1000109-EE               PAKISTAN      0                    NA                 0.0109172   -0.0244087    0.0462430
24 months   ki1017093-NIH-Birth        BANGLADESH    0                    NA                 0.0019932   -0.0227677    0.0267542
24 months   ki1017093b-PROVIDE         BANGLADESH    0                    NA                -0.0047431   -0.0156521    0.0061659
24 months   ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                 0.0015604   -0.0116258    0.0147467
24 months   ki1101329-Keneba           GAMBIA        0                    NA                 0.0058786   -0.0010813    0.0128385
24 months   ki1113344-GMS-Nepal        NEPAL         0                    NA                 0.0018967   -0.0116934    0.0154869
24 months   ki1114097-CMIN             BANGLADESH    0                    NA                 0.0042706   -0.0117879    0.0203291
24 months   ki1119695-PROBIT           BELARUS       0                    NA                 0.0006586   -0.0039505    0.0052676
24 months   ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                 0.0025294   -0.0031310    0.0081898
24 months   ki1135781-COHORTS          GUATEMALA     0                    NA                -0.0095761   -0.0222074    0.0030551
24 months   ki1135781-COHORTS          INDIA         0                    NA                 0.0042679   -0.0007449    0.0092808
24 months   ki1135781-COHORTS          PHILIPPINES   0                    NA                -0.0022295   -0.0096354    0.0051765
24 months   kiGH5241-JiVitA-3          BANGLADESH    0                    NA                -0.0000492   -0.0031618    0.0030634
24 months   kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0025866    0.0000307    0.0051425


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                 0.1419972   -0.0600095    0.3055074
6 months    ki1000108-IRC              INDIA         0                    NA                 0.1577341   -0.1800814    0.3988449
6 months    ki1000109-EE               PAKISTAN      0                    NA                 0.0284017   -0.1118993    0.1509993
6 months    ki1000109-ResPak           PAKISTAN      0                    NA                 0.1095727   -0.0424870    0.2394527
6 months    ki1000304b-SAS-CompFeed    INDIA         0                    NA                 0.1033057   -0.0035421    0.1987774
6 months    ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                 0.1234111   -0.0221937    0.2482754
6 months    ki1017093-NIH-Birth        BANGLADESH    0                    NA                 0.2202627   -0.0996480    0.4471046
6 months    ki1017093b-PROVIDE         BANGLADESH    0                    NA                 0.4250770   -0.0928713    0.6975523
6 months    ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                 0.1796690   -0.1798998    0.4296610
6 months    ki1101329-Keneba           GAMBIA        0                    NA                 0.1682190    0.0186291    0.2950070
6 months    ki1119695-PROBIT           BELARUS       0                    NA                -0.0014360   -0.0757160    0.0677148
6 months    ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                 0.1766136    0.1116610    0.2368170
6 months    ki1135781-COHORTS          GUATEMALA     0                    NA                -0.1001444   -0.1740381   -0.0309015
6 months    ki1135781-COHORTS          INDIA         0                    NA                 0.1005242    0.0281549    0.1675045
6 months    ki1135781-COHORTS          PHILIPPINES   0                    NA                 0.0101672   -0.0715916    0.0856881
6 months    ki1148112-LCNI-5           MALAWI        0                    NA                 0.0546479   -0.0037528    0.1096507
6 months    kiGH5241-JiVitA-3          BANGLADESH    0                    NA                 0.0559743    0.0118507    0.0981277
6 months    kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0559774    0.0050854    0.1042662
24 months   ki0047075b-MAL-ED          BANGLADESH    0                    NA                 0.0408271   -0.1736513    0.2161108
24 months   ki0047075b-MAL-ED          INDIA         0                    NA                 0.0174330   -0.1682942    0.1736345
24 months   ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                 0.0174823   -0.0707146    0.0984142
24 months   ki1000108-IRC              INDIA         0                    NA                 0.1085734   -0.1381249    0.3017977
24 months   ki1000109-EE               PAKISTAN      0                    NA                 0.0356108   -0.0867270    0.1441765
24 months   ki1017093-NIH-Birth        BANGLADESH    0                    NA                 0.0099419   -0.1215786    0.1260399
24 months   ki1017093b-PROVIDE         BANGLADESH    0                    NA                -0.0551743   -0.1892409    0.0637786
24 months   ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                 0.0251684   -0.2123089    0.2161266
24 months   ki1101329-Keneba           GAMBIA        0                    NA                 0.0746845   -0.0171922    0.1582626
24 months   ki1113344-GMS-Nepal        NEPAL         0                    NA                 0.0205479   -0.1382088    0.1571614
24 months   ki1114097-CMIN             BANGLADESH    0                    NA                 0.0157267   -0.0451956    0.0730980
24 months   ki1119695-PROBIT           BELARUS       0                    NA                 0.0414898   -0.3234181    0.3057811
24 months   ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                 0.0269980   -0.0352216    0.0854780
24 months   ki1135781-COHORTS          GUATEMALA     0                    NA                -0.0195521   -0.0456967    0.0059389
24 months   ki1135781-COHORTS          INDIA         0                    NA                 0.0199985   -0.0037691    0.0432033
24 months   ki1135781-COHORTS          PHILIPPINES   0                    NA                -0.0079643   -0.0347622    0.0181397
24 months   kiGH5241-JiVitA-3          BANGLADESH    0                    NA                -0.0004256   -0.0277230    0.0261467
24 months   kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0312636   -0.0004940    0.0620131

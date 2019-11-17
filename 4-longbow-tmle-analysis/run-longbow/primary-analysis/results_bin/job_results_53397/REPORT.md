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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        enwast    stunted   n_cell       n
----------  -------------------------  -----------------------------  -------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               0      155     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               1       24     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0       32     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1        4     215
Birth       ki0047075b-MAL-ED          BRAZIL                         0               0       54      62
Birth       ki0047075b-MAL-ED          BRAZIL                         0               1        6      62
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0        2      62
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        0      62
Birth       ki0047075b-MAL-ED          INDIA                          0               0       33      45
Birth       ki0047075b-MAL-ED          INDIA                          0               1        7      45
Birth       ki0047075b-MAL-ED          INDIA                          1               0        4      45
Birth       ki0047075b-MAL-ED          INDIA                          1               1        1      45
Birth       ki0047075b-MAL-ED          NEPAL                          0               0       24      26
Birth       ki0047075b-MAL-ED          NEPAL                          0               1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          1               0        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        1      26
Birth       ki0047075b-MAL-ED          PERU                           0               0      202     228
Birth       ki0047075b-MAL-ED          PERU                           0               1       21     228
Birth       ki0047075b-MAL-ED          PERU                           1               0        5     228
Birth       ki0047075b-MAL-ED          PERU                           1               1        0     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      100     121
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        8     121
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       13     121
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      102     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       12     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        0     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               0       66      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               1        9      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0        9      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        3      87
Birth       ki1000108-IRC              INDIA                          0               0      228     364
Birth       ki1000108-IRC              INDIA                          0               1       23     364
Birth       ki1000108-IRC              INDIA                          1               0      111     364
Birth       ki1000108-IRC              INDIA                          1               1        2     364
Birth       ki1000109-EE               PAKISTAN                       0               0      120     180
Birth       ki1000109-EE               PAKISTAN                       0               1       35     180
Birth       ki1000109-EE               PAKISTAN                       1               0       20     180
Birth       ki1000109-EE               PAKISTAN                       1               1        5     180
Birth       ki1000109-ResPak           PAKISTAN                       0               0       26      38
Birth       ki1000109-ResPak           PAKISTAN                       0               1        8      38
Birth       ki1000109-ResPak           PAKISTAN                       1               0        2      38
Birth       ki1000109-ResPak           PAKISTAN                       1               1        2      38
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               0      806    1105
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               1      179    1105
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0       97    1105
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1       23    1105
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               0      360     580
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               1       47     580
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               0      151     580
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               1       22     580
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               0      386     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               1       29     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               0      105     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               1       12     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0      468     713
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1       67     713
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0      163     713
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1       15     713
Birth       ki1101329-Keneba           GAMBIA                         0               0     1065    1488
Birth       ki1101329-Keneba           GAMBIA                         0               1       37    1488
Birth       ki1101329-Keneba           GAMBIA                         1               0      381    1488
Birth       ki1101329-Keneba           GAMBIA                         1               1        5    1488
Birth       ki1113344-GMS-Nepal        NEPAL                          0               0      450     645
Birth       ki1113344-GMS-Nepal        NEPAL                          0               1       59     645
Birth       ki1113344-GMS-Nepal        NEPAL                          1               0      124     645
Birth       ki1113344-GMS-Nepal        NEPAL                          1               1       12     645
Birth       ki1114097-CMIN             BANGLADESH                     0               0       14      19
Birth       ki1114097-CMIN             BANGLADESH                     0               1        1      19
Birth       ki1114097-CMIN             BANGLADESH                     1               0        3      19
Birth       ki1114097-CMIN             BANGLADESH                     1               1        1      19
Birth       ki1114097-CONTENT          PERU                           0               0        2       2
Birth       ki1114097-CONTENT          PERU                           0               1        0       2
Birth       ki1114097-CONTENT          PERU                           1               0        0       2
Birth       ki1114097-CONTENT          PERU                           1               1        0       2
Birth       ki1119695-PROBIT           BELARUS                        0               0    10916   13883
Birth       ki1119695-PROBIT           BELARUS                        0               1       26   13883
Birth       ki1119695-PROBIT           BELARUS                        1               0     2941   13883
Birth       ki1119695-PROBIT           BELARUS                        1               1        0   13883
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               0    10252   13092
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               1      604   13092
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0     2146   13092
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1       90   13092
Birth       ki1135781-COHORTS          GUATEMALA                      0               0      540     762
Birth       ki1135781-COHORTS          GUATEMALA                      0               1       24     762
Birth       ki1135781-COHORTS          GUATEMALA                      1               0      198     762
Birth       ki1135781-COHORTS          GUATEMALA                      1               1        0     762
Birth       ki1135781-COHORTS          INDIA                          0               0     4772    6231
Birth       ki1135781-COHORTS          INDIA                          0               1      325    6231
Birth       ki1135781-COHORTS          INDIA                          1               0     1074    6231
Birth       ki1135781-COHORTS          INDIA                          1               1       60    6231
Birth       ki1135781-COHORTS          PHILIPPINES                    0               0     2373    2910
Birth       ki1135781-COHORTS          PHILIPPINES                    0               1       75    2910
Birth       ki1135781-COHORTS          PHILIPPINES                    1               0      451    2910
Birth       ki1135781-COHORTS          PHILIPPINES                    1               1       11    2910
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               0    13377   18062
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1     2664   18062
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0     1691   18062
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1      330   18062
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0     1777    2399
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1      380    2399
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0      189    2399
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1       53    2399
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               0      158     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               1       30     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0       34     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        7     229
6 months    ki0047075b-MAL-ED          BRAZIL                         0               0      186     199
6 months    ki0047075b-MAL-ED          BRAZIL                         0               1        6     199
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0        7     199
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0     199
6 months    ki0047075b-MAL-ED          INDIA                          0               0      154     232
6 months    ki0047075b-MAL-ED          INDIA                          0               1       35     232
6 months    ki0047075b-MAL-ED          INDIA                          1               0       36     232
6 months    ki0047075b-MAL-ED          INDIA                          1               1        7     232
6 months    ki0047075b-MAL-ED          NEPAL                          0               0      193     232
6 months    ki0047075b-MAL-ED          NEPAL                          0               1        8     232
6 months    ki0047075b-MAL-ED          NEPAL                          1               0       29     232
6 months    ki0047075b-MAL-ED          NEPAL                          1               1        2     232
6 months    ki0047075b-MAL-ED          PERU                           0               0      205     266
6 months    ki0047075b-MAL-ED          PERU                           0               1       56     266
6 months    ki0047075b-MAL-ED          PERU                           1               0        5     266
6 months    ki0047075b-MAL-ED          PERU                           1               1        0     266
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      189     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       46     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       15     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        3     253
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      184     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       51     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        2     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     238
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               0      196     363
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               1       76     363
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0       57     363
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1       34     363
6 months    ki1000108-IRC              INDIA                          0               0      214     382
6 months    ki1000108-IRC              INDIA                          0               1       54     382
6 months    ki1000108-IRC              INDIA                          1               0       84     382
6 months    ki1000108-IRC              INDIA                          1               1       30     382
6 months    ki1000109-EE               PAKISTAN                       0               0      152     292
6 months    ki1000109-EE               PAKISTAN                       0               1      103     292
6 months    ki1000109-EE               PAKISTAN                       1               0       22     292
6 months    ki1000109-EE               PAKISTAN                       1               1       15     292
6 months    ki1000109-ResPak           PAKISTAN                       0               0      120     228
6 months    ki1000109-ResPak           PAKISTAN                       0               1       65     228
6 months    ki1000109-ResPak           PAKISTAN                       1               0       26     228
6 months    ki1000109-ResPak           PAKISTAN                       1               1       17     228
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               0      831    1213
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               1      243    1213
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0       90    1213
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1       49    1213
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0      181     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               1      130     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0       36     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1       33     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               0      282     514
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               1       86     514
6 months    ki1017093-NIH-Birth        BANGLADESH                     1               0      107     514
6 months    ki1017093-NIH-Birth        BANGLADESH                     1               1       39     514
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      403     597
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               1       69     597
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      104     597
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1       21     597
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0      417     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               1      100     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      143     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1       34     694
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1715    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      186    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      111    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        8    2020
6 months    ki1101329-Keneba           GAMBIA                         0               0     1425    2029
6 months    ki1101329-Keneba           GAMBIA                         0               1      216    2029
6 months    ki1101329-Keneba           GAMBIA                         1               0      325    2029
6 months    ki1101329-Keneba           GAMBIA                         1               1       63    2029
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               0      208     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               1       85     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               0        1     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               1        5     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0               0      345     528
6 months    ki1113344-GMS-Nepal        NEPAL                          0               1       76     528
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0       86     528
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1       21     528
6 months    ki1114097-CMIN             BANGLADESH                     0               0      142     232
6 months    ki1114097-CMIN             BANGLADESH                     0               1       76     232
6 months    ki1114097-CMIN             BANGLADESH                     1               0        8     232
6 months    ki1114097-CMIN             BANGLADESH                     1               1        6     232
6 months    ki1114097-CONTENT          PERU                           0               0      195     215
6 months    ki1114097-CONTENT          PERU                           0               1       19     215
6 months    ki1114097-CONTENT          PERU                           1               0        1     215
6 months    ki1114097-CONTENT          PERU                           1               1        0     215
6 months    ki1119695-PROBIT           BELARUS                        0               0    11917   15754
6 months    ki1119695-PROBIT           BELARUS                        0               1      804   15754
6 months    ki1119695-PROBIT           BELARUS                        1               0     2851   15754
6 months    ki1119695-PROBIT           BELARUS                        1               1      182   15754
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               0     6001    8174
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               1      903    8174
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0      974    8174
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1      296    8174
6 months    ki1135781-COHORTS          GUATEMALA                      0               0      420     901
6 months    ki1135781-COHORTS          GUATEMALA                      0               1      305     901
6 months    ki1135781-COHORTS          GUATEMALA                      1               0      115     901
6 months    ki1135781-COHORTS          GUATEMALA                      1               1       61     901
6 months    ki1135781-COHORTS          INDIA                          0               0     4516    6508
6 months    ki1135781-COHORTS          INDIA                          0               1      848    6508
6 months    ki1135781-COHORTS          INDIA                          1               0      943    6508
6 months    ki1135781-COHORTS          INDIA                          1               1      201    6508
6 months    ki1135781-COHORTS          PHILIPPINES                    0               0     1760    2593
6 months    ki1135781-COHORTS          PHILIPPINES                    0               1      431    2593
6 months    ki1135781-COHORTS          PHILIPPINES                    1               0      332    2593
6 months    ki1135781-COHORTS          PHILIPPINES                    1               1       70    2593
6 months    ki1148112-LCNI-5           MALAWI                         0               0      522     839
6 months    ki1148112-LCNI-5           MALAWI                         0               1      303     839
6 months    ki1148112-LCNI-5           MALAWI                         1               0        8     839
6 months    ki1148112-LCNI-5           MALAWI                         1               1        6     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               0    10434   14244
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1     2290   14244
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0     1225   14244
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1      295   14244
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0     3163    4410
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1      847    4410
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0      295    4410
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1      105    4410
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0       88     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1       76     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0       22     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1       15     201
24 months   ki0047075b-MAL-ED          BRAZIL                         0               0      147     160
24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        7     160
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0        6     160
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        0     160
24 months   ki0047075b-MAL-ED          INDIA                          0               0       98     223
24 months   ki0047075b-MAL-ED          INDIA                          0               1       82     223
24 months   ki0047075b-MAL-ED          INDIA                          1               0       32     223
24 months   ki0047075b-MAL-ED          INDIA                          1               1       11     223
24 months   ki0047075b-MAL-ED          NEPAL                          0               0      155     225
24 months   ki0047075b-MAL-ED          NEPAL                          0               1       40     225
24 months   ki0047075b-MAL-ED          NEPAL                          1               0       22     225
24 months   ki0047075b-MAL-ED          NEPAL                          1               1        8     225
24 months   ki0047075b-MAL-ED          PERU                           0               0      122     197
24 months   ki0047075b-MAL-ED          PERU                           0               1       71     197
24 months   ki0047075b-MAL-ED          PERU                           1               0        3     197
24 months   ki0047075b-MAL-ED          PERU                           1               1        1     197
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      140     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       81     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       13     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        3     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       56     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1      146     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        2     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     205
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0       73     364
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1      199     364
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0       29     364
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1       63     364
24 months   ki1000108-IRC              INDIA                          0               0      164     383
24 months   ki1000108-IRC              INDIA                          0               1      105     383
24 months   ki1000108-IRC              INDIA                          1               0       63     383
24 months   ki1000108-IRC              INDIA                          1               1       51     383
24 months   ki1000109-EE               PAKISTAN                       0               0       35     137
24 months   ki1000109-EE               PAKISTAN                       0               1       80     137
24 months   ki1000109-EE               PAKISTAN                       1               0        7     137
24 months   ki1000109-EE               PAKISTAN                       1               1       15     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               0      129     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               1      164     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1               0       56     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1               1       60     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      303     570
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1      149     570
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0       82     570
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       36     570
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0      276     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1       88     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      100     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       36     500
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ki1101329-Keneba           GAMBIA                         0               0      915    1677
24 months   ki1101329-Keneba           GAMBIA                         0               1      439    1677
24 months   ki1101329-Keneba           GAMBIA                         1               0      200    1677
24 months   ki1101329-Keneba           GAMBIA                         1               1      123    1677
24 months   ki1113344-GMS-Nepal        NEPAL                          0               0      204     455
24 months   ki1113344-GMS-Nepal        NEPAL                          0               1      161     455
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0       54     455
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1       36     455
24 months   ki1114097-CMIN             BANGLADESH                     0               0       71     232
24 months   ki1114097-CMIN             BANGLADESH                     0               1      146     232
24 months   ki1114097-CMIN             BANGLADESH                     1               0        6     232
24 months   ki1114097-CMIN             BANGLADESH                     1               1        9     232
24 months   ki1114097-CONTENT          PERU                           0               0      142     164
24 months   ki1114097-CONTENT          PERU                           0               1       21     164
24 months   ki1114097-CONTENT          PERU                           1               0        1     164
24 months   ki1114097-CONTENT          PERU                           1               1        0     164
24 months   ki1119695-PROBIT           BELARUS                        0               0     2869    4032
24 months   ki1119695-PROBIT           BELARUS                        0               1      252    4032
24 months   ki1119695-PROBIT           BELARUS                        1               0      820    4032
24 months   ki1119695-PROBIT           BELARUS                        1               1       91    4032
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               0      918    1505
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               1      428    1505
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0      100    1505
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1       59    1505
24 months   ki1135781-COHORTS          GUATEMALA                      0               0      160    1027
24 months   ki1135781-COHORTS          GUATEMALA                      0               1      714    1027
24 months   ki1135781-COHORTS          GUATEMALA                      1               0       32    1027
24 months   ki1135781-COHORTS          GUATEMALA                      1               1      121    1027
24 months   ki1135781-COHORTS          INDIA                          0               0     2031    5070
24 months   ki1135781-COHORTS          INDIA                          0               1     2221    5070
24 months   ki1135781-COHORTS          INDIA                          1               0      393    5070
24 months   ki1135781-COHORTS          INDIA                          1               1      425    5070
24 months   ki1135781-COHORTS          PHILIPPINES                    0               0      761    2347
24 months   ki1135781-COHORTS          PHILIPPINES                    0               1     1228    2347
24 months   ki1135781-COHORTS          PHILIPPINES                    1               0      147    2347
24 months   ki1135781-COHORTS          PHILIPPINES                    1               1      211    2347
24 months   ki1148112-LCNI-5           MALAWI                         0               0      317     579
24 months   ki1148112-LCNI-5           MALAWI                         0               1      252     579
24 months   ki1148112-LCNI-5           MALAWI                         1               0        4     579
24 months   ki1148112-LCNI-5           MALAWI                         1               1        6     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               0     3592    7242
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1     2830    7242
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0      474    7242
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      346    7242
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0     2490    4315
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1     1453    4315
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0      214    4315
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1      158    4315


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
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
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




# Results Detail

## Results Plots
![](/tmp/88a1f68f-630c-4785-a821-89d92a417289/ae70bf46-87e4-4b0e-8fc1-121a64edbdf9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/88a1f68f-630c-4785-a821-89d92a417289/ae70bf46-87e4-4b0e-8fc1-121a64edbdf9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/88a1f68f-630c-4785-a821-89d92a417289/ae70bf46-87e4-4b0e-8fc1-121a64edbdf9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/88a1f68f-630c-4785-a821-89d92a417289/ae70bf46-87e4-4b0e-8fc1-121a64edbdf9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000109-EE               PAKISTAN                       0                    NA                0.2258065   0.1598002   0.2918127
Birth       ki1000109-EE               PAKISTAN                       1                    NA                0.2000000   0.0427655   0.3572345
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1813263   0.1553298   0.2073229
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1895921   0.1013926   0.2777916
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1141596   0.0832479   0.1450713
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1318141   0.0802867   0.1833415
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0690756   0.0447115   0.0934397
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1076437   0.0473454   0.1679420
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1258610   0.0976233   0.1540987
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0885871   0.0460427   0.1311314
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                0.0335753   0.0229364   0.0442142
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                0.0129534   0.0016694   0.0242373
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1166249   0.0886796   0.1445702
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0880130   0.0383565   0.1376695
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0554661   0.0511559   0.0597762
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0409568   0.0326191   0.0492946
Birth       ki1135781-COHORTS          INDIA                          0                    NA                0.0639949   0.0572656   0.0707241
Birth       ki1135781-COHORTS          INDIA                          1                    NA                0.0514576   0.0384411   0.0644741
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0307277   0.0238899   0.0375655
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0235276   0.0097232   0.0373320
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1661938   0.1598462   0.1725414
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1654793   0.1482516   0.1827070
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1761526   0.1573115   0.1949937
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2190490   0.1534468   0.2846512
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1595745   0.1071117   0.2120372
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1707317   0.0553037   0.2861597
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.1851852   0.1296859   0.2406845
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.1627907   0.0522089   0.2733725
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2798606   0.2264665   0.3332548
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3676921   0.2677883   0.4675960
6 months    ki1000108-IRC              INDIA                          0                    NA                0.2003695   0.1522508   0.2484882
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2563659   0.1747225   0.3380092
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.4044880   0.3441416   0.4648345
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.4337095   0.2723234   0.5950955
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.3493934   0.2804425   0.4183443
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.4011856   0.2490681   0.5533031
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2262435   0.2027995   0.2496874
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3552234   0.2280616   0.4823852
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.4209903   0.3658853   0.4760954
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4885262   0.3689906   0.6080618
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2346533   0.1912018   0.2781047
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2724363   0.1984861   0.3463866
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1451693   0.1132784   0.1770601
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1680015   0.1020315   0.2339715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1918035   0.1576568   0.2259502
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2048113   0.1447403   0.2648822
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0978432   0.0844843   0.1112021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0672269   0.0222239   0.1122299
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.1317844   0.1154095   0.1481594
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1607488   0.1242245   0.1972732
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1788693   0.1422115   0.2155270
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1988498   0.1234566   0.2742430
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.3486239   0.2852292   0.4120185
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.4285714   0.1687861   0.6883568
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0630777   0.0484119   0.0777435
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0617233   0.0399852   0.0834613
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1304105   0.1224510   0.1383700
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2398076   0.2158227   0.2637924
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.4224394   0.3864540   0.4584249
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.3392747   0.2684516   0.4100977
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.1580850   0.1483205   0.1678496
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.1762286   0.1541274   0.1983297
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1960248   0.1794001   0.2126494
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1773047   0.1401447   0.2144647
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                0.3672727   0.3340779   0.4004675
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.4285714   0.2554457   0.6016972
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1796406   0.1718816   0.1873996
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1971455   0.1739593   0.2203318
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2112747   0.1967854   0.2257639
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2614468   0.2121632   0.3107304
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4605419   0.3836842   0.5373995
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4280921   0.2580823   0.5981018
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.4582019   0.3853413   0.5310624
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.2279057   0.0887169   0.3670944
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2051282   0.1483268   0.2619296
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2666667   0.1080716   0.4252618
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7302189   0.6774556   0.7829822
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6679602   0.5721968   0.7637235
24 months   ki1000108-IRC              INDIA                          0                    NA                0.3892204   0.3307769   0.4476640
24 months   ki1000108-IRC              INDIA                          1                    NA                0.4523779   0.3596966   0.5450592
24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.6956522   0.6112466   0.7800578
24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.6818182   0.4864744   0.8771619
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.5627095   0.5058358   0.6195832
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.5127579   0.4198247   0.6056911
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3294819   0.2860561   0.3729078
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2982592   0.2143709   0.3821475
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2357941   0.1918562   0.2797320
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2893040   0.2147904   0.3638177
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.3254656   0.3005360   0.3503952
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3757507   0.3230378   0.4284636
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4406624   0.3896735   0.4916513
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3997354   0.2967582   0.5027126
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.6728111   0.6102503   0.7353718
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.6000000   0.3515459   0.8484541
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0799141   0.0482956   0.1115325
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.1043847   0.0665965   0.1421730
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3174804   0.2925978   0.3423631
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3759235   0.2999008   0.4519462
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.8170833   0.7914198   0.8427467
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7895032   0.7234727   0.8555336
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.5217374   0.5067760   0.5366988
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.5207716   0.4871816   0.5543616
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6136749   0.5923467   0.6350030
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6090012   0.5582973   0.6597051
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4396351   0.4247960   0.4544741
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4282304   0.3893064   0.4671545
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3683957   0.3500027   0.3867887
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4224566   0.3628071   0.4821062


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                0.2222222   0.1613186   0.2831258
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1828054   0.1605315   0.2050793
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1189655   0.0925952   0.1453359
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0770677   0.0543836   0.0997518
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1150070   0.0915734   0.1384407
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0282258   0.0198080   0.0366436
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1100775   0.0859045   0.1342505
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0530095   0.0491714   0.0568475
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.0617878   0.0558091   0.0677665
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0295533   0.0233992   0.0357074
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1657624   0.1596821   0.1718426
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1804919   0.1622043   0.1987794
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1615721   0.1137975   0.2093466
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1810345   0.1313803   0.2306886
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3030303   0.2556886   0.3503720
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2198953   0.1783071   0.2614835
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.4041096   0.3477284   0.4604908
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.3596491   0.2972205   0.4220777
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2407255   0.2138448   0.2676061
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2431907   0.2060665   0.2803148
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1507538   0.1220277   0.1794798
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1930836   0.1636957   0.2224715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0960396   0.0831873   0.1088919
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1375062   0.1225178   0.1524945
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1837121   0.1506498   0.2167744
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3534483   0.2918020   0.4150945
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0625873   0.0488338   0.0763408
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1466846   0.1390145   0.1543548
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4062153   0.3741290   0.4383016
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1611862   0.1522521   0.1701204
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1932125   0.1780130   0.2084119
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3682956   0.3356382   0.4009530
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1814799   0.1738720   0.1890878
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2158730   0.2021674   0.2295786
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4527363   0.3837514   0.5217212
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4170404   0.3521799   0.4819008
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2133333   0.1596859   0.2669808
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7197802   0.6735800   0.7659804
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4073107   0.3580395   0.4565819
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.6934307   0.6159409   0.7709205
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5476773   0.4993820   0.5959725
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3245614   0.2860904   0.3630324
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2480000   0.2101093   0.2858907
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3351222   0.3125235   0.3577210
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4329670   0.3873894   0.4785447
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.6681034   0.6073788   0.7288281
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0850694   0.0559313   0.1142076
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3235880   0.2999438   0.3472323
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8130477   0.7891917   0.8369037
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.5218935   0.5081423   0.5356447
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6131231   0.5934151   0.6328312
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4385529   0.4244156   0.4526902
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3733488   0.3557063   0.3909913


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000109-EE               PAKISTAN                       1                    0                 0.8857143   0.3828476   2.0490918
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.0455850   0.6186623   1.7671162
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.1546476   0.7174647   1.8582252
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.5583463   0.8035338   3.0222039
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 0.7038484   0.4136711   1.1975758
Birth       ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA                         1                    0                 0.3858003   0.1526824   0.9748462
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.7546674   0.4084898   1.3942158
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.7384128   0.5938750   0.9181282
Birth       ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 0.8040888   0.6116601   1.0570557
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.7656805   0.4088761   1.4338491
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.9957010   0.8934857   1.1096098
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.2435184   0.9060042   1.7067669
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.0699187   0.5044964   2.2690470
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 0.8790698   0.4183849   1.8470161
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.3138402   0.9430102   1.8304954
6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 1.2794658   0.8585193   1.9068094
6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 1.0722430   0.7175478   1.6022698
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 1.1482346   0.7475002   1.7638025
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.5700937   1.0949637   2.2513936
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.1604214   0.8784717   1.5328643
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.1610166   0.8357143   1.6129430
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1572802   0.7393889   1.8113573
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.0678183   0.7583070   1.5036598
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6870877   0.3469776   1.3605763
6 months    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 1.2197862   0.9420468   1.5794103
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1117048   0.7225723   1.7103999
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 1.2293233   0.6528619   2.3147865
6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 0.9785278   0.6903577   1.3869861
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.8388669   1.6358800   2.0670413
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 0.8031321   0.6411589   1.0060239
6 months    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 1.1147705   0.9694563   1.2818662
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9045014   0.7217465   1.1335320
6 months    ki1148112-LCNI-5           MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         1                    0                 1.1669024   0.7713640   1.7652642
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.0974443   0.9729364   1.2378857
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.2374735   1.0105933   1.5152887
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.9295400   0.6038968   1.4307818
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 0.4973914   0.2650229   0.9334972
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 1.3000000   0.6745755   2.5052794
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9147397   0.7788022   1.0744046
24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 1.1622665   0.9012982   1.4987976
24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                 0.9801136   0.7180443   1.3378321
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 0.9112302   0.7402399   1.1217181
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9052369   0.6633326   1.2353588
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.2269350   0.8946831   1.6825730
24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 1.1545022   0.9842435   1.3542129
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.9071239   0.6838773   1.2032478
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 0.8917808   0.5833684   1.3632433
24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.3062121   0.8487471   2.0102454
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1840840   0.9535728   1.4703175
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 0.9662457   0.8836339   1.0565809
24 months   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 0.9981489   0.9306182   1.0705799
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9923841   0.9071378   1.0856413
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.9740588   0.8861216   1.0707228
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1467470   0.9890810   1.3295460


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -0.0035842   -0.0273046    0.0201362
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0014791   -0.0093882    0.0123464
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0048059   -0.0126704    0.0222822
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0079921   -0.0053037    0.0212879
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0108540   -0.0235959    0.0018879
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                -0.0053495   -0.0093987   -0.0013003
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0065474   -0.0184235    0.0053287
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0024566   -0.0040380   -0.0008752
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.0022070   -0.0048800    0.0004660
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0011744   -0.0036407    0.0012918
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0004314   -0.0024145    0.0015517
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0043393   -0.0025624    0.0112409
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0019976   -0.0207098    0.0247049
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0041507   -0.0271104    0.0188090
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0231697   -0.0054307    0.0517701
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.0195258   -0.0088622    0.0479138
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0003784   -0.0220206    0.0212637
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0102557   -0.0206547    0.0411661
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0144820   -0.0025564    0.0315204
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0079570   -0.0162682    0.0321823
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0085374   -0.0157090    0.0327838
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0055845   -0.0095664    0.0207354
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0012801   -0.0160403    0.0186005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0018036   -0.0045870    0.0009797
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0057217   -0.0019363    0.0133797
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0048428   -0.0121878    0.0218735
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0048244   -0.0114980    0.0211468
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0004904   -0.0044348    0.0034540
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0162741    0.0123771    0.0201711
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0162241   -0.0317704   -0.0006778
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0031012   -0.0011385    0.0073409
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0028123   -0.0090952    0.0034707
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0010229   -0.0034161    0.0054618
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0018393   -0.0006285    0.0043072
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0045984   -0.0000002    0.0091969
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0078055   -0.0412493    0.0256383
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0411615   -0.0717266   -0.0105963
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0082051   -0.0144227    0.0308329
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0104386   -0.0381404    0.0172631
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0180903   -0.0143842    0.0505648
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0022215   -0.0364043    0.0319613
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0150323   -0.0457005    0.0156360
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0049205   -0.0243962    0.0145551
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0122059   -0.0111851    0.0355969
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0096566   -0.0016031    0.0209164
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0076954   -0.0303388    0.0149481
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0047076   -0.0214330    0.0120178
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0051554   -0.0037656    0.0140763
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0061076   -0.0022645    0.0144797
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0040355   -0.0144211    0.0063500
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0001561   -0.0057335    0.0060457
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0005517   -0.0088724    0.0077689
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0010822   -0.0055681    0.0034037
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0049531   -0.0000528    0.0099589


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -0.0161290   -0.1286362    0.0851629
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0080910   -0.0533155    0.0659176
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0403976   -0.1181508    0.1764647
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1037021   -0.0838045    0.2587686
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0943768   -0.2097531    0.0099958
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                -0.1895255   -0.3298960   -0.0639712
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0594797   -0.1725275    0.0426688
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0463423   -0.0764145   -0.0171102
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.0357197   -0.0797706    0.0065342
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0397398   -0.1262481    0.0401237
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0026025   -0.0146408    0.0092929
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0240413   -0.0147643    0.0613629
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0123634   -0.1386338    0.1433365
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0229277   -0.1578533    0.0962749
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0764599   -0.0227322    0.1660317
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.0887960   -0.0493490    0.2087544
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0009365   -0.0559508    0.0512116
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0285159   -0.0613641    0.1107846
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0601599   -0.0099636    0.1254146
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0185501   -0.0395947    0.0734429
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0351058   -0.0698303    0.1297491
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0370438   -0.0688246    0.1324258
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0066297   -0.0872583    0.0924101
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0187801   -0.0480893    0.0097095
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0416107   -0.0156094    0.0956069
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0263610   -0.0708496    0.1147470
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0136496   -0.0336341    0.0587702
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0078353   -0.0727195    0.0531243
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1109463    0.0843952    0.1367274
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0399397   -0.0789805   -0.0023114
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0192398   -0.0074062    0.0451810
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0145554   -0.0475848    0.0174327
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0027773   -0.0093645    0.0147730
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0101352   -0.0035204    0.0236050
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0213012   -0.0002885    0.0424249
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0172408   -0.0938915    0.0540388
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0986991   -0.1755082   -0.0269087
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0384615   -0.0734418    0.1386992
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0145025   -0.0537844    0.0233150
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0444139   -0.0388109    0.1209712
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0032037   -0.0537349    0.0449044
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0274473   -0.0850866    0.0271302
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0151606   -0.0769703    0.0431018
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0492173   -0.0500239    0.1390790
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0288153   -0.0053667    0.0618351
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0177736   -0.0714647    0.0332271
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0070462   -0.0324198    0.0177037
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0606020   -0.0557052    0.1640957
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0188746   -0.0073442    0.0444110
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0049635   -0.0178249    0.0077354
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0002991   -0.0110498    0.0115207
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0008999   -0.0145634    0.0125797
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0024676   -0.0127490    0.0077094
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0132667   -0.0002548    0.0266053

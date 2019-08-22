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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        sex       n_cell       n
----------  -------------------------  -----------------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female       119     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male         122     241
Birth       ki0047075b-MAL-ED          BRAZIL                         Female        86     183
Birth       ki0047075b-MAL-ED          BRAZIL                         Male          97     183
Birth       ki0047075b-MAL-ED          INDIA                          Female       108     203
Birth       ki0047075b-MAL-ED          INDIA                          Male          95     203
Birth       ki0047075b-MAL-ED          NEPAL                          Female        82     168
Birth       ki0047075b-MAL-ED          NEPAL                          Male          86     168
Birth       ki0047075b-MAL-ED          PERU                           Female       127     279
Birth       ki0047075b-MAL-ED          PERU                           Male         152     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female       128     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male         130     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female        58     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male          60     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female        46      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male          42      88
Birth       ki1000108-IRC              INDIA                          Female       148     343
Birth       ki1000108-IRC              INDIA                          Male         195     343
Birth       ki1000109-EE               PAKISTAN                       Female         0       1
Birth       ki1000109-EE               PAKISTAN                       Male           1       1
Birth       ki1000109-ResPak           PAKISTAN                       Female         2       6
Birth       ki1000109-ResPak           PAKISTAN                       Male           4       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female        71     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male          95     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female        12      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male          16      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female         9      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male          14      23
Birth       ki1101329-Keneba           GAMBIA                         Female       696    1423
Birth       ki1101329-Keneba           GAMBIA                         Male         727    1423
Birth       ki1114097-CMIN             BANGLADESH                     Female         5       8
Birth       ki1114097-CMIN             BANGLADESH                     Male           3       8
Birth       ki1114097-CMIN             BRAZIL                         Female        57     111
Birth       ki1114097-CMIN             BRAZIL                         Male          54     111
Birth       ki1114097-CMIN             PERU                           Female         7      10
Birth       ki1114097-CMIN             PERU                           Male           3      10
Birth       ki1114097-CONTENT          PERU                           Female         2       2
Birth       ki1114097-CONTENT          PERU                           Male           0       2
Birth       ki1119695-PROBIT           BELARUS                        Female      7142   13824
Birth       ki1119695-PROBIT           BELARUS                        Male        6682   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female      6221   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male        6695   12916
Birth       ki1135781-COHORTS          GUATEMALA                      Female       360     756
Birth       ki1135781-COHORTS          GUATEMALA                      Male         396     756
Birth       ki1135781-COHORTS          INDIA                          Female      2952    6193
Birth       ki1135781-COHORTS          INDIA                          Male        3241    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    Female      1360    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Male        1539    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female      7412   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male        8297   15709
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female       314     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male         369     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female       123     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male         118     241
6 months    ki0047075b-MAL-ED          BRAZIL                         Female       103     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Male         106     209
6 months    ki0047075b-MAL-ED          INDIA                          Female       130     236
6 months    ki0047075b-MAL-ED          INDIA                          Male         106     236
6 months    ki0047075b-MAL-ED          NEPAL                          Female       110     236
6 months    ki0047075b-MAL-ED          NEPAL                          Male         126     236
6 months    ki0047075b-MAL-ED          PERU                           Female       126     273
6 months    ki0047075b-MAL-ED          PERU                           Male         147     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female       126     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male         128     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       126     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         121     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female       186     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male         182     368
6 months    ki1000108-IRC              INDIA                          Female       184     408
6 months    ki1000108-IRC              INDIA                          Male         224     408
6 months    ki1000109-EE               PAKISTAN                       Female       182     376
6 months    ki1000109-EE               PAKISTAN                       Male         194     376
6 months    ki1000109-ResPak           PAKISTAN                       Female       111     235
6 months    ki1000109-ResPak           PAKISTAN                       Male         124     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female       610    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male         724    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female       202     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male         178     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female       245     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male         291     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female       276     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male         306     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female       362     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male         353     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female      1003    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male        1025    2028
6 months    ki1101329-Keneba           GAMBIA                         Female      1011    2089
6 months    ki1101329-Keneba           GAMBIA                         Male        1078    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female       153     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male         146     299
6 months    ki1113344-GMS-Nepal        NEPAL                          Female       273     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Male         290     563
6 months    ki1114097-CMIN             BANGLADESH                     Female       105     243
6 months    ki1114097-CMIN             BANGLADESH                     Male         138     243
6 months    ki1114097-CMIN             BRAZIL                         Female        55     108
6 months    ki1114097-CMIN             BRAZIL                         Male          53     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female       420     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male         429     849
6 months    ki1114097-CMIN             PERU                           Female       292     636
6 months    ki1114097-CMIN             PERU                           Male         344     636
6 months    ki1114097-CONTENT          PERU                           Female       106     215
6 months    ki1114097-CONTENT          PERU                           Male         109     215
6 months    ki1119695-PROBIT           BELARUS                        Female      8138   15757
6 months    ki1119695-PROBIT           BELARUS                        Male        7619   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female      4020    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male        4244    8264
6 months    ki1135781-COHORTS          GUATEMALA                      Female       456     963
6 months    ki1135781-COHORTS          GUATEMALA                      Male         507     963
6 months    ki1135781-COHORTS          INDIA                          Female      3284    6850
6 months    ki1135781-COHORTS          INDIA                          Male        3566    6850
6 months    ki1135781-COHORTS          PHILIPPINES                    Female      1275    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Male        1431    2706
6 months    ki1148112-LCNI-5           MALAWI                         Female       420     839
6 months    ki1148112-LCNI-5           MALAWI                         Male         419     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female      8234   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male        8550   16784
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female      2408    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male        2425    4833
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female       104     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male         108     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Female        79     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Male          90     169
24 months   ki0047075b-MAL-ED          INDIA                          Female       122     227
24 months   ki0047075b-MAL-ED          INDIA                          Male         105     227
24 months   ki0047075b-MAL-ED          NEPAL                          Female       106     228
24 months   ki0047075b-MAL-ED          NEPAL                          Male         122     228
24 months   ki0047075b-MAL-ED          PERU                           Female        91     201
24 months   ki0047075b-MAL-ED          PERU                           Male         110     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female       118     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male         120     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       106     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         108     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female       186     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male         186     372
24 months   ki1000108-IRC              INDIA                          Female       185     409
24 months   ki1000108-IRC              INDIA                          Male         224     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female       195     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male         233     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female       278     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male         300     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female       260     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male         254     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female         3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male           3       6
24 months   ki1101329-Keneba           GAMBIA                         Female       823    1726
24 months   ki1101329-Keneba           GAMBIA                         Male         903    1726
24 months   ki1113344-GMS-Nepal        NEPAL                          Female       232     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Male         266     498
24 months   ki1114097-CMIN             BANGLADESH                     Female       104     243
24 months   ki1114097-CMIN             BANGLADESH                     Male         139     243
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female       272     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male         279     551
24 months   ki1114097-CMIN             PERU                           Female       199     429
24 months   ki1114097-CMIN             PERU                           Male         230     429
24 months   ki1114097-CONTENT          PERU                           Female        83     164
24 months   ki1114097-CONTENT          PERU                           Male          81     164
24 months   ki1119695-PROBIT           BELARUS                        Female      2047    3971
24 months   ki1119695-PROBIT           BELARUS                        Male        1924    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female       256     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male         167     423
24 months   ki1135781-COHORTS          GUATEMALA                      Female       516    1082
24 months   ki1135781-COHORTS          GUATEMALA                      Male         566    1082
24 months   ki1135781-COHORTS          INDIA                          Female      2521    5291
24 months   ki1135781-COHORTS          INDIA                          Male        2770    5291
24 months   ki1135781-COHORTS          PHILIPPINES                    Female      1158    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Male        1291    2449
24 months   ki1148112-LCNI-5           MALAWI                         Female       286     563
24 months   ki1148112-LCNI-5           MALAWI                         Male         277     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female      4152    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male        4451    8603
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female      2367    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male        2368    4735


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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
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

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/31fdbba6-ab5f-470f-a60e-7bbc16f936c1/dbf54a3a-da96-452b-883b-32654d5dff68/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/31fdbba6-ab5f-470f-a60e-7bbc16f936c1/dbf54a3a-da96-452b-883b-32654d5dff68/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/31fdbba6-ab5f-470f-a60e-7bbc16f936c1/dbf54a3a-da96-452b-883b-32654d5dff68/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -1.0489916   -1.2230431   -0.8749401
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                -0.8792623   -1.0859914   -0.6725332
Birth       ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.3632558    0.1097138    0.6167979
Birth       ki0047075b-MAL-ED          BRAZIL                         Male                 NA                 0.4398969    0.2002478    0.6795460
Birth       ki0047075b-MAL-ED          INDIA                          Female               NA                -1.0457407   -1.2463837   -0.8450978
Birth       ki0047075b-MAL-ED          INDIA                          Male                 NA                -1.0956842   -1.2849479   -0.9064205
Birth       ki0047075b-MAL-ED          NEPAL                          Female               NA                -1.0441463   -1.2344080   -0.8538847
Birth       ki0047075b-MAL-ED          NEPAL                          Male                 NA                -0.7712791   -0.9705556   -0.5720025
Birth       ki0047075b-MAL-ED          PERU                           Female               NA                -0.0481102   -0.2054272    0.1092067
Birth       ki0047075b-MAL-ED          PERU                           Male                 NA                -0.0948684   -0.2481367    0.0583998
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0879687   -0.2825512    0.1066137
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                -0.0250769   -0.2364696    0.1863157
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.9134483    0.6225274    1.2043692
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                 0.6770000    0.4138632    0.9401368
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.9713043   -1.4524963   -0.4901124
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                -0.2509524   -0.7265025    0.2245977
Birth       ki1000108-IRC              INDIA                          Female               NA                -1.1279054   -1.3974695   -0.8583413
Birth       ki1000108-IRC              INDIA                          Male                 NA                -0.9215385   -1.1777563   -0.6653206
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.3981690   -0.7251120   -0.0712260
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                -0.1737895   -0.4896389    0.1420600
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -1.0866667   -1.5389571   -0.6343762
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                -1.6768750   -2.1373188   -1.2164312
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.4744444   -1.1317201    0.1828312
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                -0.9285714   -1.5867805   -0.2703624
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                 1.4939511    1.3749667    1.6129356
Birth       ki1101329-Keneba           GAMBIA                         Male                 NA                 1.9043466    1.7910441    2.0176491
Birth       ki1114097-CMIN             BRAZIL                         Female               NA                -0.1400000   -0.4542148    0.1742148
Birth       ki1114097-CMIN             BRAZIL                         Male                 NA                -0.1261111   -0.4051391    0.1529169
Birth       ki1119695-PROBIT           BELARUS                        Female               NA                -1.1644763   -1.3674094   -0.9615433
Birth       ki1119695-PROBIT           BELARUS                        Male                 NA                -1.1269695   -1.3464848   -0.9074541
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.6149654   -0.6518274   -0.5781035
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                -0.4223869   -0.4584950   -0.3862788
Birth       ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.9511111   -1.0951183   -0.8071040
Birth       ki1135781-COHORTS          GUATEMALA                      Male                 NA                -1.1630808   -1.3038964   -1.0222652
Birth       ki1135781-COHORTS          INDIA                          Female               NA                -0.9916497   -1.0350141   -0.9482853
Birth       ki1135781-COHORTS          INDIA                          Male                 NA                -0.9784573   -1.0194329   -0.9374816
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                -0.7172941   -0.7849402   -0.6496480
Birth       ki1135781-COHORTS          PHILIPPINES                    Male                 NA                -0.7651982   -0.8288391   -0.7015573
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                -0.7459390   -0.7715064   -0.7203716
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                -0.7045896   -0.7300809   -0.6790983
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.3576752   -0.4656248   -0.2497255
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                -0.3773713   -0.4959656   -0.2587770
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.3053455   -0.4793902   -0.1313009
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                 0.0327684   -0.1534351    0.2189718
6 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.8894498    0.6519490    1.1269506
6 months    ki0047075b-MAL-ED          BRAZIL                         Male                 NA                 1.0516667    0.8252428    1.2780906
6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                -0.7052692   -0.8796690   -0.5308695
6 months    ki0047075b-MAL-ED          INDIA                          Male                 NA                -0.7011006   -0.8796146   -0.5225866
6 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0119242   -0.1905297    0.1666812
6 months    ki0047075b-MAL-ED          NEPAL                          Male                 NA                 0.2183995    0.0301830    0.4066159
6 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.9484127    0.7874042    1.1094212
6 months    ki0047075b-MAL-ED          PERU                           Male                 NA                 1.1452381    0.9675683    1.3229079
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.5995635    0.3923893    0.8067377
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                 0.4854818    0.2633430    0.7076205
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.5085847    0.3313282    0.6858411
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                 0.5258678    0.3356919    0.7160437
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.6248029   -0.8268112   -0.4227945
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                -0.3778663   -0.6013757   -0.1543569
6 months    ki1000108-IRC              INDIA                          Female               NA                -0.6101993   -0.8087533   -0.4116452
6 months    ki1000108-IRC              INDIA                          Male                 NA                -0.5896726   -0.7749432   -0.4044021
6 months    ki1000109-EE               PAKISTAN                       Female               NA                -0.6561813   -0.8137419   -0.4986207
6 months    ki1000109-EE               PAKISTAN                       Male                 NA                -0.7823454   -0.9445530   -0.6201378
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                -0.0855856   -0.3501701    0.1789989
6 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                -0.2424597   -0.4988806    0.0139613
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.6825984   -0.8053979   -0.5597988
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                -0.6514779   -0.8121643   -0.4907915
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                -0.8757921   -1.0304759   -0.7211083
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                -1.1669101   -1.3384186   -0.9954016
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.4628912   -0.5880618   -0.3377205
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                -0.4187199   -0.5443217   -0.2931181
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.2467572   -0.3610575   -0.1324570
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                -0.1737473   -0.2967339   -0.0507606
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0294751   -0.0765229    0.1354732
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                 0.0300567   -0.0871776    0.1472909
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1099053    0.0395017    0.1803088
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                 0.0525829   -0.0255635    0.1307293
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                -0.1784861   -0.2470838   -0.1098885
6 months    ki1101329-Keneba           GAMBIA                         Male                 NA                -0.1903772   -0.2650772   -0.1156771
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                -0.0102179   -0.1533280    0.1328923
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                -0.1613470   -0.3300224    0.0073284
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.5735043   -0.6863637   -0.4606448
6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 NA                -0.6342586   -0.7633770   -0.5051402
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                -0.6293016   -0.8303569   -0.4282463
6 months    ki1114097-CMIN             BANGLADESH                     Male                 NA                -0.5390459   -0.7423868   -0.3357050
6 months    ki1114097-CMIN             BRAZIL                         Female               NA                 0.6721818    0.3891295    0.9552341
6 months    ki1114097-CMIN             BRAZIL                         Male                 NA                 0.5026415    0.1869641    0.8183189
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                -0.0005397   -0.0985735    0.0974941
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                -0.0822106   -0.2034575    0.0390364
6 months    ki1114097-CMIN             PERU                           Female               NA                 0.6735788    0.5557252    0.7914324
6 months    ki1114097-CMIN             PERU                           Male                 NA                 0.6708479    0.5399056    0.8017901
6 months    ki1114097-CONTENT          PERU                           Female               NA                 1.1997170    1.0317587    1.3676752
6 months    ki1114097-CONTENT          PERU                           Male                 NA                 0.9407599    0.7816273    1.0998926
6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.8142713    0.7547191    0.8738236
6 months    ki1119695-PROBIT           BELARUS                        Male                 NA                 0.3276263    0.2629420    0.3923107
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.3037724    0.2677562    0.3397886
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                 0.3056056    0.2680136    0.3431975
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.2828070    0.1890158    0.3765982
6 months    ki1135781-COHORTS          GUATEMALA                      Male                 NA                 0.1142801    0.0084604    0.2200998
6 months    ki1135781-COHORTS          INDIA                          Female               NA                -0.7245859   -0.7638860   -0.6852858
6 months    ki1135781-COHORTS          INDIA                          Male                 NA                -0.6598402   -0.6985014   -0.6211789
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                -0.3013098   -0.3578448   -0.2447748
6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 NA                -0.2871908   -0.3470266   -0.2273549
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.4372619    0.3403562    0.5341676
6 months    ki1148112-LCNI-5           MALAWI                         Male                 NA                 0.4626253    0.3585535    0.5666971
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                -0.5993679   -0.6243425   -0.5743932
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                -0.5878807   -0.6149649   -0.5607965
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.3967213   -0.4446264   -0.3488163
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                -0.3829381   -0.4356938   -0.3301825
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.8494712   -1.0250372   -0.6739051
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                -0.7932407   -0.9629659   -0.6235155
24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.3574051    0.0628961    0.6519140
24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 NA                 0.5249444    0.2406765    0.8092124
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                -0.9043033   -1.0598094   -0.7487972
24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                -1.0080476   -1.1793647   -0.8367306
24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.4102830   -0.5733329   -0.2472331
24 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                -0.3470492   -0.5044933   -0.1896050
24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.1017033   -0.0444410    0.2478476
24 months   ki0047075b-MAL-ED          PERU                           Male                 NA                 0.1349545   -0.0477821    0.3176912
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.4356780    0.2773881    0.5939679
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                 0.4178750    0.2398759    0.5958741
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0601887   -0.1064141    0.2267915
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                 0.0401852   -0.1456137    0.2259841
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.5313620   -0.6623988   -0.4003252
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                -0.5829391   -0.7375635   -0.4283147
24 months   ki1000108-IRC              INDIA                          Female               NA                -0.7402973   -0.8718619   -0.6087327
24 months   ki1000108-IRC              INDIA                          Male                 NA                -0.7503720   -0.8760792   -0.6246648
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.8645940   -1.0082251   -0.7209630
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                -0.9509013   -1.0845041   -0.8172984
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.9351799   -1.0505614   -0.8197983
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                -0.8441667   -0.9626746   -0.7256587
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.5950769   -0.7167986   -0.4733553
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                -0.6259843   -0.7714705   -0.4804980
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                -0.7848444   -0.8514140   -0.7182748
24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                -0.8327913   -0.8993503   -0.7662322
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -1.0530172   -1.1738148   -0.9322197
24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                -1.2001128   -1.3253091   -1.0749165
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.7920192   -0.9390849   -0.6449536
24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                -0.8995683   -1.0587293   -0.7404073
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                -0.0827696   -0.1978888    0.0323496
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                -0.2041756   -0.3367451   -0.0716061
24 months   ki1114097-CMIN             PERU                           Female               NA                 0.7639363    0.6555478    0.8723248
24 months   ki1114097-CMIN             PERU                           Male                 NA                 0.5472754    0.4325255    0.6620252
24 months   ki1114097-CONTENT          PERU                           Female               NA                 0.8008434    0.6149240    0.9867627
24 months   ki1114097-CONTENT          PERU                           Male                 NA                 0.3270370    0.1405939    0.5134802
24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.8968572    0.7746167    1.0190976
24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                 0.4623718    0.3452088    0.5795348
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -1.0112500   -1.1296661   -0.8928339
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                -1.4411976   -1.6101845   -1.2722107
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.2553101   -0.3338785   -0.1767417
24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                -0.3055300   -0.3794637   -0.2315964
24 months   ki1135781-COHORTS          INDIA                          Female               NA                -0.5531694   -0.5922162   -0.5141225
24 months   ki1135781-COHORTS          INDIA                          Male                 NA                -0.6566101   -0.6968760   -0.6163442
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                -0.5961226   -0.6470592   -0.5451861
24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                -0.6223703   -0.6751288   -0.5696117
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                -0.0407343   -0.1501938    0.0687252
24 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                -0.0551986   -0.1773563    0.0669592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                -1.2640053   -1.2952880   -1.2327226
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                -1.3293305   -1.3606334   -1.2980276
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -1.1855091   -1.2278382   -1.1431800
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                -1.2606926   -1.3083710   -1.2130142


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4038798    0.2296279    0.5781316
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0691133   -1.2078629   -0.9303637
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0562791   -0.2000837    0.0875255
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7932203    0.5962220    0.9902187
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.2697590   -0.5399211    0.0004030
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4239286   -1.7688028   -1.0790544
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.7508696   -1.2358912   -0.2658480
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 1.7036191    1.6208471    1.7863911
Birth       ki1114097-CMIN             BRAZIL                         NA                   NA                -0.1332432   -0.3441055    0.0776190
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1463469   -1.3562674   -0.9364264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5151425   -0.5409938   -0.4892911
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7240996   -0.7439385   -0.7042607
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3683163   -0.4490504   -0.2875821
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7033969   -0.8285284   -0.5782654
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5170513    0.3872178    0.6468847
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.7212766   -0.8346857   -0.6078675
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.1683617   -0.3528233    0.0160999
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0809332    0.0282644    0.1336020
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1846223   -0.2354964   -0.1337483
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0840134   -0.1945572    0.0265305
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6047987   -0.6909649   -0.5186325
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.5780453   -0.7226627   -0.4334279
6 months    ki1114097-CMIN             BRAZIL                         NA                   NA                 0.5889815    0.3767666    0.8011963
6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -0.0418080   -0.1199942    0.0363782
6 months    ki1114097-CMIN             PERU                           NA                   NA                 0.6721017    0.5829735    0.7612299
6 months    ki1114097-CONTENT          PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3047138    0.2786437    0.3307839
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1940810    0.1226351    0.2655269
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.6908803   -0.7184601   -0.6633005
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4499285    0.3788279    0.5210291
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5935161   -0.6130518   -0.5739805
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0500935   -0.0748234    0.1750103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.8099290   -0.8570608   -0.7627972
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1315863   -1.2192240   -1.0439487
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.8535391   -0.9644236   -0.7426546
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -0.1442438   -0.2323415   -0.0561461
24 months   ki1114097-CMIN             PERU                           NA                   NA                 0.6477778    0.5676685    0.7278870
24 months   ki1114097-CONTENT          PERU                           NA                   NA                 0.5668293    0.4302437    0.7034148
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6863435    0.5745700    0.7981170
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1809929   -1.2809380   -1.0810478
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2815804   -0.3354498   -0.2277110
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6073238   -0.6354743   -0.5791732
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0478508   -0.1297321    0.0340305
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2978031   -1.3210763   -1.2745298
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2231088   -1.2549632   -1.1912543


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male                 Female             0.1697293   -0.1005128    0.4399714
Birth       ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Male                 Female             0.0766411   -0.2722361    0.4255182
Birth       ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Male                 Female            -0.0499435   -0.3257665    0.2258795
Birth       ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.2728673   -0.0026516    0.5483861
Birth       ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Male                 Female            -0.0467582   -0.2663938    0.1728774
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female             0.0628918   -0.2244219    0.3502056
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.2364483   -0.6287185    0.1558220
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female             0.7203520    0.0438214    1.3968825
Birth       ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Male                 Female             0.2063669   -0.1655368    0.5782707
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male                 Female             0.2243795   -0.1212609    0.5700200
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            -0.5902083   -1.2356347    0.0552180
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            -0.4541270   -1.3843154    0.4760614
Birth       ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         Male                 Female             0.4103955    0.2460947    0.5746963
Birth       ki1114097-CMIN             BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BRAZIL                         Male                 Female             0.0138889   -0.4063343    0.4341121
Birth       ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Male                 Female             0.0375069   -0.0060526    0.0810663
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female             0.1925786    0.1409782    0.2441790
Birth       ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Male                 Female            -0.2119697   -0.4133825   -0.0105569
Birth       ki1135781-COHORTS          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Male                 Female             0.0131925   -0.0464689    0.0728538
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Male                 Female            -0.0479041   -0.1407812    0.0449731
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female             0.0413494    0.0091696    0.0735292
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            -0.0196961   -0.1807631    0.1413708
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 Female             0.3381139    0.0832350    0.5929928
6 months    ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Male                 Female             0.1622168   -0.1659210    0.4903546
6 months    ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Male                 Female             0.0041686   -0.2453961    0.2537333
6 months    ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.2303237   -0.0291476    0.4897950
6 months    ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Male                 Female             0.1968254   -0.0429459    0.4365967
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            -0.1140817   -0.4178362    0.1896727
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female             0.0172831   -0.2426913    0.2772576
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female             0.2469366   -0.0543338    0.5482069
6 months    ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Male                 Female             0.0205267   -0.2510408    0.2920941
6 months    ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Male                 Female            -0.1261640   -0.3522982    0.0999701
6 months    ki1000109-ResPak           PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            -0.1568741   -0.5253258    0.2115776
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 Female             0.0311205   -0.0647735    0.1270144
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            -0.2911180   -0.5220774   -0.0601586
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female             0.0441712   -0.1331519    0.2214944
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 Female             0.0730100   -0.0948896    0.2409095
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             0.0005815   -0.1574674    0.1586304
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0573224   -0.1625056    0.0478609
6 months    ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         Male                 Female            -0.0118911   -0.1133097    0.0895276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            -0.1511292   -0.3723348    0.0700764
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female            -0.0607543   -0.2322443    0.1107356
6 months    ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BANGLADESH                     Male                 Female             0.0902557   -0.1957002    0.3762116
6 months    ki1114097-CMIN             BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BRAZIL                         Male                 Female            -0.1695403   -0.5935342    0.2544536
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            -0.0816709   -0.2375922    0.0742504
6 months    ki1114097-CMIN             PERU                           Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             PERU                           Male                 Female            -0.0027309   -0.1788994    0.1734376
6 months    ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           Male                 Female            -0.2589570   -0.4903294   -0.0275847
6 months    ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Male                 Female            -0.4866450   -0.5234319   -0.4498581
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female             0.0018332   -0.0502276    0.0538939
6 months    ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female            -0.1685269   -0.3099292   -0.0271247
6 months    ki1135781-COHORTS          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Male                 Female             0.0647457    0.0096169    0.1198746
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female             0.0141190   -0.0682007    0.0964388
6 months    ki1148112-LCNI-5           MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Male                 Female             0.0253634   -0.1168395    0.1675662
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female             0.0114872   -0.0230606    0.0460349
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female             0.0137832   -0.0541133    0.0816797
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female             0.0562304   -0.1879623    0.3004231
24 months   ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 Female             0.1675394   -0.2417817    0.5768605
24 months   ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            -0.1037443   -0.3351135    0.1276248
24 months   ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.0632338   -0.1634244    0.2898920
24 months   ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Male                 Female             0.0332512   -0.2007377    0.2672402
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            -0.0178030   -0.2560033    0.2203973
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0200035   -0.2695586    0.2295516
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            -0.0515771   -0.2542575    0.1511034
24 months   ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Male                 Female            -0.0100747   -0.1920405    0.1718911
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            -0.0863073   -0.2824694    0.1098549
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female             0.0910132   -0.0743864    0.2564128
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            -0.0309073   -0.2205977    0.1587830
24 months   ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            -0.0479469   -0.1420830    0.0461893
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            -0.1470955   -0.3210672    0.0268762
24 months   ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            -0.1075491   -0.3242529    0.1091547
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            -0.1214060   -0.2969825    0.0541705
24 months   ki1114097-CMIN             PERU                           Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             PERU                           Male                 Female            -0.2166610   -0.3745078   -0.0588142
24 months   ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           Male                 Female            -0.4738063   -0.7371066   -0.2105060
24 months   ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Male                 Female            -0.4344854   -0.5332409   -0.3357299
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            -0.4299476   -0.6362942   -0.2236010
24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            -0.0502200   -0.1581050    0.0576650
24 months   ki1135781-COHORTS          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Male                 Female            -0.1034407   -0.1595300   -0.0473515
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            -0.0262476   -0.0995825    0.0470872
24 months   ki1148112-LCNI-5           MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            -0.0144643   -0.1784884    0.1495598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            -0.0653252   -0.1071637   -0.0234867
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            -0.0751835   -0.1389454   -0.0114216


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0859211   -0.0513026    0.2231447
Birth       ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0406240   -0.1443835    0.2256314
Birth       ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0233726   -0.1524980    0.1057529
Birth       ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.1396821   -0.0028663    0.2822305
Birth       ki0047075b-MAL-ED          PERU                           Female               NA                -0.0254740   -0.1451634    0.0942154
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0316897   -0.1131318    0.1765112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.1202279   -0.3208341    0.0803783
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.3438043    0.0121812    0.6754275
Birth       ki1000108-IRC              INDIA                          Female               NA                 0.1173223   -0.0943872    0.3290318
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.1284100   -0.0791132    0.3359331
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.3372619   -0.7221801    0.0476563
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.2764251   -0.8501511    0.2973008
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                 0.2096680    0.1250534    0.2942825
Birth       ki1114097-CMIN             BRAZIL                         Female               NA                 0.0067568   -0.1976803    0.2111938
Birth       ki1119695-PROBIT           BELARUS                        Female               NA                 0.0181294   -0.0029013    0.0391601
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0998230    0.0730245    0.1266214
Birth       ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.1110317   -0.2168036   -0.0052599
Birth       ki1135781-COHORTS          INDIA                          Female               NA                 0.0069040   -0.0243191    0.0381272
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                -0.0254310   -0.0747446    0.0238827
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0218395    0.0048352    0.0388437
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0106411   -0.0977151    0.0764329
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.1655495    0.0389353    0.2921638
6 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0822726   -0.0845159    0.2490612
6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0018723   -0.1102206    0.1139653
6 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.1229694   -0.0163385    0.2622774
6 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.1059829   -0.0236503    0.2356161
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0574900   -0.2107244    0.0957444
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0084666   -0.1188939    0.1358271
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.1221262   -0.0274060    0.2716585
6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0112695   -0.1378296    0.1603687
6 months    ki1000109-EE               PAKISTAN                       Female               NA                -0.0650953   -0.1819452    0.0517547
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                -0.0827761   -0.2774520    0.1118998
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0168900   -0.0354875    0.0692674
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                -0.1363658   -0.2455361   -0.0271955
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0239810   -0.0723076    0.1202697
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0383867   -0.0499402    0.1267135
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0002871   -0.0777426    0.0783168
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0289721   -0.0821489    0.0242047
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                -0.0061362   -0.0584725    0.0462001
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                -0.0737955   -0.1821490    0.0345579
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0312944   -0.1196642    0.0570753
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0512563   -0.1112360    0.2137487
6 months    ki1114097-CMIN             BRAZIL                         Female               NA                -0.0832003   -0.2918902    0.1254896
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                -0.0412683   -0.1201033    0.0375667
6 months    ki1114097-CMIN             PERU                           Female               NA                -0.0014771   -0.0967633    0.0938091
6 months    ki1114097-CONTENT          PERU                           Female               NA                -0.1312852   -0.2498612   -0.0127092
6 months    ki1119695-PROBIT           BELARUS                        Female               NA                -0.2353080   -0.2536803   -0.2169357
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0009414   -0.0257945    0.0276774
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0887260   -0.1633611   -0.0140909
6 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0337056    0.0049962    0.0624150
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0074665   -0.0360670    0.0510000
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0126666   -0.0583553    0.0836885
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0058517   -0.0117510    0.0234545
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0069158   -0.0271570    0.0409887
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0286457   -0.0958122    0.1531036
24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0892222   -0.1291257    0.3075700
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0479875   -0.1552207    0.0592458
24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0338357   -0.0875157    0.1551870
24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.0181972   -0.1098770    0.1462714
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0089763   -0.1290826    0.1111301
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0100952   -0.1360461    0.1158556
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0257885   -0.1271627    0.0755857
24 months   ki1000108-IRC              INDIA                          Female               NA                -0.0055177   -0.1051774    0.0941420
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0469850   -0.1538520    0.0598820
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0472387   -0.0386890    0.1331664
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0152733   -0.1090208    0.0784743
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                -0.0250846   -0.0743473    0.0241780
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0785691   -0.1717174    0.0145792
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0615199   -0.1856592    0.0626194
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                -0.0614742   -0.1505223    0.0275739
24 months   ki1114097-CMIN             PERU                           Female               NA                -0.1161586   -0.2014019   -0.0309153
24 months   ki1114097-CONTENT          PERU                           Female               NA                -0.2340141   -0.3690477   -0.0989805
24 months   ki1119695-PROBIT           BELARUS                        Female               NA                -0.2105137   -0.2546605   -0.1663669
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.1697429   -0.2536398   -0.0858461
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0262703   -0.0827254    0.0301847
24 months   ki1135781-COHORTS          INDIA                          Female               NA                -0.0541544   -0.0835518   -0.0247570
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                -0.0138365   -0.0524988    0.0248257
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                -0.0071165   -0.0878198    0.0735867
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                -0.0337978   -0.0554493   -0.0121463
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0375997   -0.0694437   -0.0057557

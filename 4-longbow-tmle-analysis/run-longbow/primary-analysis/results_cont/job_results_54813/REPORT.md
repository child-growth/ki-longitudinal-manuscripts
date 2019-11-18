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

agecat      studyid                    country                        sex       n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female       106     215  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male         109     215  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         Female        31      62  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         Male          31      62  whz              
Birth       ki0047075b-MAL-ED          INDIA                          Female        22      45  whz              
Birth       ki0047075b-MAL-ED          INDIA                          Male          23      45  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          Female        16      26  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          Male          10      26  whz              
Birth       ki0047075b-MAL-ED          PERU                           Female       112     228  whz              
Birth       ki0047075b-MAL-ED          PERU                           Male         116     228  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female        56     120  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male          64     120  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female        63     115  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male          52     115  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female        43      86  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male          43      86  whz              
Birth       ki1000108-IRC              INDIA                          Female       148     343  whz              
Birth       ki1000108-IRC              INDIA                          Male         195     343  whz              
Birth       ki1000109-EE               PAKISTAN                       Female        88     177  whz              
Birth       ki1000109-EE               PAKISTAN                       Male          89     177  whz              
Birth       ki1000109-ResPak           PAKISTAN                       Female        16      38  whz              
Birth       ki1000109-ResPak           PAKISTAN                       Male          22      38  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female       497    1103  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male         606    1103  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female       269     575  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male         306     575  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     Female       251     532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     Male         281     532  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female       350     707  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male         357     707  whz              
Birth       ki1101329-Keneba           GAMBIA                         Female       703    1466  whz              
Birth       ki1101329-Keneba           GAMBIA                         Male         763    1466  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          Female       297     641  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          Male         344     641  whz              
Birth       ki1114097-CMIN             BANGLADESH                     Female         9      19  whz              
Birth       ki1114097-CMIN             BANGLADESH                     Male          10      19  whz              
Birth       ki1114097-CONTENT          PERU                           Female         2       2  whz              
Birth       ki1114097-CONTENT          PERU                           Male           0       2  whz              
Birth       ki1119695-PROBIT           BELARUS                        Female      7145   13830  whz              
Birth       ki1119695-PROBIT           BELARUS                        Male        6685   13830  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female      6222   12917  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male        6695   12917  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      Female       360     756  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      Male         396     756  whz              
Birth       ki1135781-COHORTS          INDIA                          Female      2952    6193  whz              
Birth       ki1135781-COHORTS          INDIA                          Male        3241    6193  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Female      1360    2899  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Male        1539    2899  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female      8524   18014  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male        9490   18014  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female      1142    2396  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male        1254    2396  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female       123     241  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male         118     241  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         Female       103     209  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         Male         106     209  whz              
6 months    ki0047075b-MAL-ED          INDIA                          Female       130     236  whz              
6 months    ki0047075b-MAL-ED          INDIA                          Male         106     236  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          Female       110     236  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          Male         126     236  whz              
6 months    ki0047075b-MAL-ED          PERU                           Female       126     273  whz              
6 months    ki0047075b-MAL-ED          PERU                           Male         147     273  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female       126     254  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male         128     254  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       126     247  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         121     247  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female       186     368  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male         182     368  whz              
6 months    ki1000108-IRC              INDIA                          Female       184     408  whz              
6 months    ki1000108-IRC              INDIA                          Male         224     408  whz              
6 months    ki1000109-EE               PAKISTAN                       Female       182     375  whz              
6 months    ki1000109-EE               PAKISTAN                       Male         193     375  whz              
6 months    ki1000109-ResPak           PAKISTAN                       Female       115     239  whz              
6 months    ki1000109-ResPak           PAKISTAN                       Male         124     239  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female       610    1334  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male         724    1334  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female       202     380  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male         178     380  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female       245     537  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male         292     537  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female       288     603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male         315     603  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female       362     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male         353     715  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female      1003    2028  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male        1025    2028  whz              
6 months    ki1101329-Keneba           GAMBIA                         Female      1011    2089  whz              
6 months    ki1101329-Keneba           GAMBIA                         Male        1078    2089  whz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female       153     299  whz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male         146     299  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          Female       273     564  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          Male         291     564  whz              
6 months    ki1114097-CMIN             BANGLADESH                     Female       105     243  whz              
6 months    ki1114097-CMIN             BANGLADESH                     Male         138     243  whz              
6 months    ki1114097-CONTENT          PERU                           Female       106     215  whz              
6 months    ki1114097-CONTENT          PERU                           Male         109     215  whz              
6 months    ki1119695-PROBIT           BELARUS                        Female      8138   15758  whz              
6 months    ki1119695-PROBIT           BELARUS                        Male        7620   15758  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female      4144    8505  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male        4361    8505  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      Female       456     963  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      Male         507     963  whz              
6 months    ki1135781-COHORTS          INDIA                          Female      3284    6850  whz              
6 months    ki1135781-COHORTS          INDIA                          Male        3566    6850  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Female      1275    2706  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Male        1431    2706  whz              
6 months    ki1148112-LCNI-5           MALAWI                         Female       420     839  whz              
6 months    ki1148112-LCNI-5           MALAWI                         Male         419     839  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female      8234   16784  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male        8550   16784  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female      2408    4833  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male        2425    4833  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female       104     212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male         108     212  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         Female        79     169  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         Male          90     169  whz              
24 months   ki0047075b-MAL-ED          INDIA                          Female       122     227  whz              
24 months   ki0047075b-MAL-ED          INDIA                          Male         105     227  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          Female       106     228  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          Male         122     228  whz              
24 months   ki0047075b-MAL-ED          PERU                           Female        91     201  whz              
24 months   ki0047075b-MAL-ED          PERU                           Male         110     201  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female       118     238  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male         120     238  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       106     214  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         108     214  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female       186     372  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male         186     372  whz              
24 months   ki1000108-IRC              INDIA                          Female       185     409  whz              
24 months   ki1000108-IRC              INDIA                          Male         224     409  whz              
24 months   ki1000109-EE               PAKISTAN                       Female        80     168  whz              
24 months   ki1000109-EE               PAKISTAN                       Male          88     168  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female       195     428  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male         233     428  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female       279     579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male         300     579  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female       260     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male         254     514  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female         3       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male           3       6  whz              
24 months   ki1101329-Keneba           GAMBIA                         Female       823    1726  whz              
24 months   ki1101329-Keneba           GAMBIA                         Male         903    1726  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          Female       227     487  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          Male         260     487  whz              
24 months   ki1114097-CMIN             BANGLADESH                     Female       104     243  whz              
24 months   ki1114097-CMIN             BANGLADESH                     Male         139     243  whz              
24 months   ki1114097-CONTENT          PERU                           Female        83     164  whz              
24 months   ki1114097-CONTENT          PERU                           Male          81     164  whz              
24 months   ki1119695-PROBIT           BELARUS                        Female      2047    3972  whz              
24 months   ki1119695-PROBIT           BELARUS                        Male        1925    3972  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female       263     433  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male         170     433  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      Female       516    1082  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      Male         566    1082  whz              
24 months   ki1135781-COHORTS          INDIA                          Female      2521    5291  whz              
24 months   ki1135781-COHORTS          INDIA                          Male        2770    5291  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Female      1158    2449  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Male        1291    2449  whz              
24 months   ki1148112-LCNI-5           MALAWI                         Female       286     563  whz              
24 months   ki1148112-LCNI-5           MALAWI                         Male         277     563  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female      4152    8603  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male        4451    8603  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female      2367    4735  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male        2368    4735  whz              


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/83711b2a-dfdb-4c73-8e49-d2f1ac450ffa/6c2699e9-531c-4236-84a6-e0bd34d416b4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/83711b2a-dfdb-4c73-8e49-d2f1ac450ffa/6c2699e9-531c-4236-84a6-e0bd34d416b4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/83711b2a-dfdb-4c73-8e49-d2f1ac450ffa/6c2699e9-531c-4236-84a6-e0bd34d416b4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -1.0441981   -1.2307197   -0.8576765
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                -0.8423394   -1.0621738   -0.6225051
Birth       ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.2561290   -0.1785444    0.6908025
Birth       ki0047075b-MAL-ED          BRAZIL                         Male                 NA                 0.5496774    0.1046276    0.9947272
Birth       ki0047075b-MAL-ED          INDIA                          Female               NA                -0.8672727   -1.2477961   -0.4867494
Birth       ki0047075b-MAL-ED          INDIA                          Male                 NA                -0.9947826   -1.3875646   -0.6020006
Birth       ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.9550000   -1.4371892   -0.4728108
Birth       ki0047075b-MAL-ED          NEPAL                          Male                 NA                -0.4700000   -0.9282917   -0.0117083
Birth       ki0047075b-MAL-ED          PERU                           Female               NA                -0.0438393   -0.2000688    0.1123902
Birth       ki0047075b-MAL-ED          PERU                           Male                 NA                -0.0599138   -0.2425315    0.1227039
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.1551786   -0.4835647    0.1732076
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                -0.2253125   -0.5018259    0.0512009
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.8422222    0.5570598    1.1273847
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                 0.6657692    0.4239547    0.9075837
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.6309302   -0.9903846   -0.2714758
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                -0.2987209   -0.7726353    0.1751934
Birth       ki1000108-IRC              INDIA                          Female               NA                -1.1279054   -1.3974695   -0.8583413
Birth       ki1000108-IRC              INDIA                          Male                 NA                -0.9215385   -1.1777563   -0.6653206
Birth       ki1000109-EE               PAKISTAN                       Female               NA                -0.2737500   -0.5386067   -0.0088933
Birth       ki1000109-EE               PAKISTAN                       Male                 NA                -0.3921910   -0.6575616   -0.1268205
Birth       ki1000109-ResPak           PAKISTAN                       Female               NA                -0.5975000   -1.1243673   -0.0706327
Birth       ki1000109-ResPak           PAKISTAN                       Male                 NA                -0.1981818   -0.7655443    0.3691807
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.7713078   -0.9594203   -0.5831954
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                -0.5869967   -0.7629070   -0.4110864
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -1.3316357   -1.4742476   -1.1890238
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                -1.3659967   -1.4918383   -1.2401552
Birth       ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -1.3432669   -1.4577426   -1.2287913
Birth       ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                -1.2584342   -1.3616252   -1.1552431
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -1.2287571   -1.3505971   -1.1069172
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                -1.2592437   -1.3748923   -1.1435951
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                -1.2574324   -1.3480400   -1.1668249
Birth       ki1101329-Keneba           GAMBIA                         Male                 NA                -1.2142267   -1.2999739   -1.1284796
Birth       ki1113344-GMS-Nepal        NEPAL                          Female               NA                -1.0841414   -1.2209753   -0.9473075
Birth       ki1113344-GMS-Nepal        NEPAL                          Male                 NA                -1.1443314   -1.2568078   -1.0318550
Birth       ki1114097-CMIN             BANGLADESH                     Female               NA                -0.1988889   -1.4822688    1.0844910
Birth       ki1114097-CMIN             BANGLADESH                     Male                 NA                -0.9760000   -1.9451649   -0.0068351
Birth       ki1119695-PROBIT           BELARUS                        Female               NA                -1.1624059   -1.3647827   -0.9600290
Birth       ki1119695-PROBIT           BELARUS                        Male                 NA                -1.1261137   -1.3454619   -0.9067655
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.6156702   -0.6525521   -0.5787883
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                -0.4223869   -0.4584950   -0.3862788
Birth       ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.9511111   -1.0951183   -0.8071040
Birth       ki1135781-COHORTS          GUATEMALA                      Male                 NA                -1.1630808   -1.3038964   -1.0222652
Birth       ki1135781-COHORTS          INDIA                          Female               NA                -0.9916497   -1.0350141   -0.9482853
Birth       ki1135781-COHORTS          INDIA                          Male                 NA                -0.9784573   -1.0194329   -0.9374816
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                -0.7172941   -0.7849402   -0.6496480
Birth       ki1135781-COHORTS          PHILIPPINES                    Male                 NA                -0.7651982   -0.8288391   -0.7015573
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                -0.7985652   -0.8226230   -0.7745075
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                -0.7592002   -0.7844594   -0.7339410
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.6666813   -0.7399313   -0.5934312
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                -0.7086124   -0.7798564   -0.6373685
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.3032520   -0.4766209   -0.1298832
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                 0.0349153   -0.1511502    0.2209807
6 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.8873786    0.6498130    1.1249443
6 months    ki0047075b-MAL-ED          BRAZIL                         Male                 NA                 1.0543789    0.8283089    1.2804490
6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                -0.7096346   -0.8850999   -0.5341693
6 months    ki0047075b-MAL-ED          INDIA                          Male                 NA                -0.7059906   -0.8874092   -0.5245719
6 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0100303   -0.1881039    0.1680433
6 months    ki0047075b-MAL-ED          NEPAL                          Male                 NA                 0.2155952    0.0269661    0.4042244
6 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.9477249    0.7872660    1.1081837
6 months    ki0047075b-MAL-ED          PERU                           Male                 NA                 1.1430159    0.9652386    1.3207931
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.6010714    0.3940694    0.8080734
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                 0.4842057    0.2619155    0.7064959
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.5273545    0.3473813    0.7073277
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                 0.5454545    0.3539069    0.7370022
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.6248029   -0.8268112   -0.4227945
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                -0.3778663   -0.6013757   -0.1543569
6 months    ki1000108-IRC              INDIA                          Female               NA                -0.6101993   -0.8087533   -0.4116452
6 months    ki1000108-IRC              INDIA                          Male                 NA                -0.5896726   -0.7749432   -0.4044021
6 months    ki1000109-EE               PAKISTAN                       Female               NA                -0.7000275   -0.8578608   -0.5421941
6 months    ki1000109-EE               PAKISTAN                       Male                 NA                -0.8451209   -1.0087674   -0.6814744
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                -0.0797826   -0.3377469    0.1781817
6 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                -0.2424597   -0.4988715    0.0139521
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.6825984   -0.8053979   -0.5597988
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                -0.6514779   -0.8121643   -0.4907915
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                -0.8757921   -1.0304759   -0.7211083
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                -1.1669101   -1.3384186   -0.9954016
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.4628912   -0.5880616   -0.3377208
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                -0.4344092   -0.5632968   -0.3055217
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.2294618   -0.3420335   -0.1168901
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                -0.1713228   -0.2915452   -0.0511003
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0294751   -0.0765229    0.1354732
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                 0.0300567   -0.0871776    0.1472909
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1099053    0.0395017    0.1803088
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                 0.0525829   -0.0255635    0.1307293
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                -0.1784715   -0.2470705   -0.1098726
6 months    ki1101329-Keneba           GAMBIA                         Male                 NA                -0.1903549   -0.2650550   -0.1156548
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                -0.0102179   -0.1533280    0.1328923
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                -0.1613470   -0.3300224    0.0073284
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.5727167   -0.6855362   -0.4598972
6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 NA                -0.6330412   -0.7619733   -0.5041092
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                -0.6293016   -0.8303569   -0.4282463
6 months    ki1114097-CMIN             BANGLADESH                     Male                 NA                -0.5390459   -0.7423868   -0.3357050
6 months    ki1114097-CONTENT          PERU                           Female               NA                 1.1997170    1.0317587    1.3676752
6 months    ki1114097-CONTENT          PERU                           Male                 NA                 0.9407599    0.7816273    1.0998926
6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.8142713    0.7547168    0.8738259
6 months    ki1119695-PROBIT           BELARUS                        Male                 NA                 0.3282395    0.2636468    0.3928322
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.3123045    0.2769047    0.3477044
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                 0.3088856    0.2717958    0.3459753
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.2828070    0.1890158    0.3765982
6 months    ki1135781-COHORTS          GUATEMALA                      Male                 NA                 0.1142801    0.0084604    0.2200998
6 months    ki1135781-COHORTS          INDIA                          Female               NA                -0.7245859   -0.7638860   -0.6852858
6 months    ki1135781-COHORTS          INDIA                          Male                 NA                -0.6598402   -0.6985014   -0.6211789
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                -0.3013098   -0.3578448   -0.2447748
6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 NA                -0.2871908   -0.3470266   -0.2273549
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.4373333    0.3404454    0.5342213
6 months    ki1148112-LCNI-5           MALAWI                         Male                 NA                 0.4625776    0.3585172    0.5666380
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                -0.5993679   -0.6243425   -0.5743932
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                -0.5878807   -0.6149649   -0.5607965
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.3967213   -0.4446264   -0.3488163
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                -0.3829381   -0.4356938   -0.3301825
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.8476442   -1.0225445   -0.6727439
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                -0.7919907   -0.9620105   -0.6219710
24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.3576160    0.0631088    0.6521232
24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 NA                 0.5547963    0.2687204    0.8408722
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                -0.9043033   -1.0598094   -0.7487972
24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                -1.0066667   -1.1781406   -0.8351927
24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.4102830   -0.5733329   -0.2472331
24 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                -0.3441803   -0.5023378   -0.1860229
24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.0980037   -0.0489539    0.2449612
24 months   ki0047075b-MAL-ED          PERU                           Male                 NA                 0.1221136   -0.0669800    0.3112072
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.4234746    0.2619313    0.5850179
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                 0.3948264    0.2147508    0.5749020
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0601887   -0.1064141    0.2267915
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                 0.0495062   -0.1368827    0.2358951
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.5313620   -0.6623988   -0.4003252
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                -0.5829391   -0.7375635   -0.4283147
24 months   ki1000108-IRC              INDIA                          Female               NA                -0.7402973   -0.8718619   -0.6087327
24 months   ki1000108-IRC              INDIA                          Male                 NA                -0.7503720   -0.8760792   -0.6246648
24 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.8728125   -1.0713411   -0.6742839
24 months   ki1000109-EE               PAKISTAN                       Male                 NA                -1.1385795   -1.3495762   -0.9275829
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.8645940   -1.0082251   -0.7209630
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                -0.9509013   -1.0845041   -0.8172984
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.9424373   -1.0575682   -0.8273063
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                -0.8467667   -0.9647619   -0.7287715
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.5950769   -0.7167986   -0.4733553
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                -0.6259843   -0.7714705   -0.4804980
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                -0.7848444   -0.8514140   -0.7182748
24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                -0.8327913   -0.8993503   -0.7662322
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -1.0583554   -1.1808784   -0.9358323
24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                -1.2043718   -1.3315799   -1.0771636
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.7920192   -0.9390849   -0.6449536
24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                -0.8995683   -1.0587293   -0.7404073
24 months   ki1114097-CONTENT          PERU                           Female               NA                 0.8008434    0.6149240    0.9867627
24 months   ki1114097-CONTENT          PERU                           Male                 NA                 0.3270370    0.1405939    0.5134802
24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.8968572    0.7745867    1.0191276
24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                 0.4647290    0.3476216    0.5818364
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -1.0146388   -1.1326241   -0.8966534
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                -1.4422941   -1.6085793   -1.2760089
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.2553101   -0.3338785   -0.1767417
24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                -0.3055300   -0.3794637   -0.2315964
24 months   ki1135781-COHORTS          INDIA                          Female               NA                -0.5531694   -0.5922162   -0.5141225
24 months   ki1135781-COHORTS          INDIA                          Male                 NA                -0.6566101   -0.6968760   -0.6163442
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                -0.5961226   -0.6470592   -0.5451861
24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                -0.6223703   -0.6751288   -0.5696117
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                -0.0406818   -0.1501557    0.0687920
24 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                -0.0550903   -0.1772357    0.0670552
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                -1.2640053   -1.2952880   -1.2327226
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                -1.3293305   -1.3606334   -1.2980276
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -1.1855091   -1.2278382   -1.1431800
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                -1.2606926   -1.3083710   -1.2130142


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9418605   -1.0869834   -0.7967375
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4029032    0.0896793    0.7161272
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9324444   -1.2067907   -0.6580982
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7684615   -1.1257770   -0.4111460
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1925833   -0.4053570    0.0201904
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7624348    0.5710709    0.9537986
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -0.3333051   -0.5209779   -0.1456323
Birth       ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.3663158   -0.7677415    0.0351099
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                -1.2349454   -1.2972413   -1.1726496
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.6078947   -1.4214563    0.2056668
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1448633   -1.3544229   -0.9353037
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5154897   -0.5413479   -0.4896314
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7778272   -0.7968313   -0.7588232
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6886269   -0.7410452   -0.6362086
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7079979   -0.8344175   -0.5815783
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0528816    0.9313005    1.1744626
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5421785    0.3900443    0.6943126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.7747022   -0.8887874   -0.6606170
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.1641841   -0.3464247    0.0180565
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0809332    0.0282644    0.1336020
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1846038   -0.2354782   -0.1337293
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0840134   -0.1945572    0.0265305
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6038416   -0.6899448   -0.5177384
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.5780453   -0.7226627   -0.4334279
6 months    ki1114097-CONTENT          PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5792439    0.5193388    0.6391490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3105514    0.2848767    0.3362262
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1940810    0.1226351    0.2655269
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.6908803   -0.7184601   -0.6633005
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4499404    0.3788501    0.5210308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5935161   -0.6130518   -0.5739805
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9516520   -1.0670654   -0.8362385
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -1.0120238   -1.1588493   -0.8651984
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.8099290   -0.8570608   -0.7627972
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1363107   -1.2252817   -1.0473398
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.8535391   -0.9644236   -0.7426546
24 months   ki1114097-CONTENT          PERU                           NA                   NA                 0.5668293    0.4302437    0.7034148
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6874295    0.5756922    0.7991668
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1825404   -1.2814625   -1.0836183
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2815804   -0.3354498   -0.2277110
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6073238   -0.6354743   -0.5791732
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0477709   -0.1296526    0.0341109
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2978031   -1.3210763   -1.2745298
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2231088   -1.2549632   -1.1912543


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male                 Female             0.2018587   -0.0864423    0.4901597
Birth       ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Male                 Female             0.2935484   -0.3285532    0.9156499
Birth       ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Male                 Female            -0.1275099   -0.6743880    0.4193683
Birth       ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.4850000   -0.1802351    1.1502351
Birth       ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Male                 Female            -0.0160745   -0.2564011    0.2242521
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            -0.0701339   -0.4994323    0.3591644
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.1764530   -0.5503405    0.1974345
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female             0.3322093   -0.2626035    0.9270221
Birth       ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Male                 Female             0.2063669   -0.1655368    0.5782707
Birth       ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       Male                 Female            -0.1184410   -0.4933685    0.2564865
Birth       ki1000109-ResPak           PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1000109-ResPak           PAKISTAN                       Male                 Female             0.3993182   -0.3749488    1.1735851
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male                 Female             0.1843111    0.0895545    0.2790678
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            -0.0343610   -0.2245563    0.1558343
Birth       ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Male                 Female             0.0848328   -0.0692875    0.2389531
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            -0.0304866   -0.1984733    0.1375002
Birth       ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         Male                 Female             0.0432057   -0.0815433    0.1679547
Birth       ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Male                 Female            -0.0601900   -0.2373183    0.1169383
Birth       ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BANGLADESH                     Male                 Female            -0.7771111   -2.3853227    0.8311005
Birth       ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Male                 Female             0.0362922   -0.0073193    0.0799036
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female             0.1932833    0.1416687    0.2448980
Birth       ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Male                 Female            -0.2119697   -0.4133825   -0.0105569
Birth       ki1135781-COHORTS          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Male                 Female             0.0131925   -0.0464689    0.0728538
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               Female             0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Male                 Female            -0.0479041   -0.1407812    0.0449731
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female             0.0393650    0.0077819    0.0709482
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            -0.0419312   -0.1412065    0.0573441
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 Female             0.3381673    0.0838504    0.5924842
6 months    ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Male                 Female             0.1670003   -0.1609404    0.4949410
6 months    ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Male                 Female             0.0036440   -0.2487461    0.2560342
6 months    ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.2256255   -0.0337799    0.4850310
6 months    ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Male                 Female             0.1952910   -0.0441914    0.4347734
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            -0.1168657   -0.4206136    0.1868822
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female             0.0181000   -0.2447323    0.2809324
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female             0.2469366   -0.0543338    0.5482069
6 months    ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Male                 Female             0.0205267   -0.2510408    0.2920941
6 months    ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Male                 Female            -0.1450934   -0.3724512    0.0822643
6 months    ki1000109-ResPak           PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            -0.1626771   -0.5263976    0.2010434
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 Female             0.0311205   -0.0647735    0.1270144
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            -0.2911180   -0.5220774   -0.0601586
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female             0.0284819   -0.1511834    0.2081472
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 Female             0.0581391   -0.1065601    0.2228382
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             0.0005815   -0.1574674    0.1586304
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0573224   -0.1625056    0.0478609
6 months    ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         Male                 Female            -0.0118834   -0.1133029    0.0895361
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            -0.1511292   -0.3723348    0.0700764
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female            -0.0603245   -0.2316479    0.1109989
6 months    ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BANGLADESH                     Male                 Female             0.0902557   -0.1957002    0.3762116
6 months    ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           Male                 Female            -0.2589570   -0.4903294   -0.0275847
6 months    ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Male                 Female            -0.4860318   -0.5228468   -0.4492169
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            -0.0034190   -0.0546908    0.0478528
6 months    ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female            -0.1685269   -0.3099292   -0.0271247
6 months    ki1135781-COHORTS          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Male                 Female             0.0647457    0.0096169    0.1198746
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female             0.0141190   -0.0682007    0.0964388
6 months    ki1148112-LCNI-5           MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Male                 Female             0.0252442   -0.1169382    0.1674266
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female             0.0114872   -0.0230606    0.0460349
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female             0.0137832   -0.0541133    0.0816797
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female             0.0556535   -0.1882662    0.2995732
24 months   ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 Female             0.1971803   -0.2133973    0.6077578
24 months   ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            -0.1023634   -0.3338487    0.1291219
24 months   ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.0661027   -0.1610516    0.2932570
24 months   ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Male                 Female             0.0241100   -0.2153747    0.2635946
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            -0.0286482   -0.2705644    0.2132680
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0106825   -0.2606771    0.2393121
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            -0.0515771   -0.2542575    0.1511034
24 months   ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Male                 Female            -0.0100747   -0.1920405    0.1718911
24 months   ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       Male                 Female            -0.2657670   -0.5554793    0.0239452
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            -0.0863073   -0.2824694    0.1098549
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female             0.0956706   -0.0691869    0.2605281
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            -0.0309073   -0.2205977    0.1587830
24 months   ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            -0.0479469   -0.1420830    0.0461893
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            -0.1460164   -0.3226341    0.0306012
24 months   ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            -0.1075491   -0.3242529    0.1091547
24 months   ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           Male                 Female            -0.4738063   -0.7371066   -0.2105060
24 months   ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Male                 Female            -0.4321282   -0.5309427   -0.3333137
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            -0.4276553   -0.6315458   -0.2237649
24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            -0.0502200   -0.1581050    0.0576650
24 months   ki1135781-COHORTS          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Male                 Female            -0.1034407   -0.1595300   -0.0473515
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            -0.0262476   -0.0995825    0.0470872
24 months   ki1148112-LCNI-5           MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            -0.0144084   -0.1784329    0.1496161
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            -0.0653252   -0.1071637   -0.0234867
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            -0.0751835   -0.1389454   -0.0114216


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.1023376   -0.0444483    0.2491236
Birth       ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.1467742   -0.1664497    0.4599981
Birth       ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0651717   -0.3453210    0.2149776
Birth       ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.1865385   -0.0855259    0.4586028
Birth       ki0047075b-MAL-ED          PERU                           Female               NA                -0.0081783   -0.1304542    0.1140976
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0374048   -0.2664502    0.1916407
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0797874   -0.2496165    0.0900416
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.1661047   -0.1333908    0.4656001
Birth       ki1000108-IRC              INDIA                          Female               NA                 0.1173223   -0.0943872    0.3290318
Birth       ki1000109-EE               PAKISTAN                       Female               NA                -0.0595551   -0.2482808    0.1291707
Birth       ki1000109-ResPak           PAKISTAN                       Female               NA                 0.2311842   -0.2215546    0.6839231
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.1012625    0.0493504    0.1531746
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0182861   -0.1195127    0.0829406
Birth       ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0448083   -0.0366770    0.1262936
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0153942   -0.1002267    0.0694382
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                 0.0224870   -0.0424497    0.0874237
Birth       ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0323016   -0.1273880    0.0627847
Birth       ki1114097-CMIN             BANGLADESH                     Female               NA                -0.4090058   -1.2742052    0.4561935
Birth       ki1119695-PROBIT           BELARUS                        Female               NA                 0.0175425   -0.0035116    0.0385967
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.1001805    0.0733764    0.1269847
Birth       ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.1110317   -0.2168036   -0.0052599
Birth       ki1135781-COHORTS          INDIA                          Female               NA                 0.0069040   -0.0243191    0.0381272
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                -0.0254310   -0.0747446    0.0238827
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0207380    0.0040842    0.0373918
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0219456   -0.0739374    0.0300462
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.1655757    0.0392321    0.2919193
6 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0846987   -0.0820118    0.2514093
6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0016367   -0.1117252    0.1149987
6 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.1204611   -0.0187806    0.2597028
6 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.1051567   -0.0243133    0.2346267
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0588930   -0.2121320    0.0943461
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0088668   -0.1198941    0.1376277
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.1221262   -0.0274060    0.2716585
6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0112695   -0.1378296    0.1603687
6 months    ki1000109-EE               PAKISTAN                       Female               NA                -0.0746747   -0.1919188    0.0425693
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                -0.0844015   -0.2733924    0.1045894
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0168900   -0.0354875    0.0692674
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                -0.1363658   -0.2455361   -0.0271955
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0154874   -0.0822151    0.1131899
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0303711   -0.0556970    0.1164393
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0002871   -0.0777426    0.0783168
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0289721   -0.0821489    0.0242047
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                -0.0061323   -0.0584690    0.0462045
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                -0.0737955   -0.1821490    0.0345579
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0311249   -0.1195555    0.0573058
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0512563   -0.1112360    0.2137487
6 months    ki1114097-CONTENT          PERU                           Female               NA                -0.1312852   -0.2498612   -0.0127092
6 months    ki1119695-PROBIT           BELARUS                        Female               NA                -0.2350274   -0.2534237   -0.2166312
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0017531   -0.0280431    0.0245369
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0887260   -0.1633611   -0.0140909
6 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0337056    0.0049962    0.0624150
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0074665   -0.0360670    0.0510000
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0126071   -0.0584045    0.0836187
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0058517   -0.0117510    0.0234545
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0069158   -0.0271570    0.0409887
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0283518   -0.0959659    0.1526695
24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.1050072   -0.1141490    0.3241635
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0473487   -0.1546300    0.0599326
24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0353707   -0.0862524    0.1569938
24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.0131945   -0.1178773    0.1442663
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0144445   -0.1364327    0.1075437
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0053912   -0.1315587    0.1207764
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0257885   -0.1271627    0.0755857
24 months   ki1000108-IRC              INDIA                          Female               NA                -0.0055177   -0.1051774    0.0941420
24 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.1392113   -0.2922948    0.0138722
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0469850   -0.1538520    0.0598820
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0495703   -0.0359370    0.1350775
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0152733   -0.1090208    0.0784743
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                -0.0250846   -0.0743473    0.0241780
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0779554   -0.1724703    0.0165595
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0615199   -0.1856592    0.0626194
24 months   ki1114097-CONTENT          PERU                           Female               NA                -0.2340141   -0.3690477   -0.0989805
24 months   ki1119695-PROBIT           BELARUS                        Female               NA                -0.2094277   -0.2536381   -0.1652172
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.1679016   -0.2503378   -0.0854655
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0262703   -0.0827254    0.0301847
24 months   ki1135781-COHORTS          INDIA                          Female               NA                -0.0541544   -0.0835518   -0.0247570
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                -0.0138365   -0.0524988    0.0248257
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                -0.0070891   -0.0877925    0.0736144
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                -0.0337978   -0.0554493   -0.0121463
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0375997   -0.0694437   -0.0057557

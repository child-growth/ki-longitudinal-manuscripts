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

**Intervention Variable:** parity

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        parity    sstunted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -------  ---------  -------  ------  -----------------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                0      334    1252  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                1       27    1252  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                0      269    1252  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                1       20    1252  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+               0      558    1252  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+               1       44    1252  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                0      204     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                1        2     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                0      183     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                1        0     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+               0      148     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+               1        2     539  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         1                0      153    1407  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         1                1        3    1407  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         2                0      144    1407  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         2                1        2    1407  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         3+               0     1084    1407  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         3+               1       21    1407  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          1                0      196     696  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          1                1       15     696  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          2                0      175     696  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          2                1        5     696  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          3+               0      294     696  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          3+               1       11     696  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0     5794   13874  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1      195   13874  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                0     4040   13874  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                1      104   13874  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+               0     3598   13874  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+               1      143   13874  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      1                0      109     852  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      1                1        3     852  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      2                0      134     852  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      2                1        3     852  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      3+               0      598     852  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      3+               1        5     852  sstunted         
Birth       ki1135781-COHORTS          INDIA                          1                0      674    4122  sstunted         
Birth       ki1135781-COHORTS          INDIA                          1                1       22    4122  sstunted         
Birth       ki1135781-COHORTS          INDIA                          2                0     1016    4122  sstunted         
Birth       ki1135781-COHORTS          INDIA                          2                1       21    4122  sstunted         
Birth       ki1135781-COHORTS          INDIA                          3+               0     2319    4122  sstunted         
Birth       ki1135781-COHORTS          INDIA                          3+               1       70    4122  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    1                0      661    3050  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    1                1       14    3050  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    2                0      677    3050  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    2                1       10    3050  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    3+               0     1666    3050  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    3+               1       22    3050  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0     6332   22455  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1     1124   22455  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                0     6940   22455  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                1      675   22455  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+               0     6735   22455  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+               1      649   22455  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0      360    1336  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1       32    1336  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                0      279    1336  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                1       25    1336  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+               0      569    1336  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+               1       71    1336  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0        4     380  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1        3     380  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                0       64     380  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                1        8     380  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+               0      258     380  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+               1       43     380  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      213     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1        5     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                0      217     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                1        5     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+               0      160     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+               1        4     604  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      674    1995  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        6    1995  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      649    1995  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        8    1995  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               0      654    1995  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               1        4    1995  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         1                0      190    1623  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         1                1        4    1623  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         2                0      159    1623  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         2                1        5    1623  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         3+               0     1218    1623  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         3+               1       47    1623  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0      147     564  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1        6     564  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          2                0      143     564  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          2                1        6     564  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          3+               0      253     564  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          3+               1        9     564  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0     3321    8668  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1      145    8668  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                0     2545    8668  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                1       93    8668  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+               0     2451    8668  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+               1      113    8668  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      1                0      116     961  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      1                1       16     961  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      2                0      122     961  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      2                1       17     961  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      3+               0      599     961  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      3+               1       91     961  sstunted         
6 months    ki1135781-COHORTS          INDIA                          1                0      713    4291  sstunted         
6 months    ki1135781-COHORTS          INDIA                          1                1       27    4291  sstunted         
6 months    ki1135781-COHORTS          INDIA                          2                0     1056    4291  sstunted         
6 months    ki1135781-COHORTS          INDIA                          2                1       40    4291  sstunted         
6 months    ki1135781-COHORTS          INDIA                          3+               0     2314    4291  sstunted         
6 months    ki1135781-COHORTS          INDIA                          3+               1      141    4291  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    1                0      553    2708  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    1                1       21    2708  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    2                0      584    2708  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    2                1       22    2708  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    3+               0     1439    2708  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    3+               1       89    2708  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     5910   16811  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      486   16811  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                0     5435   16811  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                1      265   16811  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+               0     4446   16811  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+               1      269   16811  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      193     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       18     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                0      193     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                1       20     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+               0      140     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+               1       14     578  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        1       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0        1       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        0       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               0        3       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               1        1       6  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         1                0      129    1376  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         1                1        8    1376  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         2                0      134    1376  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         2                1        5    1376  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         3+               0      996    1376  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         3+               1      104    1376  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0      116     488  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1       14     488  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          2                0      116     488  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          2                1       14     488  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          3+               0      203     488  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          3+               1       25     488  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0      570    1639  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       70    1639  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                0      458    1639  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                1       49    1639  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+               0      433    1639  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+               1       59    1639  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      1                0       83    1064  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      1                1       83    1064  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      2                0       80    1064  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      2                1       71    1064  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      3+               0      380    1064  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      3+               1      367    1064  sstunted         
24 months   ki1135781-COHORTS          INDIA                          1                0      457    3380  sstunted         
24 months   ki1135781-COHORTS          INDIA                          1                1      107    3380  sstunted         
24 months   ki1135781-COHORTS          INDIA                          2                0      679    3380  sstunted         
24 months   ki1135781-COHORTS          INDIA                          2                1      169    3380  sstunted         
24 months   ki1135781-COHORTS          INDIA                          3+               0     1355    3380  sstunted         
24 months   ki1135781-COHORTS          INDIA                          3+               1      613    3380  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    1                0      428    2445  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    1                1       96    2445  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    2                0      400    2445  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    2                1      144    2445  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    3+               0      910    2445  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    3+               1      467    2445  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     2692    8632  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      481    8632  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                0     2513    8632  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                1      410    8632  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+               0     2080    8632  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+               1      456    8632  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/03da4264-c1ed-4514-afbc-c0aba82f84d3/6c613f28-7a95-4874-953b-b8e984de095a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/03da4264-c1ed-4514-afbc-c0aba82f84d3/6c613f28-7a95-4874-953b-b8e984de095a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/03da4264-c1ed-4514-afbc-c0aba82f84d3/6c613f28-7a95-4874-953b-b8e984de095a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/03da4264-c1ed-4514-afbc-c0aba82f84d3/6c613f28-7a95-4874-953b-b8e984de095a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.0747922   0.0429611   0.1066234
Birth       ki1000304b-SAS-CompFeed   INDIA         2                    NA                0.0692042   0.0504516   0.0879567
Birth       ki1000304b-SAS-CompFeed   INDIA         3+                   NA                0.0730897   0.0353975   0.1107819
Birth       ki1113344-GMS-Nepal       NEPAL         1                    NA                0.0710900   0.0363916   0.1057885
Birth       ki1113344-GMS-Nepal       NEPAL         2                    NA                0.0277778   0.0037532   0.0518023
Birth       ki1113344-GMS-Nepal       NEPAL         3+                   NA                0.0360656   0.0151254   0.0570058
Birth       ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.0325597   0.0280646   0.0370548
Birth       ki1126311-ZVITAMBO        ZIMBABWE      2                    NA                0.0250965   0.0203340   0.0298591
Birth       ki1126311-ZVITAMBO        ZIMBABWE      3+                   NA                0.0382251   0.0320807   0.0443695
Birth       ki1135781-COHORTS         INDIA         1                    NA                0.0316092   0.0186096   0.0446087
Birth       ki1135781-COHORTS         INDIA         2                    NA                0.0202507   0.0116766   0.0288248
Birth       ki1135781-COHORTS         INDIA         3+                   NA                0.0293010   0.0225374   0.0360645
Birth       ki1135781-COHORTS         PHILIPPINES   1                    NA                0.0207407   0.0099878   0.0314937
Birth       ki1135781-COHORTS         PHILIPPINES   2                    NA                0.0145560   0.0055987   0.0235134
Birth       ki1135781-COHORTS         PHILIPPINES   3+                   NA                0.0130332   0.0076218   0.0184446
Birth       kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.1507511   0.1419200   0.1595821
Birth       kiGH5241-JiVitA-3         BANGLADESH    2                    NA                0.0886408   0.0812408   0.0960409
Birth       kiGH5241-JiVitA-3         BANGLADESH    3+                   NA                0.0878927   0.0813717   0.0944138
6 months    ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.0816327   0.0684211   0.0948442
6 months    ki1000304b-SAS-CompFeed   INDIA         2                    NA                0.0822368   0.0588631   0.1056106
6 months    ki1000304b-SAS-CompFeed   INDIA         3+                   NA                0.1109375   0.0771916   0.1446834
6 months    ki1113344-GMS-Nepal       NEPAL         1                    NA                0.0392157   0.0084313   0.0700001
6 months    ki1113344-GMS-Nepal       NEPAL         2                    NA                0.0402685   0.0086750   0.0718620
6 months    ki1113344-GMS-Nepal       NEPAL         3+                   NA                0.0343511   0.0122781   0.0564242
6 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.0418350   0.0351692   0.0485007
6 months    ki1126311-ZVITAMBO        ZIMBABWE      2                    NA                0.0352540   0.0282160   0.0422919
6 months    ki1126311-ZVITAMBO        ZIMBABWE      3+                   NA                0.0440718   0.0361265   0.0520170
6 months    ki1135781-COHORTS         GUATEMALA     1                    NA                0.1212121   0.0655061   0.1769182
6 months    ki1135781-COHORTS         GUATEMALA     2                    NA                0.1223022   0.0678072   0.1767971
6 months    ki1135781-COHORTS         GUATEMALA     3+                   NA                0.1318841   0.1066240   0.1571441
6 months    ki1135781-COHORTS         INDIA         1                    NA                0.0364865   0.0229758   0.0499972
6 months    ki1135781-COHORTS         INDIA         2                    NA                0.0364964   0.0253932   0.0475995
6 months    ki1135781-COHORTS         INDIA         3+                   NA                0.0574338   0.0482290   0.0666386
6 months    ki1135781-COHORTS         PHILIPPINES   1                    NA                0.0365854   0.0212239   0.0519468
6 months    ki1135781-COHORTS         PHILIPPINES   2                    NA                0.0363036   0.0214087   0.0511985
6 months    ki1135781-COHORTS         PHILIPPINES   3+                   NA                0.0582461   0.0465007   0.0699915
6 months    kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.0759850   0.0689686   0.0830014
6 months    kiGH5241-JiVitA-3         BANGLADESH    2                    NA                0.0464912   0.0410638   0.0519187
6 months    kiGH5241-JiVitA-3         BANGLADESH    3+                   NA                0.0570520   0.0499469   0.0641570
24 months   ki1017093b-PROVIDE        BANGLADESH    1                    NA                0.0853081   0.0475843   0.1230318
24 months   ki1017093b-PROVIDE        BANGLADESH    2                    NA                0.0938967   0.0546911   0.1331023
24 months   ki1017093b-PROVIDE        BANGLADESH    3+                   NA                0.0909091   0.0454657   0.1363525
24 months   ki1101329-Keneba          GAMBIA        1                    NA                0.0583942   0.0191148   0.0976736
24 months   ki1101329-Keneba          GAMBIA        2                    NA                0.0359712   0.0050027   0.0669398
24 months   ki1101329-Keneba          GAMBIA        3+                   NA                0.0945455   0.0772488   0.1118422
24 months   ki1113344-GMS-Nepal       NEPAL         1                    NA                0.1076923   0.0543500   0.1610346
24 months   ki1113344-GMS-Nepal       NEPAL         2                    NA                0.1076923   0.0543500   0.1610346
24 months   ki1113344-GMS-Nepal       NEPAL         3+                   NA                0.1096491   0.0690507   0.1502476
24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.1093750   0.0851872   0.1335628
24 months   ki1126311-ZVITAMBO        ZIMBABWE      2                    NA                0.0966469   0.0709193   0.1223746
24 months   ki1126311-ZVITAMBO        ZIMBABWE      3+                   NA                0.1199187   0.0912041   0.1486333
24 months   ki1135781-COHORTS         GUATEMALA     1                    NA                0.5000000   0.4239029   0.5760971
24 months   ki1135781-COHORTS         GUATEMALA     2                    NA                0.4701987   0.3905532   0.5498441
24 months   ki1135781-COHORTS         GUATEMALA     3+                   NA                0.4912985   0.4554314   0.5271656
24 months   ki1135781-COHORTS         INDIA         1                    NA                0.1897163   0.1573537   0.2220789
24 months   ki1135781-COHORTS         INDIA         2                    NA                0.1992925   0.1724021   0.2261828
24 months   ki1135781-COHORTS         INDIA         3+                   NA                0.3114837   0.2910205   0.3319470
24 months   ki1135781-COHORTS         PHILIPPINES   1                    NA                0.1832061   0.1500779   0.2163343
24 months   ki1135781-COHORTS         PHILIPPINES   2                    NA                0.2647059   0.2276250   0.3017867
24 months   ki1135781-COHORTS         PHILIPPINES   3+                   NA                0.3391431   0.3141330   0.3641531
24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.1515916   0.1373893   0.1657938
24 months   kiGH5241-JiVitA-3         BANGLADESH    2                    NA                0.1402668   0.1266521   0.1538816
24 months   kiGH5241-JiVitA-3         BANGLADESH    3+                   NA                0.1798107   0.1649145   0.1947070


### Parameter: E(Y)


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0726837   0.0523147   0.0930527
Birth       ki1113344-GMS-Nepal       NEPAL         NA                   NA                0.0445402   0.0292033   0.0598771
Birth       ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0318582   0.0289357   0.0347806
Birth       ki1135781-COHORTS         INDIA         NA                   NA                0.0274139   0.0224285   0.0323992
Birth       ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0150820   0.0107558   0.0194081
Birth       kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.1090180   0.1044666   0.1135695
6 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0958084   0.0774939   0.1141229
6 months    ki1113344-GMS-Nepal       NEPAL         NA                   NA                0.0372340   0.0215945   0.0528736
6 months    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0404938   0.0363439   0.0446436
6 months    ki1135781-COHORTS         GUATEMALA     NA                   NA                0.1290323   0.1078261   0.1502384
6 months    ki1135781-COHORTS         INDIA         NA                   NA                0.0484735   0.0420469   0.0549002
6 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0487445   0.0406327   0.0568562
6 months    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0606746   0.0568229   0.0645262
24 months   ki1017093b-PROVIDE        BANGLADESH    NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.0850291   0.0702861   0.0997720
24 months   ki1113344-GMS-Nepal       NEPAL         NA                   NA                0.1086066   0.0809724   0.1362407
24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.1086028   0.0935351   0.1236705
24 months   ki1135781-COHORTS         GUATEMALA     NA                   NA                0.4896617   0.4596107   0.5197126
24 months   ki1135781-COHORTS         INDIA         NA                   NA                0.2630178   0.2481729   0.2778626
24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.2891616   0.2711872   0.3071359
24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.1560473   0.1472898   0.1648047


### Parameter: RR


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed   INDIA         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA         2                    1                 0.9252851   0.6568848   1.3033527
Birth       ki1000304b-SAS-CompFeed   INDIA         3+                   1                 0.9772364   0.4726236   2.0206164
Birth       ki1113344-GMS-Nepal       NEPAL         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal       NEPAL         2                    1                 0.3907407   0.1447400   1.0548458
Birth       ki1113344-GMS-Nepal       NEPAL         3+                   1                 0.5073224   0.2376100   1.0831868
Birth       ki1126311-ZVITAMBO        ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE      2                    1                 0.7707851   0.6095582   0.9746562
Birth       ki1126311-ZVITAMBO        ZIMBABWE      3+                   1                 1.1739998   0.9498273   1.4510803
Birth       ki1135781-COHORTS         INDIA         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         INDIA         2                    1                 0.6406592   0.3550449   1.1560348
Birth       ki1135781-COHORTS         INDIA         3+                   1                 0.9269759   0.5784298   1.4855465
Birth       ki1135781-COHORTS         PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         PHILIPPINES   2                    1                 0.7018091   0.3138795   1.5691883
Birth       ki1135781-COHORTS         PHILIPPINES   3+                   1                 0.6283852   0.3234162   1.2209285
Birth       kiGH5241-JiVitA-3         BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH    2                    1                 0.5879948   0.5322514   0.6495761
Birth       kiGH5241-JiVitA-3         BANGLADESH    3+                   1                 0.5830323   0.5296248   0.6418253
6 months    ki1000304b-SAS-CompFeed   INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA         2                    1                 1.0074013   0.6792562   1.4940715
6 months    ki1000304b-SAS-CompFeed   INDIA         3+                   1                 1.3589844   0.9192262   2.0091230
6 months    ki1113344-GMS-Nepal       NEPAL         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL         2                    1                 1.0268456   0.3384548   3.1153701
6 months    ki1113344-GMS-Nepal       NEPAL         3+                   1                 0.8759542   0.3176197   2.4157685
6 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE      2                    1                 0.8426917   0.6527384   1.0879233
6 months    ki1126311-ZVITAMBO        ZIMBABWE      3+                   1                 1.0534671   0.8281899   1.3400224
6 months    ki1135781-COHORTS         GUATEMALA     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         GUATEMALA     2                    1                 1.0089928   0.5319730   1.9137559
6 months    ki1135781-COHORTS         GUATEMALA     3+                   1                 1.0880435   0.6613262   1.7900979
6 months    ki1135781-COHORTS         INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         INDIA         2                    1                 1.0002703   0.6194218   1.6152817
6 months    ki1135781-COHORTS         INDIA         3+                   1                 1.5741118   1.0514846   2.3565043
6 months    ki1135781-COHORTS         PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         PHILIPPINES   2                    1                 0.9922992   0.5516806   1.7848331
6 months    ki1135781-COHORTS         PHILIPPINES   3+                   1                 1.5920593   0.9992361   2.5365907
6 months    kiGH5241-JiVitA-3         BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH    2                    1                 0.6118475   0.5279594   0.7090647
6 months    kiGH5241-JiVitA-3         BANGLADESH    3+                   1                 0.7508320   0.6420062   0.8781047
24 months   ki1017093b-PROVIDE        BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH    2                    1                 1.1006781   0.5991422   2.0220447
24 months   ki1017093b-PROVIDE        BANGLADESH    3+                   1                 1.0656566   0.5467246   2.0771408
24 months   ki1101329-Keneba          GAMBIA        1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba          GAMBIA        2                    1                 0.6160075   0.2065845   1.8368524
24 months   ki1101329-Keneba          GAMBIA        3+                   1                 1.6190909   0.8063563   3.2509887
24 months   ki1113344-GMS-Nepal       NEPAL         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL         2                    1                 1.0000000   0.4963421   2.0147393
24 months   ki1113344-GMS-Nepal       NEPAL         3+                   1                 1.0181704   0.5485894   1.8897029
24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE      2                    1                 0.8836292   0.6251308   1.2490196
24 months   ki1126311-ZVITAMBO        ZIMBABWE      3+                   1                 1.0963995   0.7914280   1.5188899
24 months   ki1135781-COHORTS         GUATEMALA     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS         GUATEMALA     2                    1                 0.9403974   0.7488851   1.1808849
24 months   ki1135781-COHORTS         GUATEMALA     3+                   1                 0.9825971   0.8299796   1.1632780
24 months   ki1135781-COHORTS         INDIA         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS         INDIA         2                    1                 1.0504761   0.8451397   1.3057014
24 months   ki1135781-COHORTS         INDIA         3+                   1                 1.6418395   1.3675484   1.9711456
24 months   ki1135781-COHORTS         PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS         PHILIPPINES   2                    1                 1.4448529   1.1494344   1.8161976
24 months   ki1135781-COHORTS         PHILIPPINES   3+                   1                 1.8511559   1.5227626   2.2503692
24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH    2                    1                 0.9252946   0.8132415   1.0527870
24 months   kiGH5241-JiVitA-3         BANGLADESH    3+                   1                 1.1861527   1.0485512   1.3418115


### Parameter: PAR


agecat      studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed   INDIA         1                    NA                -0.0021085   -0.0319667    0.0277496
Birth       ki1113344-GMS-Nepal       NEPAL         1                    NA                -0.0265498   -0.0531807    0.0000811
Birth       ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                -0.0007015   -0.0040634    0.0026603
Birth       ki1135781-COHORTS         INDIA         1                    NA                -0.0041953   -0.0158904    0.0074997
Birth       ki1135781-COHORTS         PHILIPPINES   1                    NA                -0.0056588   -0.0147781    0.0034606
Birth       kiGH5241-JiVitA-3         BANGLADESH    1                    NA                -0.0417330   -0.0485124   -0.0349536
6 months    ki1000304b-SAS-CompFeed   INDIA         1                    NA                 0.0141757   -0.0112232    0.0395746
6 months    ki1113344-GMS-Nepal       NEPAL         1                    NA                -0.0019816   -0.0280222    0.0240589
6 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                -0.0013412   -0.0064520    0.0037696
6 months    ki1135781-COHORTS         GUATEMALA     1                    NA                 0.0078201   -0.0441451    0.0597853
6 months    ki1135781-COHORTS         INDIA         1                    NA                 0.0119871   -0.0006968    0.0246710
6 months    ki1135781-COHORTS         PHILIPPINES   1                    NA                 0.0121591   -0.0020444    0.0263626
6 months    kiGH5241-JiVitA-3         BANGLADESH    1                    NA                -0.0153104   -0.0204865   -0.0101344
24 months   ki1017093b-PROVIDE        BANGLADESH    1                    NA                 0.0046573   -0.0258247    0.0351394
24 months   ki1101329-Keneba          GAMBIA        1                    NA                 0.0266349   -0.0114833    0.0647531
24 months   ki1113344-GMS-Nepal       NEPAL         1                    NA                 0.0009142   -0.0448357    0.0466642
24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                -0.0007722   -0.0196185    0.0180741
24 months   ki1135781-COHORTS         GUATEMALA     1                    NA                -0.0103383   -0.0802450    0.0595683
24 months   ki1135781-COHORTS         INDIA         1                    NA                 0.0733014    0.0429999    0.1036030
24 months   ki1135781-COHORTS         PHILIPPINES   1                    NA                 0.1059554    0.0751311    0.1367798
24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    NA                 0.0044557   -0.0062603    0.0151717


### Parameter: PAF


agecat      studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed   INDIA         1                    NA                -0.0290098   -0.5369336    0.3110561
Birth       ki1113344-GMS-Nepal       NEPAL         1                    NA                -0.5960862   -1.2770413   -0.1187725
Birth       ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                -0.0220208   -0.1331657    0.0782227
Birth       ki1135781-COHORTS         INDIA         1                    NA                -0.1530363   -0.6680434    0.2029627
Birth       ki1135781-COHORTS         PHILIPPINES   1                    NA                -0.3752013   -1.1203069    0.1080637
Birth       kiGH5241-JiVitA-3         BANGLADESH    1                    NA                -0.3828086   -0.4454919   -0.3228434
6 months    ki1000304b-SAS-CompFeed   INDIA         1                    NA                 0.1479592   -0.1305950    0.3578836
6 months    ki1113344-GMS-Nepal       NEPAL         1                    NA                -0.0532213   -1.0453620    0.4576632
6 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                -0.0331211   -0.1673182    0.0856485
6 months    ki1135781-COHORTS         GUATEMALA     1                    NA                 0.0606061   -0.4420966    0.3880708
6 months    ki1135781-COHORTS         INDIA         1                    NA                 0.2472908   -0.0629283    0.4669715
6 months    ki1135781-COHORTS         PHILIPPINES   1                    NA                 0.2494457   -0.1025563    0.4890676
6 months    kiGH5241-JiVitA-3         BANGLADESH    1                    NA                -0.2523369   -0.3389442   -0.1713317
24 months   ki1017093b-PROVIDE        BANGLADESH    1                    NA                 0.0517681   -0.3551785    0.3365127
24 months   ki1101329-Keneba          GAMBIA        1                    NA                 0.3132448   -0.3136430    0.6409734
24 months   ki1113344-GMS-Nepal       NEPAL         1                    NA                 0.0084180   -0.5164359    0.3516146
24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                -0.0071102   -0.1964898    0.1522944
24 months   ki1135781-COHORTS         GUATEMALA     1                    NA                -0.0211132   -0.1743470    0.1121259
24 months   ki1135781-COHORTS         INDIA         1                    NA                 0.2786939    0.1543886    0.3847262
24 months   ki1135781-COHORTS         PHILIPPINES   1                    NA                 0.3664230    0.2517330    0.4635340
24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    NA                 0.0285536   -0.0427166    0.0949524

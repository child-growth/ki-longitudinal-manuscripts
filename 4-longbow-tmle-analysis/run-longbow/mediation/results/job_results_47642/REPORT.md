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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** mage

**Adjustment Set:**

* arm
* meducyrs
* feducyrs
* W_mhtcm
* single
* impsan
* W_gagebrth
* W_birthwt
* W_birthlen
* vagbrth
* parity
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_single
* delta_impsan
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_vagbrth
* delta_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mage       n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)       165     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20            35     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30           41     241
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)       125     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <20            37     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30           47     209
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)       179     234
6 months    ki0047075b-MAL-ED          INDIA                          <20            34     234
6 months    ki0047075b-MAL-ED          INDIA                          >=30           21     234
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)       185     236
6 months    ki0047075b-MAL-ED          NEPAL                          <20             5     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=30           46     236
6 months    ki0047075b-MAL-ED          PERU                           [20-30)       136     273
6 months    ki0047075b-MAL-ED          PERU                           <20            76     273
6 months    ki0047075b-MAL-ED          PERU                           >=30           61     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)       118     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20            42     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           94     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)       128     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20            15     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          104     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       293     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20            33     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30           43     369
6 months    ki1000108-IRC              INDIA                          [20-30)       342     407
6 months    ki1000108-IRC              INDIA                          <20            36     407
6 months    ki1000108-IRC              INDIA                          >=30           29     407
6 months    ki1000109-EE               PAKISTAN                       [20-30)       159     370
6 months    ki1000109-EE               PAKISTAN                       <20             1     370
6 months    ki1000109-EE               PAKISTAN                       >=30          210     370
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)      1017    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20           171    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30          148    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)       261     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20            36     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30           83     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)       357     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20            61     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30          117     535
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)       409     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20            65     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30          109     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       462     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20           131     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30          122     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)      1318    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20           146    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          548    2012
6 months    ki1101329-Keneba           GAMBIA                         [20-30)       987    2080
6 months    ki1101329-Keneba           GAMBIA                         <20           288    2080
6 months    ki1101329-Keneba           GAMBIA                         >=30          805    2080
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)       171     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20            46     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30           59     276
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)       370     563
6 months    ki1113344-GMS-Nepal        NEPAL                          <20           108     563
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30           85     563
6 months    ki1119695-PROBIT           BELARUS                        [20-30)     11316   15761
6 months    ki1119695-PROBIT           BELARUS                        <20          1620   15761
6 months    ki1119695-PROBIT           BELARUS                        >=30         2825   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      5481    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20          1261    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30         1538    8280
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)       470     961
6 months    ki1135781-COHORTS          GUATEMALA                      <20           118     961
6 months    ki1135781-COHORTS          GUATEMALA                      >=30          373     961
6 months    ki1135781-COHORTS          INDIA                          [20-30)      3331    4904
6 months    ki1135781-COHORTS          INDIA                          <20           371    4904
6 months    ki1135781-COHORTS          INDIA                          >=30         1202    4904
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)      1601    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    <20           331    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30          776    2708
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)       364     669
6 months    ki1148112-LCNI-5           MALAWI                         <20           107     669
6 months    ki1148112-LCNI-5           MALAWI                         >=30          198     669
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      7679   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20          7905   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30         1221   16805
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)       146     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20            29     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30           37     212
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)       102     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <20            27     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30           40     169
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)       172     225
24 months   ki0047075b-MAL-ED          INDIA                          <20            33     225
24 months   ki0047075b-MAL-ED          INDIA                          >=30           20     225
24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)       179     228
24 months   ki0047075b-MAL-ED          NEPAL                          <20             4     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=30           45     228
24 months   ki0047075b-MAL-ED          PERU                           [20-30)        98     201
24 months   ki0047075b-MAL-ED          PERU                           <20            55     201
24 months   ki0047075b-MAL-ED          PERU                           >=30           48     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)       106     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20            39     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           93     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)       113     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             9     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           92     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       296     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20            34     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30           42     372
24 months   ki1000108-IRC              INDIA                          [20-30)       343     409
24 months   ki1000108-IRC              INDIA                          <20            37     409
24 months   ki1000108-IRC              INDIA                          >=30           29     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)       289     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20            44     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30           94     427
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)       408     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20            64     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30          105     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       334     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20           101     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30           79     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            2       6
24 months   ki1101329-Keneba           GAMBIA                         [20-30)       790    1714
24 months   ki1101329-Keneba           GAMBIA                         <20           217    1714
24 months   ki1101329-Keneba           GAMBIA                         >=30          707    1714
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)       323     499
24 months   ki1113344-GMS-Nepal        NEPAL                          <20            98     499
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30           78     499
24 months   ki1119695-PROBIT           BELARUS                        [20-30)      2893    4035
24 months   ki1119695-PROBIT           BELARUS                        <20           369    4035
24 months   ki1119695-PROBIT           BELARUS                        >=30          773    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)       299     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20            71     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30           86     456
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)       528    1067
24 months   ki1135781-COHORTS          GUATEMALA                      <20           153    1067
24 months   ki1135781-COHORTS          GUATEMALA                      >=30          386    1067
24 months   ki1135781-COHORTS          INDIA                          [20-30)      2466    3695
24 months   ki1135781-COHORTS          INDIA                          <20           247    3695
24 months   ki1135781-COHORTS          INDIA                          >=30          982    3695
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)      1460    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <20           292    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30          693    2445
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)       250     475
24 months   ki1148112-LCNI-5           MALAWI                         <20            80     475
24 months   ki1148112-LCNI-5           MALAWI                         >=30          145     475
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      4058    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20          3855    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30          714    8627


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
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
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




# Results Detail

## Results Plots
![](/tmp/f6adeabf-9e70-41d4-bbb5-b4d9b2c15832/d0ecfce6-62b8-4803-bf5e-bdff320bb981/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f6adeabf-9e70-41d4-bbb5-b4d9b2c15832/d0ecfce6-62b8-4803-bf5e-bdff320bb981/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f6adeabf-9e70-41d4-bbb5-b4d9b2c15832/d0ecfce6-62b8-4803-bf5e-bdff320bb981/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -1.1211337   -1.2527382   -0.9895292
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -1.5335480   -1.9090951   -1.1580010
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -1.2392143   -1.5502356   -0.9281930
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0108543   -0.1925256    0.2142341
6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.2153589   -0.0989303    0.5296480
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                -0.0370352   -0.2792284    0.2051580
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -1.2505349   -1.3898980   -1.1111719
6 months    ki0047075b-MAL-ED          INDIA                          <20                  NA                -1.3088935   -1.6130605   -1.0047266
6 months    ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.8844291   -1.1823748   -0.5864833
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                -0.5523243   -0.6728895   -0.4317591
6 months    ki0047075b-MAL-ED          NEPAL                          <20                  NA                -1.4210000   -2.1753122   -0.6666878
6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 NA                -0.5027174   -0.7907851   -0.2146497
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                -1.2928683   -1.4505415   -1.1351952
6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                -1.3363505   -1.5483296   -1.1243713
6 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                -1.3950338   -1.6249309   -1.1651368
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -1.1420788   -1.3141986   -0.9699590
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -1.1247456   -1.4684181   -0.7810732
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.9596330   -1.1807169   -0.7385491
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -1.3884869   -1.5667590   -1.2102149
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -1.4535656   -1.8762764   -1.0308549
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -1.3130258   -1.4939686   -1.1320830
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -1.4268301   -1.5838822   -1.2697781
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -1.2816233   -1.7312649   -0.8319817
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -1.4240141   -1.8930621   -0.9549660
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -1.2447614   -1.3884221   -1.1011008
6 months    ki1000108-IRC              INDIA                          <20                  NA                -1.2964775   -1.7125065   -0.8804486
6 months    ki1000108-IRC              INDIA                          >=30                 NA                -1.0230714   -1.5950693   -0.4510735
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -1.3744575   -1.4614347   -1.2874802
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -1.3600578   -1.4767932   -1.2433225
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -1.6368573   -1.8027190   -1.4709956
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -1.8685574   -2.0010792   -1.7360355
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                -1.8456251   -2.2002111   -1.4910391
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                -2.0466964   -2.3119040   -1.7814887
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -1.4235441   -1.5337336   -1.3133546
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -1.2075973   -1.4408870   -0.9743076
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -1.4483837   -1.6323863   -1.2643811
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -1.0249152   -1.1150970   -0.9347335
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -1.1761266   -1.3909552   -0.9612979
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -1.1603400   -1.3356493   -0.9850308
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -1.1715475   -1.2596972   -1.0833977
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -1.2327212   -1.4047202   -1.0607223
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -1.2435380   -1.4249100   -1.0621661
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.5705235   -0.6301616   -0.5108855
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.5518117   -0.7182324   -0.3853910
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.4739864   -0.5639115   -0.3840614
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.8750611   -0.9448624   -0.8052599
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                -0.7071285   -0.8287061   -0.5855508
6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.9811070   -1.0537668   -0.9084471
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                -1.4926800   -1.6439130   -1.3414470
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -1.8174669   -2.0638687   -1.5710652
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                -1.4896861   -1.7487813   -1.2305910
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -1.2637458   -1.3540418   -1.1734497
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -1.5003250   -1.6958504   -1.3047995
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -1.4678601   -1.7015406   -1.2341795
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.1187436    0.0258865    0.2116008
6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                 0.0191460   -0.1286130    0.1669050
6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.1151038    0.0099890    0.2202186
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.8714091   -0.9025196   -0.8402987
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.9192754   -0.9806828   -0.8578680
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.9336539   -0.9913150   -0.8759928
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -1.7719748   -1.8677684   -1.6761813
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                -1.8034436   -1.9955717   -1.6113155
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -1.8891154   -2.0036593   -1.7745715
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.9987050   -1.0388424   -0.9585677
6 months    ki1135781-COHORTS          INDIA                          <20                  NA                -1.2386277   -1.3514313   -1.1258240
6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                -1.1210287   -1.1909523   -1.0511050
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -1.0726553   -1.1260639   -1.0192466
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -1.1756771   -1.2939022   -1.0574520
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -1.2415272   -1.3246305   -1.1584239
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -1.6439696   -1.7491968   -1.5387425
6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                -1.5727101   -1.7490205   -1.3963998
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                -1.7367366   -1.8766895   -1.5967838
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -1.2722553   -1.3031228   -1.2413878
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -1.3553158   -1.3840635   -1.3265681
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -1.3047861   -1.3742238   -1.2353484
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -1.8414385   -1.9916115   -1.6912654
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -2.2865064   -2.6046628   -1.9683499
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -2.1955533   -2.5185226   -1.8725839
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0517032   -0.1632896    0.2666960
24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.0679889   -0.4119438    0.5479215
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.0594558   -0.2665819    0.3854934
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -1.9117784   -2.0626520   -1.7609047
24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                -1.7601228   -2.0386733   -1.4815723
24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                -1.5435116   -1.8703712   -1.2166519
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                -1.7688417   -1.9647826   -1.5729009
24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -1.7991642   -2.0007052   -1.5976233
24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                -1.6495104   -1.8655022   -1.4335185
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -1.6689396   -1.8684490   -1.4694302
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -1.5558638   -1.9006954   -1.2110323
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -1.5678840   -1.7860406   -1.3497274
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -2.7047788   -2.8966774   -2.5128801
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -2.7372222   -3.3356044   -2.1388400
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -2.4715761   -2.6650847   -2.2780674
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -2.5756499   -2.6894230   -2.4618767
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -2.3674295   -2.7348832   -1.9999758
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -2.6828209   -2.9952917   -2.3703501
24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -1.7784254   -1.8823619   -1.6744889
24 months   ki1000108-IRC              INDIA                          <20                  NA                -1.8776578   -2.2513885   -1.5039271
24 months   ki1000108-IRC              INDIA                          >=30                 NA                -1.6921814   -2.0885791   -1.2957836
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -2.2147265   -2.3407435   -2.0887094
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -1.8827884   -2.1589205   -1.6066563
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -2.1558012   -2.3712837   -1.9403188
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -1.5633486   -1.6605781   -1.4661191
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -1.5648842   -1.8097312   -1.3200372
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -1.6709047   -1.8644707   -1.4773387
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -1.4258641   -1.5297794   -1.3219488
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -1.4717283   -1.6499089   -1.2935477
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -1.4005383   -1.6189171   -1.1821595
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -1.5345209   -1.6081355   -1.4609063
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                -1.5693186   -1.6837625   -1.4548747
24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                -1.5940748   -1.6728829   -1.5152666
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -1.8724574   -1.9697856   -1.7751292
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -1.8438847   -2.0662262   -1.6215432
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -1.9551025   -2.1866744   -1.7235306
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.1521491   -0.3688379    0.0645396
24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                -0.2240955   -1.9816760    1.5334850
24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                -0.0126163   -0.3569826    0.3317499
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -2.3542945   -2.4985182   -2.2100709
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -2.6124472   -2.8754084   -2.3494859
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -2.4110513   -2.6704234   -2.1516792
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -2.8695209   -2.9586848   -2.7803569
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                -2.9262804   -3.0956226   -2.7569382
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -2.8199806   -2.9277564   -2.7122048
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -1.9288598   -1.9769807   -1.8807389
24 months   ki1135781-COHORTS          INDIA                          <20                  NA                -2.3314483   -2.4533096   -2.2095870
24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                -2.1239618   -2.2017270   -2.0461967
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -2.3484932   -2.4068705   -2.2901158
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -2.4103199   -2.5362517   -2.2843880
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -2.4618940   -2.5501081   -2.3736799
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -1.9281020   -2.0550716   -1.8011323
24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                -1.7748446   -1.9921945   -1.5574946
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                -1.8762148   -2.0441706   -1.7082589
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -1.9882460   -2.0232767   -1.9532153
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -2.0305378   -2.0662688   -1.9948068
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -2.0498749   -2.1314931   -1.9682568


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2105413   -1.3291476   -1.0919350
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3601215   -1.4821830   -1.2380600
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4062134   -1.4951703   -1.3172565
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5410317   -0.5901099   -0.4919536
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9040346   -0.9513522   -0.8567171
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5617391   -1.6780690   -1.4454093
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3321522   -1.4103691   -1.2539352
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8900815   -0.9160782   -0.8640848
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8157336   -1.8837688   -1.7476985
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -1.0441293   -1.0769738   -1.0112848
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6498804   -1.7271669   -1.5725940
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3135466   -1.3366721   -1.2904210
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8494222   -1.9760821   -1.7227624
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6058879   -2.7403043   -2.4714714
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.1826015   -2.2858082   -2.0793948
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5650387   -1.6150832   -1.5149942
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8835905   -1.9681499   -1.7990312
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -2.4008114   -2.5160291   -2.2855938
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.8597376   -2.9241330   -2.7953421
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.0059919   -2.0454828   -1.9665010
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.3898650   -2.4346888   -2.3450412
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8866737   -1.9780710   -1.7952764
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0127124   -2.0404582   -1.9849666


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.4124144   -0.8107931   -0.0140356
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.1180807   -0.4561558    0.2199945
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.2045046   -0.1689514    0.5779606
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           -0.0478895   -0.3639671    0.2681882
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <20                  [20-30)           -0.0583586   -0.3927948    0.2760777
6 months    ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.3661059    0.0374082    0.6948035
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <20                  [20-30)           -0.8686757   -1.6325624   -0.1047890
6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 [20-30)            0.0496069   -0.2626733    0.3618872
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <20                  [20-30)           -0.0434821   -0.3085578    0.2215936
6 months    ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           -0.1021655   -0.3808568    0.1765259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.0173332   -0.3677536    0.4024199
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)            0.1824458   -0.0983526    0.4632442
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0650787   -0.5222355    0.3920781
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0754611   -0.1779452    0.3288674
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.1452068   -0.3284923    0.6189059
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.0028161   -0.4894151    0.4950472
6 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          <20                  [20-30)           -0.0517161   -0.4900501    0.3866179
6 months    ki1000108-IRC              INDIA                          >=30                 [20-30)            0.2216900   -0.3674559    0.8108359
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)            0.0143997   -0.0905388    0.1193381
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           -0.2623999   -0.4240055   -0.1007943
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)            0.0229323   -0.3520008    0.3978654
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           -0.1781390   -0.4721576    0.1158796
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.2159468   -0.0404893    0.4723828
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0248396   -0.2379131    0.1882339
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.1512113   -0.3829208    0.0804981
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.1354248   -0.3311046    0.0602549
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0611738   -0.2544034    0.1320558
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           -0.0719906   -0.2737700    0.1297888
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0187119   -0.1569554    0.1943791
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0965371   -0.0083247    0.2013990
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)            0.1679327    0.0303075    0.3055579
6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.1060458   -0.2026714   -0.0094202
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           -0.3247869   -0.6134806   -0.0360933
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)            0.0029939   -0.2981457    0.3041335
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           -0.2365792   -0.4520650   -0.0210933
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.2041143   -0.4548367    0.0466081
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           -0.0995976   -0.1949867   -0.0042086
6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           -0.0036398   -0.0656907    0.0584110
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0478663   -0.1149143    0.0191818
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0622448   -0.1259425    0.0014530
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           -0.0314688   -0.2463015    0.1833640
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           -0.1171406   -0.2666617    0.0323805
6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.2399226   -0.3598622   -0.1199831
6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.1223236   -0.2028592   -0.0417880
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           -0.1030219   -0.2325711    0.0265274
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.1688719   -0.2677566   -0.0699873
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <20                  [20-30)            0.0712595   -0.1330011    0.2755201
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           -0.0927670   -0.2660759    0.0805418
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           -0.0830605   -0.1191345   -0.0469865
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0325308   -0.1034834    0.0384219
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.4450679   -0.7963484   -0.0937874
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.3541148   -0.7079226   -0.0003070
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.0162857   -0.5078467    0.5404181
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)            0.0077526   -0.3806001    0.3961052
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <20                  [20-30)            0.1516556   -0.1641257    0.4674369
24 months   ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.3682668    0.0090028    0.7275308
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)           -0.0303225   -0.3094414    0.2487964
24 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.1193313   -0.1749308    0.4135935
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.1130758   -0.2865910    0.5127426
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)            0.1010556   -0.1948754    0.3969867
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0324435   -0.6608433    0.5959564
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.2332027   -0.0393238    0.5057292
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.2082204   -0.1765071    0.5929478
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.1071710   -0.4410788    0.2267367
24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           -0.0992324   -0.4871825    0.2887176
24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)            0.0862440   -0.3236907    0.4961787
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.3319381    0.0307255    0.6331506
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.0589252   -0.1876554    0.3055059
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.0015356   -0.2620796    0.2590083
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.1075561   -0.3223913    0.1072792
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0458642   -0.2521075    0.1603790
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)            0.0253258   -0.2165940    0.2672456
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.0347977   -0.1700338    0.1004384
24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.0595539   -0.1658741    0.0467664
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)            0.0285727   -0.2141595    0.2713049
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.0826451   -0.3339397    0.1686495
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           -0.0719464   -1.7646525    1.6207598
24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)            0.1395328   -0.0765780    0.3556436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.2581526   -0.5559286    0.0396233
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0567568   -0.3511045    0.2375910
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           -0.0567596   -0.2474864    0.1339673
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)            0.0495403   -0.0889445    0.1880251
24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.4025885   -0.5334633   -0.2717137
24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.1951020   -0.2858672   -0.1043367
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           -0.0618267   -0.2005412    0.0768879
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.1134009   -0.2191651   -0.0076367
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)            0.1532574   -0.0985890    0.4051038
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)            0.0518872   -0.1587871    0.2625615
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           -0.0422918   -0.0849234    0.0003397
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0616290   -0.1442390    0.0209811


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0845441   -0.1715079    0.0024198
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0401665   -0.0731106    0.1534435
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0399936   -0.0228001    0.1027873
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                -0.0087350   -0.0754813    0.0580113
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0339326   -0.1457672    0.0779019
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0787028   -0.0622866    0.2196923
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0283655   -0.0883581    0.1450890
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0033794   -0.0670636    0.0738223
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0103552   -0.0456247    0.0663351
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0273988   -0.0451535   -0.0096441
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.0301269   -0.1064678    0.0462141
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0173307   -0.0430061    0.0776675
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0621888   -0.1112773   -0.0131004
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0271309   -0.0805703    0.0263086
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0294918   -0.0038177    0.0628013
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0289735   -0.0791045    0.0211575
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0690591   -0.1601074    0.0219892
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0684064   -0.1281361   -0.0086767
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0117450   -0.0275074    0.0040173
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0186724   -0.0355766   -0.0017682
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0437588   -0.1147951    0.0272775
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0454242   -0.0681163   -0.0227322
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0679171   -0.1039452   -0.0318891
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0059108   -0.0744626    0.0626410
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0412913   -0.0605780   -0.0220045
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.1016748   -0.1871179   -0.0162316
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0098689   -0.1438485    0.1241108
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0623562   -0.0008308    0.1255431
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0187422   -0.1083109    0.1457953
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0461035   -0.1058841    0.1980911
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0988909   -0.0276113    0.2253931
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0162816   -0.0347716    0.0673347
24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0040522   -0.0458904    0.0377860
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0321250   -0.0354040    0.0996540
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0227692   -0.0747363    0.0291978
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0036690   -0.0642125    0.0568746
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0305178   -0.0851579    0.0241223
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0111331   -0.0773467    0.0550804
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0207443   -0.1241748    0.1656635
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0465169   -0.1261058    0.0330720
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0097833   -0.0543734    0.0739399
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0771320   -0.1045334   -0.0497307
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0413719   -0.0790172   -0.0037265
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0414283   -0.0457577    0.1286142
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0244664   -0.0461008   -0.0028320

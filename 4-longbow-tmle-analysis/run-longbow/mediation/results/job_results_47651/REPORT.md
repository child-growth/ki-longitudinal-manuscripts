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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       292     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20            33     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30           43     368
6 months    ki1000108-IRC              INDIA                          [20-30)       342     408
6 months    ki1000108-IRC              INDIA                          <20            37     408
6 months    ki1000108-IRC              INDIA                          >=30           29     408
6 months    ki1000109-EE               PAKISTAN                       [20-30)       160     373
6 months    ki1000109-EE               PAKISTAN                       <20             1     373
6 months    ki1000109-EE               PAKISTAN                       >=30          212     373
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)      1015    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20           171    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30          148    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)       260     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20            36     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30           84     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)       356     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20            61     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30          117     534
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)       409     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20            65     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30          108     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       462     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20           131     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30          122     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)      1317    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20           146    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          548    2011
6 months    ki1101329-Keneba           GAMBIA                         [20-30)       987    2080
6 months    ki1101329-Keneba           GAMBIA                         <20           288    2080
6 months    ki1101329-Keneba           GAMBIA                         >=30          805    2080
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)       171     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20            46     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30           59     276
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)       370     563
6 months    ki1113344-GMS-Nepal        NEPAL                          <20           108     563
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30           85     563
6 months    ki1119695-PROBIT           BELARUS                        [20-30)     11313   15757
6 months    ki1119695-PROBIT           BELARUS                        <20          1620   15757
6 months    ki1119695-PROBIT           BELARUS                        >=30         2824   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      5463    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20          1255    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30         1531    8249
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)       471     963
6 months    ki1135781-COHORTS          GUATEMALA                      <20           118     963
6 months    ki1135781-COHORTS          GUATEMALA                      >=30          374     963
6 months    ki1135781-COHORTS          INDIA                          [20-30)      3326    4897
6 months    ki1135781-COHORTS          INDIA                          <20           371    4897
6 months    ki1135781-COHORTS          INDIA                          >=30         1200    4897
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)      1600    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    <20           331    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30          775    2706
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)       364     669
6 months    ki1148112-LCNI-5           MALAWI                         <20           107     669
6 months    ki1148112-LCNI-5           MALAWI                         >=30          198     669
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      7656   16779
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20          7904   16779
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30         1219   16779
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)       288     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20            44     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30           94     426
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)       408     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20            64     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30          106     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       334     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20           101     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30           79     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            2       6
24 months   ki1101329-Keneba           GAMBIA                         [20-30)       791    1715
24 months   ki1101329-Keneba           GAMBIA                         <20           217    1715
24 months   ki1101329-Keneba           GAMBIA                         >=30          707    1715
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)       322     498
24 months   ki1113344-GMS-Nepal        NEPAL                          <20            98     498
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30           78     498
24 months   ki1119695-PROBIT           BELARUS                        [20-30)      2847    3971
24 months   ki1119695-PROBIT           BELARUS                        <20           364    3971
24 months   ki1119695-PROBIT           BELARUS                        >=30          760    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)       271     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20            69     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30           82     422
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)       532    1076
24 months   ki1135781-COHORTS          GUATEMALA                      <20           154    1076
24 months   ki1135781-COHORTS          GUATEMALA                      >=30          390    1076
24 months   ki1135781-COHORTS          INDIA                          [20-30)      2446    3665
24 months   ki1135781-COHORTS          INDIA                          <20           246    3665
24 months   ki1135781-COHORTS          INDIA                          >=30          973    3665
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)      1461    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    <20           293    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30          695    2449
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)       241     461
24 months   ki1148112-LCNI-5           MALAWI                         <20            78     461
24 months   ki1148112-LCNI-5           MALAWI                         >=30          142     461
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      4041    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20          3845    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30          712    8598


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
![](/tmp/deae6c55-6092-4928-a379-49d264aa9f82/84161be0-05d5-4255-b45b-0c1457866d71/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/deae6c55-6092-4928-a379-49d264aa9f82/84161be0-05d5-4255-b45b-0c1457866d71/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/deae6c55-6092-4928-a379-49d264aa9f82/84161be0-05d5-4255-b45b-0c1457866d71/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.1042578   -0.2593659    0.0508502
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.0278867   -0.4618465    0.4060731
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.1363992   -0.4297548    0.1569565
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 1.0809929    0.8638897    1.2980961
6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.9220718    0.5853602    1.2587835
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.7202840    0.3603804    1.0801876
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.7503307   -0.9002343   -0.6004272
6 months    ki0047075b-MAL-ED          INDIA                          <20                  NA                -0.6195406   -0.9176574   -0.3214237
6 months    ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.3353320   -0.6604397   -0.0102242
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                 0.1174775   -0.0332824    0.2682373
6 months    ki0047075b-MAL-ED          NEPAL                          <20                  NA                -0.1990000   -0.7855073    0.3875073
6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 NA                 0.1188768   -0.1634552    0.4012088
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                 1.0130808    0.8340494    1.1921122
6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                 1.0867581    0.8643022    1.3092141
6 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                 1.1294726    0.8587198    1.4002254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.5207143    0.2772836    0.7641451
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                 0.6023825    0.1636327    1.0411324
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                 0.4585708    0.2596139    0.6575278
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.6347897    0.4592844    0.8102951
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.4266421   -0.0457594    0.8990436
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.4110963    0.2008219    0.6213706
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.5256154   -0.6950303   -0.3562005
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.4260291   -0.9385325    0.0864742
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.1424037   -0.5912654    0.3064580
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.6141373   -0.7573749   -0.4708997
6 months    ki1000108-IRC              INDIA                          <20                  NA                -0.3279587   -0.8294996    0.1735822
6 months    ki1000108-IRC              INDIA                          >=30                 NA                -0.7260211   -1.4061623   -0.0458798
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.6652000   -0.8228814   -0.5075187
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -0.5602183   -0.6476252   -0.4728114
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.7816169   -0.9386211   -0.6246127
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.9265118   -1.0618043   -0.7912194
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                -0.8469183   -1.1207690   -0.5730677
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                -1.3006058   -1.5863635   -1.0148480
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.4208482   -0.5299678   -0.3117287
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.2733972   -0.5519430    0.0051486
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.5518575   -0.7454030   -0.3583119
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.1920304   -0.2957899   -0.0882709
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.1426605   -0.3749709    0.0896500
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.2604638   -0.4453331   -0.0755945
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0467041   -0.0505266    0.1439349
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                 0.0590993   -0.1208774    0.2390760
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.0636612   -0.2663691    0.1390467
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0833596    0.0186233    0.1480958
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.2351138    0.0259729    0.4442547
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.0367726   -0.0667686    0.1403138
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0910058   -0.1671863   -0.0148253
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                -0.0762432   -0.2191475    0.0666610
6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.3530230   -0.4412715   -0.2647745
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0005180   -0.1397367    0.1407728
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.1216592   -0.4158357    0.1725173
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                -0.2732654   -0.5548540    0.0083232
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.5785649   -0.6875934   -0.4695365
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.5080847   -0.6988387   -0.3173307
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -0.8729622   -1.0755977   -0.6703267
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.5778056    0.5161564    0.6394548
6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                 0.6718353    0.6076623    0.7360083
6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.5313349    0.4592260    0.6034438
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.3198233    0.2878030    0.3518437
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                 0.3369273    0.2712673    0.4025873
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                 0.2125412    0.1508937    0.2741887
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.1944552    0.0896087    0.2993017
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.3669638    0.1796180    0.5543096
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                 0.1462342    0.0285870    0.2638814
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.6742364   -0.7138368   -0.6346359
6 months    ki1135781-COHORTS          INDIA                          <20                  NA                -0.8389411   -0.9537415   -0.7241406
6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                -0.7671404   -0.8359334   -0.6983474
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.2396424   -0.2922694   -0.1870155
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.2221517   -0.3403458   -0.1039575
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -0.4202137   -0.5000591   -0.3403683
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.4264030    0.3180650    0.5347409
6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.4133865    0.2201369    0.6066362
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                 0.4756929    0.3198433    0.6315425
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.6036364   -0.6311252   -0.5761476
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.5702606   -0.5966404   -0.5438808
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -0.6617653   -0.7187396   -0.6047911
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.7606292   -0.9071709   -0.6140876
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -1.0284133   -1.3845432   -0.6722833
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.8113228   -1.1048910   -0.5177546
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.4875277    0.2294300    0.7456254
24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.5081608   -0.0369239    1.0532454
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.3554561   -0.1055255    0.8164377
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.9694843   -1.1107728   -0.8281958
24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                -1.0776438   -1.3563736   -0.7989140
24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.8219055   -1.0760777   -0.5677334
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0909904   -0.0647858    0.2467666
24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.1159919   -0.3656855    0.1337018
24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                 0.5205104    0.2713843    0.7696364
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.3802038    0.1920267    0.5683809
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                 0.6098972    0.3153258    0.9044687
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                 0.3432306    0.1618285    0.5246326
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0057965   -0.1666444    0.1782373
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.2561111   -0.7907626    0.2785403
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.1344565   -0.0554095    0.3243226
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.5632199   -0.6802790   -0.4461608
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.5896893   -0.8613618   -0.3180169
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.5231942   -0.8187080   -0.2276804
24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.7597442   -0.8581779   -0.6613105
24 months   ki1000108-IRC              INDIA                          <20                  NA                -0.5287160   -0.8497645   -0.2076676
24 months   ki1000108-IRC              INDIA                          >=30                 NA                -0.8416289   -1.2644490   -0.4188089
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.9398550   -1.0562767   -0.8234333
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.5306926   -0.8631419   -0.1982433
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.9627514   -1.1924710   -0.7330318
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.8461763   -0.9468400   -0.7455127
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -1.0264198   -1.2646167   -0.7882229
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.9628514   -1.1375968   -0.7881060
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.5919453   -0.7116422   -0.4722484
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.5825958   -0.7769171   -0.3882745
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.7104361   -0.9767206   -0.4441515
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.8033113   -0.8765939   -0.7300286
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                -0.8013428   -0.9225452   -0.6801404
24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.8199144   -0.8916961   -0.7481327
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -1.0633163   -1.1731739   -0.9534587
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -1.2584427   -1.4630208   -1.0538646
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -1.2558307   -1.4641288   -1.0475327
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.6979984    0.5924209    0.8035759
24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                 0.7092553    0.3165734    1.1019372
24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.6130532    0.4877165    0.7383900
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -1.2468324   -1.3731199   -1.1205450
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -1.0575520   -1.2694179   -0.8456861
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -1.1953041   -1.4366341   -0.9539742
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.2957975   -0.3732851   -0.2183098
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.2695454   -0.4185144   -0.1205764
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.2731914   -0.3634083   -0.1829745
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.6270998   -0.6680017   -0.5861979
24 months   ki1135781-COHORTS          INDIA                          <20                  NA                -0.7263448   -0.8432863   -0.6094034
24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                -0.7456528   -0.8079387   -0.6833668
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.5979060   -0.6453848   -0.5504273
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.6507681   -0.7571384   -0.5443979
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -0.6262529   -0.6985267   -0.5539791
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0072496   -0.1388833    0.1243841
24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                -0.3022320   -0.5458395   -0.0586245
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                 0.0654766   -0.0829020    0.2138551
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -1.3033504   -1.3346990   -1.2720018
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -1.2843621   -1.3186934   -1.2500309
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -1.3073935   -1.3895063   -1.2252806


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7031481   -0.8287310   -0.5775653
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5170513    0.3872178    0.6468847
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4410128   -0.5302967   -0.3517289
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0782666    0.0252568    0.1312764
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1833795   -0.2343793   -0.1323798
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0619988   -0.1773839    0.0533863
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6047987   -0.6909649   -0.5186325
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3044096    0.2782992    0.3305201
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1940810    0.1226351    0.2655269
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.7119298   -0.7444861   -0.6793734
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4410463    0.3615008    0.5205919
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5933575   -0.6128938   -0.5738211
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9571111   -1.0731621   -0.8410602
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0500935   -0.0748234    0.1750103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9097790   -1.0080462   -0.8115117
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.8079199   -0.8550714   -0.7607684
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1315863   -1.2192240   -1.0439487
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6863435    0.5745700    0.7981170
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1830569   -1.2831570   -1.0829568
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2813755   -0.3354674   -0.2272835
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6627749   -0.6962103   -0.6293395
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0116486   -0.1020399    0.0787427
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2977181   -1.3209986   -1.2744376


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)            0.0763711   -0.3846625    0.5374047
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.0321413   -0.3655334    0.3012507
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)           -0.1589211   -0.5578635    0.2400213
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           -0.3607089   -0.7789414    0.0575236
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <20                  [20-30)            0.1307902   -0.2035922    0.4651725
6 months    ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.4149988    0.0560931    0.7739045
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <20                  [20-30)           -0.3164775   -0.9220510    0.2890961
6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 [20-30)            0.0013993   -0.3186630    0.3214617
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <20                  [20-30)            0.0736774   -0.2108597    0.3582144
6 months    ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.1163918   -0.2067916    0.4395753
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.0816682   -0.4198203    0.5831567
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           -0.0621435   -0.3785389    0.2542520
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.2081476   -0.7125527    0.2962574
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.2236935   -0.4981358    0.0507489
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.0995862   -0.4399778    0.6391502
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.3832117   -0.0970973    0.8635207
6 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          <20                  [20-30)            0.2861786   -0.2355112    0.8078685
6 months    ki1000108-IRC              INDIA                          >=30                 [20-30)           -0.1118838   -0.8071838    0.5834163
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)            0.1049818   -0.0301171    0.2400807
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           -0.1164169   -0.2807933    0.0479595
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)            0.0795935   -0.2260368    0.3852238
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           -0.3740939   -0.6905290   -0.0576589
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.1474511   -0.1523614    0.4472635
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.1310092   -0.3534434    0.0914249
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)            0.0493699   -0.2053192    0.3040591
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.0684334   -0.2803862    0.1435194
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)            0.0123952   -0.1921462    0.2169366
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           -0.1103653   -0.3352932    0.1145626
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.1517542   -0.0670467    0.3705551
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.0465870   -0.1686299    0.0754559
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)            0.0147626   -0.1468734    0.1763985
6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.2620172   -0.3776434   -0.1463910
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           -0.1221773   -0.4486744    0.2043198
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           -0.2737835   -0.5884423    0.0408754
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)            0.0704802   -0.1488616    0.2898220
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.2943973   -0.5243058   -0.0644887
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)            0.0940297    0.0368171    0.1512424
6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           -0.0464706   -0.0845450   -0.0083962
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.0171040   -0.0557896    0.0899975
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.1072822   -0.1764724   -0.0380919
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)            0.1725086   -0.0421774    0.3871946
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           -0.0482210   -0.2057829    0.1093409
6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.1647047   -0.2860903   -0.0433191
6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.0929041   -0.1722996   -0.0135085
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)            0.0174908   -0.1113147    0.1462962
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.1805712   -0.2760123   -0.0851301
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           -0.0130164   -0.2348925    0.2088597
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)            0.0492900   -0.1422488    0.2408287
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)            0.0333758   -0.0011594    0.0679110
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0581290   -0.1212404    0.0049825
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.2677840   -0.6527440    0.1171759
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.0506936   -0.3776306    0.2762434
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.0206330   -0.5819374    0.6232035
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           -0.1320716   -0.6600364    0.3958932
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <20                  [20-30)           -0.1081595   -0.4204511    0.2041320
24 months   ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.1475788   -0.1431357    0.4382932
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)           -0.2069823   -0.5032991    0.0893346
24 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.4295200    0.1348393    0.7242006
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.2296934   -0.1200004    0.5793872
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           -0.0369733   -0.2989649    0.2250184
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.2619076   -0.8236798    0.2998646
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.1286601   -0.1278257    0.3851458
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0264694   -0.3216118    0.2686729
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.0400257   -0.2787303    0.3587817
24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          <20                  [20-30)            0.2310282   -0.1053886    0.5674449
24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           -0.0818847   -0.5170621    0.3532926
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.4091624    0.0576873    0.7606375
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0228964   -0.2828209    0.2370281
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.1802435   -0.4372187    0.0767318
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.1166751   -0.3169701    0.0836200
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)            0.0093495   -0.2181244    0.2368234
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           -0.1184908   -0.4095483    0.1725667
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)            0.0019685   -0.1386495    0.1425865
24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.0166031   -0.1181679    0.0849616
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           -0.1951264   -0.4273979    0.0371451
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.1925144   -0.4280528    0.0430240
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)            0.0112569   -0.3349911    0.3575049
24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           -0.0849451   -0.2122609    0.0423706
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.1892805   -0.0581070    0.4366679
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0515283   -0.2197268    0.3227834
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)            0.0262520   -0.1417146    0.1942187
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)            0.0226061   -0.0963752    0.1415873
24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.0992450   -0.2225842    0.0240942
24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.1185530   -0.1918392   -0.0452667
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           -0.0528621   -0.1694150    0.0636908
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.0283469   -0.1148256    0.0581318
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           -0.2949824   -0.5725175   -0.0174473
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)            0.0727262   -0.1269775    0.2724299
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)            0.0189882   -0.0253905    0.0633669
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0040431   -0.0920918    0.0840056


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0355382   -0.1280635    0.0569871
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.1092704   -0.2411507    0.0226098
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0471826   -0.0165691    0.1109343
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                -0.0064323   -0.0723020    0.0594375
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0413148   -0.0822039    0.1648336
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0213592   -0.1555330    0.1982514
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.1177385   -0.2457593    0.0102824
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0229387   -0.0547567    0.1006342
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0152076   -0.0557347    0.0861499
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0005084   -0.0315057    0.0304890
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.0856461   -0.1678110   -0.0034811
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0201646   -0.0838709    0.0435417
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0163402   -0.0690233    0.0363430
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0169419   -0.0755644    0.0416807
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0050930   -0.0439248    0.0337389
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0923737   -0.1492946   -0.0354529
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0625168   -0.1559755    0.0309418
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0262338   -0.0869942    0.0345266
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0011577   -0.0091012    0.0114167
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0154137   -0.0339662    0.0031387
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0003742   -0.0747996    0.0740512
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0376934   -0.0603395   -0.0150473
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0542009   -0.0890537   -0.0193481
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0146434   -0.0597999    0.0890867
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0102789   -0.0082827    0.0288405
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0601962   -0.1423976    0.0220052
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0409005   -0.2099263    0.1281253
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0123732   -0.0420414    0.0667878
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0289101   -0.0938610    0.1516812
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0464978   -0.0892046    0.1822003
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0442970   -0.0737571    0.1623511
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0060693   -0.0411384    0.0532771
24 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0139292   -0.0293096    0.0571681
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0300760   -0.0416612    0.1018133
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0417649   -0.0920782    0.0085485
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0184049   -0.0863594    0.0495495
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0046087   -0.0576057    0.0483884
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0682700   -0.1332408   -0.0032992
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0116549   -0.0490175    0.0257077
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0637756   -0.0106262    0.1381773
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0144220   -0.0409893    0.0698333
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0356751   -0.0581093   -0.0132409
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0120532   -0.0427288    0.0186225
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0043990   -0.0928972    0.0840992
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0056323   -0.0177475    0.0290121

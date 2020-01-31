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

**Intervention Variable:** country

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      country                         n_cell       n
----------  -----------------------------  -------  ------
Birth       BANGLADESH                       16692   56639
Birth       BELARUS                          13824   56639
Birth       BRAZIL                             294   56639
Birth       GAMBIA                            1423   56639
Birth       GUATEMALA                          756   56639
Birth       GUINEA-BISSAU                        0   56639
Birth       INDIA                             6993   56639
Birth       MALAWI                               0   56639
Birth       NEPAL                              168   56639
Birth       PAKISTAN                             7   56639
Birth       PERU                               291   56639
Birth       PHILIPPINES                       2899   56639
Birth       SOUTH AFRICA                       258   56639
Birth       TANZANIA, UNITED REPUBLIC OF       118   56639
Birth       ZIMBABWE                         12916   56639
6 months    BANGLADESH                       23934   70656
6 months    BELARUS                          15757   70656
6 months    BRAZIL                             317   70656
6 months    GAMBIA                            2089   70656
6 months    GUATEMALA                         1262   70656
6 months    GUINEA-BISSAU                      849   70656
6 months    INDIA                             9576   70656
6 months    MALAWI                             839   70656
6 months    NEPAL                              799   70656
6 months    PAKISTAN                           611   70656
6 months    PERU                              1124   70656
6 months    PHILIPPINES                       2706   70656
6 months    SOUTH AFRICA                       254   70656
6 months    TANZANIA, UNITED REPUBLIC OF      2275   70656
6 months    ZIMBABWE                          8264   70656
24 months   BANGLADESH                       15313   34524
24 months   BELARUS                           3971   34524
24 months   BRAZIL                             169   34524
24 months   GAMBIA                            1726   34524
24 months   GUATEMALA                         1082   34524
24 months   GUINEA-BISSAU                      551   34524
24 months   INDIA                             6299   34524
24 months   MALAWI                             563   34524
24 months   NEPAL                              726   34524
24 months   PAKISTAN                             0   34524
24 months   PERU                               794   34524
24 months   PHILIPPINES                       2449   34524
24 months   SOUTH AFRICA                       238   34524
24 months   TANZANIA, UNITED REPUBLIC OF       220   34524
24 months   ZIMBABWE                           423   34524


The following strata were considered:

* agecat: 24 months
* agecat: 6 months
* agecat: Birth

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth
* agecat: 24 months

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/8209c314-a22b-4ae1-bcd8-c752334d184c/f3492a17-bbf4-4077-91d1-74be36aef91b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8209c314-a22b-4ae1-bcd8-c752334d184c/f3492a17-bbf4-4077-91d1-74be36aef91b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8209c314-a22b-4ae1-bcd8-c752334d184c/f3492a17-bbf4-4077-91d1-74be36aef91b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat     intervention_level             baseline_level      estimate     ci_lower     ci_upper
---------  -----------------------------  ---------------  -----------  -----------  -----------
6 months   BANGLADESH                     NA                -0.5162074   -0.5268383   -0.5055765
6 months   BELARUS                        NA                 0.5789633    0.5786880    0.5792386
6 months   BRAZIL                         NA                 0.8413249    0.8070045    0.8756454
6 months   GAMBIA                         NA                -0.1846223   -0.2713066   -0.0979380
6 months   GUATEMALA                      NA                 0.1281933    0.0170502    0.2393365
6 months   GUINEA-BISSAU                  NA                -0.0418080   -0.1393310    0.0557150
6 months   INDIA                          NA                -0.6892810   -0.7407603   -0.6378018
6 months   MALAWI                         NA                 0.4499285    0.4348317    0.4650253
6 months   NEPAL                          NA                -0.3933605   -0.4155686   -0.3711523
6 months   PAKISTAN                       NA                -0.5086170   -0.5344928   -0.4827413
6 months   PERU                           NA                 0.8407647    0.7549575    0.9265719
6 months   PHILIPPINES                    NA                -0.2938433   -0.4016488   -0.1860379
6 months   SOUTH AFRICA                   NA                 0.5420735    0.5024037    0.5817433
6 months   TANZANIA, UNITED REPUBLIC OF   NA                 0.1282832    0.0040999    0.2524664
6 months   ZIMBABWE                       NA                 0.3047138    0.2368713    0.3725564


### Parameter: E(Y)


agecat     intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  -------------------  ---------------  -----------  -----------  -----------
6 months   NA                   NA                -0.0987239   -0.1131619   -0.0842858


### Parameter: ATE


agecat     intervention_level             baseline_level      estimate     ci_lower     ci_upper
---------  -----------------------------  ---------------  -----------  -----------  -----------
6 months   BANGLADESH                     BANGLADESH         0.0000000    0.0000000    0.0000000
6 months   BELARUS                        BANGLADESH         1.0951707    1.0845361    1.1058054
6 months   BRAZIL                         BANGLADESH         1.3575323    1.3216157    1.3934490
6 months   GAMBIA                         BANGLADESH         0.3315851    0.2442626    0.4189076
6 months   GUATEMALA                      BANGLADESH         0.6444008    0.5327538    0.7560478
6 months   GUINEA-BISSAU                  BANGLADESH         0.4743994    0.3762901    0.5725088
6 months   INDIA                          BANGLADESH        -0.1730736   -0.2256393   -0.1205079
6 months   MALAWI                         BANGLADESH         0.9661359    0.9476623    0.9846095
6 months   NEPAL                          BANGLADESH         0.1228470    0.0982188    0.1474751
6 months   PAKISTAN                       BANGLADESH         0.0075904   -0.0203714    0.0355522
6 months   PERU                           BANGLADESH         1.3569721    1.2705197    1.4434245
6 months   PHILIPPINES                    BANGLADESH         0.2223641    0.1140358    0.3306925
6 months   SOUTH AFRICA                   BANGLADESH         1.0582809    1.0172287    1.0993331
6 months   TANZANIA, UNITED REPUBLIC OF   BANGLADESH         0.6444906    0.5198574    0.7691237
6 months   ZIMBABWE                       BANGLADESH         0.8209212    0.7522497    0.8895928


### Parameter: PAR


agecat     intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -------------------  ---------------  ----------  ----------  ----------
6 months   BANGLADESH           NA                0.4174835   0.4016223   0.4333447

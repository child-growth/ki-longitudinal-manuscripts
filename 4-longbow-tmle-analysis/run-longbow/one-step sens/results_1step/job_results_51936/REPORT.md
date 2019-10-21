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

**Intervention Variable:** country

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      country                         n_cell       n
----------  -----------------------------  -------  ------
Birth       BANGLADESH                       20760   62600
Birth       BELARUS                          13884   62600
Birth       BRAZIL                             306   62600
Birth       GAMBIA                            1541   62600
Birth       GUATEMALA                          852   62600
Birth       GUINEA-BISSAU                        0   62600
Birth       INDIA                             7511   62600
Birth       MALAWI                               0   62600
Birth       NEPAL                              173   62600
Birth       PAKISTAN                             9   62600
Birth       PERU                               299   62600
Birth       PHILIPPINES                       3050   62600
Birth       SOUTH AFRICA                       262   62600
Birth       TANZANIA, UNITED REPUBLIC OF       123   62600
Birth       ZIMBABWE                         13830   62600
6 months    BANGLADESH                       23961   70727
6 months    BELARUS                          15761   70727
6 months    BRAZIL                             317   70727
6 months    GAMBIA                            2089   70727
6 months    GUATEMALA                         1260   70727
6 months    GUINEA-BISSAU                      848   70727
6 months    INDIA                             9588   70727
6 months    MALAWI                             839   70727
6 months    NEPAL                              799   70727
6 months    PAKISTAN                           607   70727
6 months    PERU                              1125   70727
6 months    PHILIPPINES                       2708   70727
6 months    SOUTH AFRICA                       254   70727
6 months    TANZANIA, UNITED REPUBLIC OF      2276   70727
6 months    ZIMBABWE                          8295   70727
24 months   BANGLADESH                       15358   34719
24 months   BELARUS                           4035   34719
24 months   BRAZIL                             169   34719
24 months   GAMBIA                            1725   34719
24 months   GUATEMALA                         1073   34719
24 months   GUINEA-BISSAU                      551   34719
24 months   INDIA                             6348   34719
24 months   MALAWI                             579   34719
24 months   NEPAL                              727   34719
24 months   PAKISTAN                             0   34719
24 months   PERU                               794   34719
24 months   PHILIPPINES                       2445   34719
24 months   SOUTH AFRICA                       238   34719
24 months   TANZANIA, UNITED REPUBLIC OF       220   34719
24 months   ZIMBABWE                           457   34719


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
![](/tmp/18bc66ed-735b-46a4-a668-29c8f493611d/8208deb1-1152-4b7d-ba2e-50a4fab16e8f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/18bc66ed-735b-46a4-a668-29c8f493611d/8208deb1-1152-4b7d-ba2e-50a4fab16e8f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/18bc66ed-735b-46a4-a668-29c8f493611d/8208deb1-1152-4b7d-ba2e-50a4fab16e8f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat     intervention_level             baseline_level      estimate     ci_lower     ci_upper
---------  -----------------------------  ---------------  -----------  -----------  -----------
6 months   BANGLADESH                     NA                -1.3163849   -1.3259482   -1.3068215
6 months   BELARUS                        NA                 0.1069986    0.1065857    0.1074115
6 months   BRAZIL                         NA                -0.1994532   -0.2346574   -0.1642490
6 months   GAMBIA                         NA                -0.9041369   -0.9836906   -0.8245832
6 months   GUATEMALA                      NA                -1.7554987   -1.8622450   -1.6487524
6 months   GUINEA-BISSAU                  NA                -0.6075943   -0.7020405   -0.5131482
6 months   INDIA                          NA                -1.1210266   -1.1730546   -1.0689987
6 months   MALAWI                         NA                -1.6601907   -1.6742692   -1.6461122
6 months   NEPAL                          NA                -1.1043951   -1.1241370   -1.0846531
6 months   PAKISTAN                       NA                -1.8916996   -1.9187439   -1.8646553
6 months   PERU                           NA                -0.6725806   -0.7503328   -0.5948284
6 months   PHILIPPINES                    NA                -1.1405724   -1.2497657   -1.0313791
6 months   SOUTH AFRICA                   NA                -1.0633760   -1.0972662   -1.0294858
6 months   TANZANIA, UNITED REPUBLIC OF   NA                -0.6320683   -0.7486452   -0.5154914
6 months   ZIMBABWE                       NA                -0.8907480   -0.9582906   -0.8232055


### Parameter: E(Y)


agecat     intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  -------------------  ---------------  -----------  -----------  -----------
6 months   NA                   NA                -0.8716525   -0.8853712   -0.8579339


### Parameter: ATE


agecat     intervention_level             baseline_level      estimate     ci_lower     ci_upper
---------  -----------------------------  ---------------  -----------  -----------  -----------
6 months   BANGLADESH                     BANGLADESH         0.0000000    0.0000000    0.0000000
6 months   BELARUS                        BANGLADESH         1.4233835    1.4138111    1.4329558
6 months   BRAZIL                         BANGLADESH         1.1169316    1.0804496    1.1534137
6 months   GAMBIA                         BANGLADESH         0.4122479    0.3321223    0.4923735
6 months   GUATEMALA                      BANGLADESH        -0.4391138   -0.5462738   -0.3319538
6 months   GUINEA-BISSAU                  BANGLADESH         0.7087905    0.6138613    0.8037197
6 months   INDIA                          BANGLADESH         0.1953582    0.1424551    0.2482614
6 months   MALAWI                         BANGLADESH        -0.3438058   -0.3608266   -0.3267851
6 months   NEPAL                          BANGLADESH         0.2119898    0.1900550    0.2339245
6 months   PAKISTAN                       BANGLADESH        -0.5753148   -0.6040089   -0.5466207
6 months   PERU                           BANGLADESH         0.6438043    0.5654650    0.7221435
6 months   PHILIPPINES                    BANGLADESH         0.1758125    0.0662012    0.2854238
6 months   SOUTH AFRICA                   BANGLADESH         0.2530089    0.2178038    0.2882139
6 months   TANZANIA, UNITED REPUBLIC OF   BANGLADESH         0.6843165    0.5673365    0.8012966
6 months   ZIMBABWE                       BANGLADESH         0.4256368    0.3574223    0.4938513


### Parameter: PAR


agecat     intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -------------------  ---------------  ----------  ----------  ----------
6 months   BANGLADESH           NA                0.4447323   0.4299694   0.4594952

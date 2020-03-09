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

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        single    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -------  -------  ------  -----------------
Birth       COHORTS          GUATEMALA                      0            719     767  haz              
Birth       COHORTS          GUATEMALA                      1             48     767  haz              
Birth       COHORTS          INDIA                          0           4771    4778  haz              
Birth       COHORTS          INDIA                          1              7    4778  haz              
Birth       COHORTS          PHILIPPINES                    0           2936    3010  haz              
Birth       COHORTS          PHILIPPINES                    1             74    3010  haz              
Birth       JiVitA-4         BANGLADESH                     0           2814    2819  haz              
Birth       JiVitA-4         BANGLADESH                     1              5    2819  haz              
Birth       MAL-ED           BANGLADESH                     0            231     231  haz              
Birth       MAL-ED           BANGLADESH                     1              0     231  haz              
Birth       MAL-ED           BRAZIL                         0             57      65  haz              
Birth       MAL-ED           BRAZIL                         1              8      65  haz              
Birth       MAL-ED           INDIA                          0             47      47  haz              
Birth       MAL-ED           INDIA                          1              0      47  haz              
Birth       MAL-ED           NEPAL                          0             27      27  haz              
Birth       MAL-ED           NEPAL                          1              0      27  haz              
Birth       MAL-ED           PERU                           0            209     233  haz              
Birth       MAL-ED           PERU                           1             24     233  haz              
Birth       MAL-ED           SOUTH AFRICA                   0             63     123  haz              
Birth       MAL-ED           SOUTH AFRICA                   1             60     123  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            122     125  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              3     125  haz              
Birth       PROBIT           BELARUS                        0          13351   13893  haz              
Birth       PROBIT           BELARUS                        1            542   13893  haz              
Birth       ZVITAMBO         ZIMBABWE                       0          12942   13817  haz              
Birth       ZVITAMBO         ZIMBABWE                       1            875   13817  haz              
6 months    COHORTS          GUATEMALA                      0            826     893  haz              
6 months    COHORTS          GUATEMALA                      1             67     893  haz              
6 months    COHORTS          INDIA                          0           4962    4971  haz              
6 months    COHORTS          INDIA                          1              9    4971  haz              
6 months    COHORTS          PHILIPPINES                    0           2608    2676  haz              
6 months    COHORTS          PHILIPPINES                    1             68    2676  haz              
6 months    Guatemala BSC    GUATEMALA                      0            248     277  haz              
6 months    Guatemala BSC    GUATEMALA                      1             29     277  haz              
6 months    JiVitA-4         BANGLADESH                     0           4814    4822  haz              
6 months    JiVitA-4         BANGLADESH                     1              8    4822  haz              
6 months    MAL-ED           BANGLADESH                     0            241     241  haz              
6 months    MAL-ED           BANGLADESH                     1              0     241  haz              
6 months    MAL-ED           BRAZIL                         0            179     209  haz              
6 months    MAL-ED           BRAZIL                         1             30     209  haz              
6 months    MAL-ED           INDIA                          0            234     234  haz              
6 months    MAL-ED           INDIA                          1              0     234  haz              
6 months    MAL-ED           NEPAL                          0            236     236  haz              
6 months    MAL-ED           NEPAL                          1              0     236  haz              
6 months    MAL-ED           PERU                           0            240     273  haz              
6 months    MAL-ED           PERU                           1             33     273  haz              
6 months    MAL-ED           SOUTH AFRICA                   0            140     254  haz              
6 months    MAL-ED           SOUTH AFRICA                   1            114     254  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            239     247  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              8     247  haz              
6 months    PROBIT           BELARUS                        0          15117   15760  haz              
6 months    PROBIT           BELARUS                        1            643   15760  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1835    2013  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            178    2013  haz              
6 months    ZVITAMBO         ZIMBABWE                       0           8125    8638  haz              
6 months    ZVITAMBO         ZIMBABWE                       1            513    8638  haz              
24 months   COHORTS          GUATEMALA                      0            923    1010  haz              
24 months   COHORTS          GUATEMALA                      1             87    1010  haz              
24 months   COHORTS          INDIA                          0           3744    3753  haz              
24 months   COHORTS          INDIA                          1              9    3753  haz              
24 months   COHORTS          PHILIPPINES                    0           2357    2416  haz              
24 months   COHORTS          PHILIPPINES                    1             59    2416  haz              
24 months   JiVitA-4         BANGLADESH                     0           4738    4744  haz              
24 months   JiVitA-4         BANGLADESH                     1              6    4744  haz              
24 months   MAL-ED           BANGLADESH                     0            212     212  haz              
24 months   MAL-ED           BANGLADESH                     1              0     212  haz              
24 months   MAL-ED           BRAZIL                         0            148     169  haz              
24 months   MAL-ED           BRAZIL                         1             21     169  haz              
24 months   MAL-ED           INDIA                          0            225     225  haz              
24 months   MAL-ED           INDIA                          1              0     225  haz              
24 months   MAL-ED           NEPAL                          0            228     228  haz              
24 months   MAL-ED           NEPAL                          1              0     228  haz              
24 months   MAL-ED           PERU                           0            176     201  haz              
24 months   MAL-ED           PERU                           1             25     201  haz              
24 months   MAL-ED           SOUTH AFRICA                   0            131     238  haz              
24 months   MAL-ED           SOUTH AFRICA                   1            107     238  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            208     214  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6     214  haz              
24 months   PROBIT           BELARUS                        0           3890    4035  haz              
24 months   PROBIT           BELARUS                        1            145    4035  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0       6  haz              
24 months   ZVITAMBO         ZIMBABWE                       0           1533    1637  haz              
24 months   ZVITAMBO         ZIMBABWE                       1            104    1637  haz              


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/9217fd59-397e-4fec-8050-b65114fd89b2/e9712cda-5153-4979-900a-6b07f26b63e2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9217fd59-397e-4fec-8050-b65114fd89b2/e9712cda-5153-4979-900a-6b07f26b63e2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9217fd59-397e-4fec-8050-b65114fd89b2/e9712cda-5153-4979-900a-6b07f26b63e2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      0                    NA                 0.1805804    0.0908273    0.2703335
Birth       COHORTS          GUATEMALA                      1                    NA                -0.4480739   -0.9568571    0.0607093
Birth       COHORTS          INDIA                          0                    NA                -0.6778139   -0.7115208   -0.6441070
Birth       COHORTS          INDIA                          1                    NA                -0.4242857   -0.4784569   -0.3701145
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.2519727   -0.2981689   -0.2057765
Birth       COHORTS          PHILIPPINES                    1                    NA                -1.1240903   -1.1583120   -1.0898686
Birth       JiVitA-4         BANGLADESH                     0                    NA                -1.5248721   -1.5752417   -1.4745025
Birth       JiVitA-4         BANGLADESH                     1                    NA                -0.8080000   -0.8384743   -0.7775257
Birth       MAL-ED           BRAZIL                         0                    NA                -0.5433333   -0.8229128   -0.2637539
Birth       MAL-ED           BRAZIL                         1                    NA                -1.6212500   -2.3756597   -0.8668403
Birth       MAL-ED           PERU                           0                    NA                -0.8602096   -0.9813502   -0.7390689
Birth       MAL-ED           PERU                           1                    NA                -0.7863515   -1.1959725   -0.3767305
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.5736629   -0.7953880   -0.3519379
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                -0.7013921   -1.0125395   -0.3902448
Birth       PROBIT           BELARUS                        0                    NA                 1.3152767    1.1492048    1.4813485
Birth       PROBIT           BELARUS                        1                    NA                 0.9754188    0.8892653    1.0615723
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.4966436   -0.5178810   -0.4754061
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.5865037   -0.6834040   -0.4896034
6 months    COHORTS          GUATEMALA                      0                    NA                -1.7886762   -1.8613224   -1.7160300
6 months    COHORTS          GUATEMALA                      1                    NA                -2.4028449   -2.8491708   -1.9565189
6 months    COHORTS          INDIA                          0                    NA                -1.0423478   -1.0757913   -1.0089044
6 months    COHORTS          INDIA                          1                    NA                -0.7833333   -0.8545896   -0.7120771
6 months    COHORTS          PHILIPPINES                    0                    NA                -1.1521898   -1.2056878   -1.0986918
6 months    COHORTS          PHILIPPINES                    1                    NA                -1.3319472   -1.3751182   -1.2887763
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -1.5191259   -1.6413142   -1.3969376
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -1.9193623   -2.2590041   -1.5797204
6 months    JiVitA-4         BANGLADESH                     0                    NA                -1.3443862   -1.3825869   -1.3061854
6 months    JiVitA-4         BANGLADESH                     1                    NA                -1.1993750   -1.2225095   -1.1762405
6 months    MAL-ED           BRAZIL                         0                    NA                 0.0585370   -0.0916241    0.2086981
6 months    MAL-ED           BRAZIL                         1                    NA                -0.0287167   -0.4935420    0.4361086
6 months    MAL-ED           PERU                           0                    NA                -1.3123361   -1.4254388   -1.1992334
6 months    MAL-ED           PERU                           1                    NA                -1.3699097   -1.7458921   -0.9939273
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.9232095   -1.1263296   -0.7200894
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                -1.2003106   -1.3766736   -1.0239475
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3626290   -1.4879351   -1.2373229
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.5514583   -1.9539746   -1.1489420
6 months    PROBIT           BELARUS                        0                    NA                 0.0950836   -0.0006046    0.1907719
6 months    PROBIT           BELARUS                        1                    NA                 0.1494850    0.0526685    0.2463015
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5396569   -0.5945941   -0.4847197
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0861085   -0.2506510    0.0784341
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.8571682   -0.8834467   -0.8308897
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -1.0902164   -1.2102449   -0.9701880
24 months   COHORTS          GUATEMALA                      0                    NA                -2.9753695   -3.0470047   -2.9037344
24 months   COHORTS          GUATEMALA                      1                    NA                -3.4572295   -3.7688942   -3.1455649
24 months   COHORTS          INDIA                          0                    NA                -2.2134909   -2.2535699   -2.1734120
24 months   COHORTS          INDIA                          1                    NA                -2.0688889   -2.1675727   -1.9702051
24 months   COHORTS          PHILIPPINES                    0                    NA                -2.4262136   -2.4829855   -2.3694417
24 months   COHORTS          PHILIPPINES                    1                    NA                -1.3845097   -1.4464895   -1.3225299
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.7815365   -1.8179487   -1.7451244
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.4650000   -1.4755957   -1.4544043
24 months   MAL-ED           BRAZIL                         0                    NA                 0.0266203   -0.1518279    0.2050685
24 months   MAL-ED           BRAZIL                         1                    NA                -0.0142903   -0.4812853    0.4527048
24 months   MAL-ED           PERU                           0                    NA                -1.7343715   -1.8611637   -1.6075794
24 months   MAL-ED           PERU                           1                    NA                -1.8310959   -2.2394767   -1.4227152
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -1.5876951   -1.8347889   -1.3406012
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                -1.8010027   -2.0027103   -1.5992951
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6336298   -2.7712599   -2.4959997
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -3.0591667   -3.6621048   -2.4562285
24 months   PROBIT           BELARUS                        0                    NA                -0.1480637   -0.4400008    0.1438735
24 months   PROBIT           BELARUS                        1                    NA                 0.0660150   -0.1951351    0.3271651
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -1.5857665   -1.6436263   -1.5279068
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.8272037   -2.0934663   -1.5609411


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      NA                   NA                 0.1511213    0.0632481    0.2389944
Birth       COHORTS          INDIA                          NA                   NA                -0.6774424   -0.7103357   -0.6445492
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.2465548   -0.2856502   -0.2074594
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -1.5236006   -1.5727441   -1.4744571
Birth       MAL-ED           BRAZIL                         NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       MAL-ED           PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.6317073   -0.8249555   -0.4384591
Birth       PROBIT           BELARUS                        NA                   NA                 1.3114417    1.1524752    1.4704082
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5007838   -0.5213479   -0.4802197
6 months    COHORTS          GUATEMALA                      NA                   NA                -1.8089474   -1.8800645   -1.7378303
6 months    COHORTS          INDIA                          NA                   NA                -1.0418789   -1.0745363   -1.0092215
6 months    COHORTS          PHILIPPINES                    NA                   NA                -1.1414425   -1.1836656   -1.0992193
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                -1.5624368   -1.6783540   -1.4465196
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -1.3441456   -1.3814027   -1.3068885
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED           PERU                           NA                   NA                -1.3236661   -1.4316775   -1.2156546
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0633202   -1.1909180   -0.9357224
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    PROBIT           BELARUS                        NA                   NA                 0.0980074    0.0062724    0.1897424
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5457721   -0.5948454   -0.4966988
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8677917   -0.8934036   -0.8421799
24 months   COHORTS          GUATEMALA                      NA                   NA                -2.9960594   -3.0622330   -2.9298858
24 months   COHORTS          INDIA                          NA                   NA                -2.2131442   -2.2522996   -2.1739887
24 months   COHORTS          PHILIPPINES                    NA                   NA                -2.4207616   -2.4660144   -2.3755087
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.7811362   -1.8166519   -1.7456205
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED           PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   PROBIT           BELARUS                        NA                   NA                -0.1442891   -0.4253755    0.1367972
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6034545   -1.6603071   -1.5466018


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      1                    0                 -0.6286543   -1.1454931   -0.1118155
Birth       COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          1                    0                  0.2535282    0.1897264    0.3173300
Birth       COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    1                    0                 -0.8721176   -0.9287821   -0.8154530
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                  0.7168721    0.6584462    0.7752980
Birth       MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         1                    0                 -1.0779167   -1.8824654   -0.2733679
Birth       MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    0                  0.0738581   -0.3545709    0.5022871
Birth       MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    0                 -0.1277292   -0.5116943    0.2562359
Birth       PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        1                    0                 -0.3398579   -0.4870248   -0.1926909
Birth       ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                 -0.0898601   -0.1890228    0.0093025
6 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      1                    0                 -0.6141687   -1.0665279   -0.1618095
6 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    0                  0.2590145    0.1803003    0.3377287
6 months    COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    1                    0                 -0.1797574   -0.2463844   -0.1131305
6 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 -0.4002363   -0.7608763   -0.0395963
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                  0.1450112    0.1006544    0.1893679
6 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         1                    0                 -0.0872537   -0.5751513    0.4006439
6 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    0                 -0.0575736   -0.4501199    0.3349727
6 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    0                 -0.2771011   -0.5462833   -0.0079189
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1888293   -0.6103990    0.2327403
6 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        1                    0                  0.0544014   -0.0390223    0.1478251
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.4535484    0.2806759    0.6264209
6 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.2330482   -0.3555655   -0.1105309
24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      1                    0                 -0.4818600   -0.8018605   -0.1618596
24 months   COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    0                  0.1446020    0.0380900    0.2511141
24 months   COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    1                    0                  1.0417040    0.9577031    1.1257048
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                  0.3165365    0.2791622    0.3539109
24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         1                    0                 -0.0409106   -0.5404238    0.4586027
24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           1                    0                 -0.0967244   -0.5252884    0.3318395
24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.2133076   -0.5321081    0.1054929
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.4255369   -1.0439837    0.1929099
24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        1                    0                  0.2140786   -0.1713913    0.5995486
24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.2414372   -0.5134767    0.0306023


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      0                    NA                -0.0294592   -0.0546738   -0.0042445
Birth       COHORTS          INDIA                          0                    NA                 0.0003714   -0.0012471    0.0019900
Birth       COHORTS          PHILIPPINES                    0                    NA                 0.0054179   -0.0171998    0.0280356
Birth       JiVitA-4         BANGLADESH                     0                    NA                 0.0012715   -0.0004361    0.0029791
Birth       MAL-ED           BRAZIL                         0                    NA                -0.1326667   -0.2643188   -0.0010145
Birth       MAL-ED           PERU                           0                    NA                -0.0225801   -0.0676077    0.0224475
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.0580444   -0.2552650    0.1391763
Birth       PROBIT           BELARUS                        0                    NA                -0.0038349   -0.0202831    0.0126132
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.0041402   -0.0098311    0.0015506
6 months    COHORTS          GUATEMALA                      0                    NA                -0.0202712   -0.0441883    0.0036460
6 months    COHORTS          INDIA                          0                    NA                 0.0004689   -0.0015226    0.0024605
6 months    COHORTS          PHILIPPINES                    0                    NA                 0.0107473   -0.0196301    0.0411248
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0433109   -0.0828878   -0.0037340
6 months    JiVitA-4         BANGLADESH                     0                    NA                 0.0002406   -0.0008896    0.0013707
6 months    MAL-ED           BRAZIL                         0                    NA                -0.0109612   -0.0794912    0.0575687
6 months    MAL-ED           PERU                           0                    NA                -0.0113299   -0.0557989    0.0331391
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.1401107   -0.3139811    0.0337596
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0061159   -0.0203947    0.0081629
6 months    PROBIT           BELARUS                        0                    NA                 0.0029238   -0.0132527    0.0191003
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0061152   -0.0284195    0.0161891
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0106235   -0.0174154   -0.0038317
24 months   COHORTS          GUATEMALA                      0                    NA                -0.0206899   -0.0478440    0.0064643
24 months   COHORTS          INDIA                          0                    NA                 0.0003468   -0.0023256    0.0030192
24 months   COHORTS          PHILIPPINES                    0                    NA                 0.0054520   -0.0260473    0.0369514
24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0004003   -0.0005837    0.0013844
24 months   MAL-ED           BRAZIL                         0                    NA                -0.0205059   -0.0905961    0.0495843
24 months   MAL-ED           PERU                           0                    NA                -0.0180995   -0.0717906    0.0355917
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0573644   -0.2644603    0.1497314
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0119309   -0.0316708    0.0078089
24 months   PROBIT           BELARUS                        0                    NA                 0.0037745   -0.0150724    0.0226215
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0176880   -0.0347779   -0.0005981

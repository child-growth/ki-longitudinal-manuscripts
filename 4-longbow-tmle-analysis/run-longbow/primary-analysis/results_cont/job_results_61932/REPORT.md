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
![](/tmp/0f3401ed-724c-4295-add2-459d939f4094/e19fd0ca-9d8b-4eb2-a8bd-765cae80f3e8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0f3401ed-724c-4295-add2-459d939f4094/e19fd0ca-9d8b-4eb2-a8bd-765cae80f3e8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0f3401ed-724c-4295-add2-459d939f4094/e19fd0ca-9d8b-4eb2-a8bd-765cae80f3e8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      0                    NA                 0.1834997    0.0937685    0.2732310
Birth       COHORTS          GUATEMALA                      1                    NA                -0.5344329   -0.9572730   -0.1115927
Birth       COHORTS          INDIA                          0                    NA                -0.6778139   -0.7115208   -0.6441070
Birth       COHORTS          INDIA                          1                    NA                -0.4242857   -0.4784569   -0.3701145
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.2521690   -0.2953323   -0.2090057
Birth       COHORTS          PHILIPPINES                    1                    NA                -0.8442711   -0.8760977   -0.8124445
Birth       JiVitA-4         BANGLADESH                     0                    NA                -1.5248721   -1.5752417   -1.4745025
Birth       JiVitA-4         BANGLADESH                     1                    NA                -0.8080000   -0.8384743   -0.7775257
Birth       MAL-ED           BRAZIL                         0                    NA                -0.5433333   -0.8229128   -0.2637539
Birth       MAL-ED           BRAZIL                         1                    NA                -1.6212500   -2.3756597   -0.8668403
Birth       MAL-ED           PERU                           0                    NA                -0.8641936   -0.9853496   -0.7430376
Birth       MAL-ED           PERU                           1                    NA                -1.0719398   -1.4878134   -0.6560662
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.5637877   -0.7849423   -0.3426330
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                -0.6949496   -1.0187857   -0.3711135
Birth       PROBIT           BELARUS                        0                    NA                 1.3139112    1.1488812    1.4789412
Birth       PROBIT           BELARUS                        1                    NA                 0.9724777    0.8902206    1.0547348
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.4974386   -0.5186850   -0.4761923
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.5645332   -0.6615407   -0.4675257
6 months    COHORTS          GUATEMALA                      0                    NA                -1.7916323   -1.8655842   -1.7176805
6 months    COHORTS          GUATEMALA                      1                    NA                -2.3159528   -2.7410933   -1.8908123
6 months    COHORTS          INDIA                          0                    NA                -1.0423478   -1.0757913   -1.0089044
6 months    COHORTS          INDIA                          1                    NA                -0.7833333   -0.8545896   -0.7120771
6 months    COHORTS          PHILIPPINES                    0                    NA                -1.1521104   -1.2052111   -1.0990098
6 months    COHORTS          PHILIPPINES                    1                    NA                -0.8741941   -0.9146147   -0.8337735
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -1.5186611   -1.6412128   -1.3961094
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -1.9365202   -2.2603383   -1.6127022
6 months    JiVitA-4         BANGLADESH                     0                    NA                -1.3443862   -1.3825869   -1.3061854
6 months    JiVitA-4         BANGLADESH                     1                    NA                -1.1993750   -1.2225095   -1.1762405
6 months    MAL-ED           BRAZIL                         0                    NA                 0.0616794   -0.0883440    0.2117028
6 months    MAL-ED           BRAZIL                         1                    NA                -0.1744928   -0.6411132    0.2921276
6 months    MAL-ED           PERU                           0                    NA                -1.3090271   -1.4225077   -1.1955466
6 months    MAL-ED           PERU                           1                    NA                -1.4651604   -1.8285949   -1.1017259
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.9278174   -1.1276550   -0.7279798
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                -1.1702606   -1.3683228   -0.9721984
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3626290   -1.4879351   -1.2373229
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.5514583   -1.9539746   -1.1489420
6 months    PROBIT           BELARUS                        0                    NA                 0.0947842   -0.0006332    0.1902015
6 months    PROBIT           BELARUS                        1                    NA                 0.1535254    0.0581640    0.2488868
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5368423   -0.5928800   -0.4808046
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2220282   -0.3747666   -0.0692897
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.8574218   -0.8837399   -0.8311036
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -1.0468734   -1.1677677   -0.9259791
24 months   COHORTS          GUATEMALA                      0                    NA                -2.9775302   -3.0493968   -2.9056636
24 months   COHORTS          GUATEMALA                      1                    NA                -3.3581827   -3.6796061   -3.0367592
24 months   COHORTS          INDIA                          0                    NA                -2.2134909   -2.2535699   -2.1734120
24 months   COHORTS          INDIA                          1                    NA                -2.0688889   -2.1675727   -1.9702051
24 months   COHORTS          PHILIPPINES                    0                    NA                -2.4251661   -2.4857203   -2.3646119
24 months   COHORTS          PHILIPPINES                    1                    NA                -1.5628910   -1.6033239   -1.5224581
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.7815365   -1.8179487   -1.7451244
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.4650000   -1.4755957   -1.4544043
24 months   MAL-ED           BRAZIL                         0                    NA                 0.0232621   -0.1554894    0.2020136
24 months   MAL-ED           BRAZIL                         1                    NA                -0.0619483   -0.5657353    0.4418387
24 months   MAL-ED           PERU                           0                    NA                -1.7291771   -1.8566512   -1.6017029
24 months   MAL-ED           PERU                           1                    NA                -1.9581248   -2.3193396   -1.5969099
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -1.5758725   -1.8110576   -1.3406873
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                -1.8280792   -2.0212884   -1.6348700
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6336298   -2.7712599   -2.4959997
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -3.0591667   -3.6621048   -2.4562285
24 months   PROBIT           BELARUS                        0                    NA                -0.1421964   -0.4319889    0.1475962
24 months   PROBIT           BELARUS                        1                    NA                -0.0016766   -0.2522894    0.2489363
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -1.5873151   -1.6452467   -1.5293835
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.8331055   -2.0979355   -1.5682754


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
Birth       COHORTS          GUATEMALA                      1                    0                 -0.7179326   -1.1504118   -0.2854534
Birth       COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          1                    0                  0.2535282    0.1897264    0.3173300
Birth       COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    1                    0                 -0.5921021   -0.6448208   -0.5393833
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                  0.7168721    0.6584462    0.7752980
Birth       MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         1                    0                 -1.0779167   -1.8824654   -0.2733679
Birth       MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    0                 -0.2077462   -0.6387467    0.2232543
Birth       MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    0                 -0.1311619   -0.5247968    0.2624730
Birth       PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        1                    0                 -0.3414335   -0.4901171   -0.1927499
Birth       ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                 -0.0670946   -0.1663690    0.0321799
6 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      1                    0                 -0.5243205   -0.9559954   -0.0926456
6 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    0                  0.2590145    0.1803003    0.3377287
6 months    COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    1                    0                  0.2779164    0.2135610    0.3422717
6 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 -0.4178592   -0.7643487   -0.0713696
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                  0.1450112    0.1006544    0.1893679
6 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         1                    0                 -0.2361723   -0.7269810    0.2546364
6 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    0                 -0.1561333   -0.5371668    0.2249002
6 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    0                 -0.2424432   -0.5247989    0.0399126
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1888293   -0.6103990    0.2327403
6 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        1                    0                  0.0587412   -0.0347422    0.1522246
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.3148141    0.1528029    0.4768253
6 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.1894516   -0.3128093   -0.0660939
24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      1                    0                 -0.3806525   -0.7095121   -0.0517929
24 months   COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    0                  0.1446020    0.0380900    0.2511141
24 months   COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    1                    0                  0.8622751    0.7894619    0.9350884
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                  0.3165365    0.2791622    0.3539109
24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         1                    0                 -0.0852104   -0.6193057    0.4488849
24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           1                    0                 -0.2289477   -0.6117386    0.1538432
24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.2522067   -0.5564899    0.0520764
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.4255369   -1.0439837    0.1929099
24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        1                    0                  0.1405198   -0.2230898    0.5041295
24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.2457904   -0.5165927    0.0250120


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      0                    NA                -0.0323785   -0.0574937   -0.0072632
Birth       COHORTS          INDIA                          0                    NA                 0.0003714   -0.0012471    0.0019900
Birth       COHORTS          PHILIPPINES                    0                    NA                 0.0056142   -0.0107430    0.0219714
Birth       JiVitA-4         BANGLADESH                     0                    NA                 0.0012715   -0.0004361    0.0029791
Birth       MAL-ED           BRAZIL                         0                    NA                -0.1326667   -0.2643188   -0.0010145
Birth       MAL-ED           PERU                           0                    NA                -0.0185961   -0.0626669    0.0254747
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.0679196   -0.2653223    0.1294831
Birth       PROBIT           BELARUS                        0                    NA                -0.0024694   -0.0163668    0.0114279
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.0033452   -0.0091075    0.0024171
6 months    COHORTS          GUATEMALA                      0                    NA                -0.0173151   -0.0434034    0.0087733
6 months    COHORTS          INDIA                          0                    NA                 0.0004689   -0.0015226    0.0024605
6 months    COHORTS          PHILIPPINES                    0                    NA                 0.0106680   -0.0192755    0.0406115
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0437757   -0.0839390   -0.0036125
6 months    JiVitA-4         BANGLADESH                     0                    NA                 0.0002406   -0.0008896    0.0013707
6 months    MAL-ED           BRAZIL                         0                    NA                -0.0141037   -0.0831620    0.0549547
6 months    MAL-ED           PERU                           0                    NA                -0.0146389   -0.0587064    0.0294286
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.1355028   -0.3061864    0.0351807
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0061159   -0.0203947    0.0081629
6 months    PROBIT           BELARUS                        0                    NA                 0.0032232   -0.0126363    0.0190827
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0089298   -0.0332949    0.0154354
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0103700   -0.0172300   -0.0035099
24 months   COHORTS          GUATEMALA                      0                    NA                -0.0185292   -0.0459581    0.0088996
24 months   COHORTS          INDIA                          0                    NA                 0.0003468   -0.0023256    0.0030192
24 months   COHORTS          PHILIPPINES                    0                    NA                 0.0044045   -0.0332097    0.0420187
24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0004003   -0.0005837    0.0013844
24 months   MAL-ED           BRAZIL                         0                    NA                -0.0171477   -0.0883360    0.0540406
24 months   MAL-ED           PERU                           0                    NA                -0.0232939   -0.0766941    0.0301064
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0691870   -0.2645181    0.1261441
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0119309   -0.0316708    0.0078089
24 months   PROBIT           BELARUS                        0                    NA                -0.0020927   -0.0191296    0.0149441
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0161394   -0.0331385    0.0008597

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

agecat      studyid          country                        single    n_cell       n
----------  ---------------  -----------------------------  -------  -------  ------
Birth       COHORTS          GUATEMALA                      0            719     767
Birth       COHORTS          GUATEMALA                      1             48     767
Birth       COHORTS          INDIA                          0           4771    4778
Birth       COHORTS          INDIA                          1              7    4778
Birth       COHORTS          PHILIPPINES                    0           2936    3010
Birth       COHORTS          PHILIPPINES                    1             74    3010
Birth       JiVitA-4         BANGLADESH                     0           2814    2819
Birth       JiVitA-4         BANGLADESH                     1              5    2819
Birth       MAL-ED           BANGLADESH                     0            231     231
Birth       MAL-ED           BANGLADESH                     1              0     231
Birth       MAL-ED           BRAZIL                         0             57      65
Birth       MAL-ED           BRAZIL                         1              8      65
Birth       MAL-ED           INDIA                          0             47      47
Birth       MAL-ED           INDIA                          1              0      47
Birth       MAL-ED           NEPAL                          0             27      27
Birth       MAL-ED           NEPAL                          1              0      27
Birth       MAL-ED           PERU                           0            209     233
Birth       MAL-ED           PERU                           1             24     233
Birth       MAL-ED           SOUTH AFRICA                   0             63     123
Birth       MAL-ED           SOUTH AFRICA                   1             60     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            122     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              3     125
Birth       PROBIT           BELARUS                        0          13351   13893
Birth       PROBIT           BELARUS                        1            542   13893
Birth       ZVITAMBO         ZIMBABWE                       0          12942   13817
Birth       ZVITAMBO         ZIMBABWE                       1            875   13817
6 months    COHORTS          GUATEMALA                      0            826     893
6 months    COHORTS          GUATEMALA                      1             67     893
6 months    COHORTS          INDIA                          0           4962    4971
6 months    COHORTS          INDIA                          1              9    4971
6 months    COHORTS          PHILIPPINES                    0           2608    2676
6 months    COHORTS          PHILIPPINES                    1             68    2676
6 months    Guatemala BSC    GUATEMALA                      0            248     277
6 months    Guatemala BSC    GUATEMALA                      1             29     277
6 months    JiVitA-4         BANGLADESH                     0           4814    4822
6 months    JiVitA-4         BANGLADESH                     1              8    4822
6 months    MAL-ED           BANGLADESH                     0            241     241
6 months    MAL-ED           BANGLADESH                     1              0     241
6 months    MAL-ED           BRAZIL                         0            179     209
6 months    MAL-ED           BRAZIL                         1             30     209
6 months    MAL-ED           INDIA                          0            234     234
6 months    MAL-ED           INDIA                          1              0     234
6 months    MAL-ED           NEPAL                          0            236     236
6 months    MAL-ED           NEPAL                          1              0     236
6 months    MAL-ED           PERU                           0            240     273
6 months    MAL-ED           PERU                           1             33     273
6 months    MAL-ED           SOUTH AFRICA                   0            140     254
6 months    MAL-ED           SOUTH AFRICA                   1            114     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            239     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              8     247
6 months    PROBIT           BELARUS                        0          15117   15760
6 months    PROBIT           BELARUS                        1            643   15760
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1835    2013
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            178    2013
6 months    ZVITAMBO         ZIMBABWE                       0           8125    8638
6 months    ZVITAMBO         ZIMBABWE                       1            513    8638
24 months   COHORTS          GUATEMALA                      0            923    1010
24 months   COHORTS          GUATEMALA                      1             87    1010
24 months   COHORTS          INDIA                          0           3744    3753
24 months   COHORTS          INDIA                          1              9    3753
24 months   COHORTS          PHILIPPINES                    0           2357    2416
24 months   COHORTS          PHILIPPINES                    1             59    2416
24 months   JiVitA-4         BANGLADESH                     0           4738    4744
24 months   JiVitA-4         BANGLADESH                     1              6    4744
24 months   MAL-ED           BANGLADESH                     0            212     212
24 months   MAL-ED           BANGLADESH                     1              0     212
24 months   MAL-ED           BRAZIL                         0            148     169
24 months   MAL-ED           BRAZIL                         1             21     169
24 months   MAL-ED           INDIA                          0            225     225
24 months   MAL-ED           INDIA                          1              0     225
24 months   MAL-ED           NEPAL                          0            228     228
24 months   MAL-ED           NEPAL                          1              0     228
24 months   MAL-ED           PERU                           0            176     201
24 months   MAL-ED           PERU                           1             25     201
24 months   MAL-ED           SOUTH AFRICA                   0            131     238
24 months   MAL-ED           SOUTH AFRICA                   1            107     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            208     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6     214
24 months   PROBIT           BELARUS                        0           3890    4035
24 months   PROBIT           BELARUS                        1            145    4035
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0       6
24 months   ZVITAMBO         ZIMBABWE                       0           1533    1637
24 months   ZVITAMBO         ZIMBABWE                       1            104    1637


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
![](/tmp/7f9ac337-f9af-4efe-8fb3-f8cea5935a2e/026137d9-6f26-4008-b013-c741a83479cc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7f9ac337-f9af-4efe-8fb3-f8cea5935a2e/026137d9-6f26-4008-b013-c741a83479cc/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7f9ac337-f9af-4efe-8fb3-f8cea5935a2e/026137d9-6f26-4008-b013-c741a83479cc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      0                    NA                 0.1853430    0.0958461    0.2748400
Birth       COHORTS          GUATEMALA                      1                    NA                -0.4197002   -0.8727284    0.0333279
Birth       COHORTS          INDIA                          0                    NA                -0.6778139   -0.7115208   -0.6441070
Birth       COHORTS          INDIA                          1                    NA                -0.4242857   -0.4784569   -0.3701145
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.2536295   -0.2992455   -0.2080135
Birth       COHORTS          PHILIPPINES                    1                    NA                -1.0668644   -1.0915688   -1.0421600
Birth       JiVitA-4         BANGLADESH                     0                    NA                -1.5248721   -1.5752417   -1.4745025
Birth       JiVitA-4         BANGLADESH                     1                    NA                -0.8080000   -0.8384743   -0.7775257
Birth       MAL-ED           BRAZIL                         0                    NA                -0.5433333   -0.8229128   -0.2637539
Birth       MAL-ED           BRAZIL                         1                    NA                -1.6212500   -2.3756597   -0.8668403
Birth       MAL-ED           PERU                           0                    NA                -0.8644773   -0.9854757   -0.7434788
Birth       MAL-ED           PERU                           1                    NA                -1.0475091   -1.4951173   -0.5999009
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.5839387   -0.7969125   -0.3709649
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                -0.7251714   -1.0524975   -0.3978452
Birth       PROBIT           BELARUS                        0                    NA                 1.3130936    1.1467522    1.4794351
Birth       PROBIT           BELARUS                        1                    NA                 0.9765383    0.8883707    1.0647060
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.4973134   -0.5185319   -0.4760950
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.5845758   -0.6797815   -0.4893701
6 months    COHORTS          GUATEMALA                      0                    NA                -1.7844599   -1.8572513   -1.7116685
6 months    COHORTS          GUATEMALA                      1                    NA                -2.4492198   -2.8822483   -2.0161914
6 months    COHORTS          INDIA                          0                    NA                -1.0423478   -1.0757913   -1.0089044
6 months    COHORTS          INDIA                          1                    NA                -0.7833333   -0.8545896   -0.7120771
6 months    COHORTS          PHILIPPINES                    0                    NA                -1.1507568   -1.2028734   -1.0986402
6 months    COHORTS          PHILIPPINES                    1                    NA                -1.1749513   -1.2168007   -1.1331018
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -1.5188991   -1.6412772   -1.3965210
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -1.9276938   -2.2597626   -1.5956251
6 months    JiVitA-4         BANGLADESH                     0                    NA                -1.3443862   -1.3825869   -1.3061854
6 months    JiVitA-4         BANGLADESH                     1                    NA                -1.1993750   -1.2225095   -1.1762405
6 months    MAL-ED           BRAZIL                         0                    NA                 0.0579299   -0.0924244    0.2082843
6 months    MAL-ED           BRAZIL                         1                    NA                -0.2320855   -0.6969147    0.2327437
6 months    MAL-ED           PERU                           0                    NA                -1.3119676   -1.4249870   -1.1989482
6 months    MAL-ED           PERU                           1                    NA                -1.3960455   -1.7534591   -1.0386319
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.9406429   -1.1322026   -0.7490832
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                -1.2451661   -1.4407129   -1.0496194
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3626290   -1.4879351   -1.2373229
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.5514583   -1.9539746   -1.1489420
6 months    PROBIT           BELARUS                        0                    NA                 0.0936247   -0.0029695    0.1902189
6 months    PROBIT           BELARUS                        1                    NA                 0.1647740    0.0719673    0.2575808
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5418876   -0.5966957   -0.4870796
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1479735   -0.3050406    0.0090936
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.8574621   -0.8838150   -0.8311092
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -1.0486304   -1.1684849   -0.9287759
24 months   COHORTS          GUATEMALA                      0                    NA                -2.9715184   -3.0422199   -2.9008168
24 months   COHORTS          GUATEMALA                      1                    NA                -3.3304293   -3.6342523   -3.0266063
24 months   COHORTS          INDIA                          0                    NA                -2.2134909   -2.2535699   -2.1734120
24 months   COHORTS          INDIA                          1                    NA                -2.0688889   -2.1675727   -1.9702051
24 months   COHORTS          PHILIPPINES                    0                    NA                -2.4249523   -2.4816399   -2.3682648
24 months   COHORTS          PHILIPPINES                    1                    NA                -1.4290833   -1.4856210   -1.3725457
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.7815365   -1.8179487   -1.7451244
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.4650000   -1.4755957   -1.4544043
24 months   MAL-ED           BRAZIL                         0                    NA                 0.0262491   -0.1523403    0.2048385
24 months   MAL-ED           BRAZIL                         1                    NA                -0.0028320   -0.4391944    0.4335303
24 months   MAL-ED           PERU                           0                    NA                -1.7244689   -1.8508903   -1.5980474
24 months   MAL-ED           PERU                           1                    NA                -1.9059144   -2.3516010   -1.4602278
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -1.5724055   -1.8042286   -1.3405823
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                -1.7939495   -1.9966606   -1.5912384
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6336298   -2.7712599   -2.4959997
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -3.0591667   -3.6621048   -2.4562285
24 months   PROBIT           BELARUS                        0                    NA                -0.1477653   -0.4392656    0.1437349
24 months   PROBIT           BELARUS                        1                    NA                 0.0319639   -0.2321856    0.2961134
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -1.5876429   -1.6455434   -1.5297424
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.8247236   -2.1022786   -1.5471686


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
Birth       COHORTS          GUATEMALA                      1                    0                 -0.6050432   -1.0669078   -0.1431787
Birth       COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          1                    0                  0.2535282    0.1897264    0.3173300
Birth       COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    1                    0                 -0.8132349   -0.8641693   -0.7623005
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                  0.7168721    0.6584462    0.7752980
Birth       MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         1                    0                 -1.0779167   -1.8824654   -0.2733679
Birth       MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    0                 -0.1830318   -0.6457475    0.2796838
Birth       MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    0                 -0.1412327   -0.5331700    0.2507046
Birth       PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        1                    0                 -0.3365553   -0.4907341   -0.1823764
Birth       ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                 -0.0872624   -0.1847892    0.0102644
6 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      1                    0                 -0.6647599   -1.1041933   -0.2253266
6 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    0                  0.2590145    0.1803003    0.3377287
6 months    COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    1                    0                 -0.0241945   -0.0888667    0.0404778
6 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 -0.4087948   -0.7629245   -0.0546650
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                  0.1450112    0.1006544    0.1893679
6 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         1                    0                 -0.2900154   -0.7794715    0.1994407
6 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    0                 -0.0840779   -0.4587590    0.2906032
6 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    0                 -0.3045232   -0.5782895   -0.0307569
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1888293   -0.6103990    0.2327403
6 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        1                    0                  0.0711493   -0.0211082    0.1634068
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.3939141    0.2282171    0.5596111
6 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.1911683   -0.3135245   -0.0688121
24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      1                    0                 -0.3589110   -0.6705874   -0.0472345
24 months   COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    0                  0.1446020    0.0380900    0.2511141
24 months   COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    1                    0                  0.9958690    0.9157937    1.0759443
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                  0.3165365    0.2791622    0.3539109
24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         1                    0                 -0.0290811   -0.4971843    0.4390221
24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           1                    0                 -0.1814456   -0.6438917    0.2810006
24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.2215440   -0.5292985    0.0862105
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.4255369   -1.0439837    0.1929099
24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        1                    0                  0.1797292   -0.2053148    0.5647732
24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.2370807   -0.5200858    0.0459244


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      0                    NA                -0.0342218   -0.0592816   -0.0091619
Birth       COHORTS          INDIA                          0                    NA                 0.0003714   -0.0012471    0.0019900
Birth       COHORTS          PHILIPPINES                    0                    NA                 0.0070747   -0.0145860    0.0287353
Birth       JiVitA-4         BANGLADESH                     0                    NA                 0.0012715   -0.0004361    0.0029791
Birth       MAL-ED           BRAZIL                         0                    NA                -0.1326667   -0.2643188   -0.0010145
Birth       MAL-ED           PERU                           0                    NA                -0.0183124   -0.0635022    0.0268773
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.0477686   -0.2386139    0.1430766
Birth       PROBIT           BELARUS                        0                    NA                -0.0016519   -0.0179902    0.0146865
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.0034704   -0.0091770    0.0022363
6 months    COHORTS          GUATEMALA                      0                    NA                -0.0244875   -0.0487501   -0.0002249
6 months    COHORTS          INDIA                          0                    NA                 0.0004689   -0.0015226    0.0024605
6 months    COHORTS          PHILIPPINES                    0                    NA                 0.0093143   -0.0189932    0.0376219
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0435377   -0.0837325   -0.0033430
6 months    JiVitA-4         BANGLADESH                     0                    NA                 0.0002406   -0.0008896    0.0013707
6 months    MAL-ED           BRAZIL                         0                    NA                -0.0103542   -0.0802785    0.0595702
6 months    MAL-ED           PERU                           0                    NA                -0.0116985   -0.0559352    0.0325383
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.1226773   -0.2844401    0.0390854
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0061159   -0.0203947    0.0081629
6 months    PROBIT           BELARUS                        0                    NA                 0.0043827   -0.0133426    0.0221080
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0038844   -0.0259918    0.0182229
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0103296   -0.0172164   -0.0034429
24 months   COHORTS          GUATEMALA                      0                    NA                -0.0245410   -0.0495943    0.0005122
24 months   COHORTS          INDIA                          0                    NA                 0.0003468   -0.0023256    0.0030192
24 months   COHORTS          PHILIPPINES                    0                    NA                 0.0041907   -0.0270881    0.0354695
24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0004003   -0.0005837    0.0013844
24 months   MAL-ED           BRAZIL                         0                    NA                -0.0201347   -0.0887241    0.0484548
24 months   MAL-ED           PERU                           0                    NA                -0.0280021   -0.0793115    0.0233072
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0726540   -0.2638692    0.1185611
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0119309   -0.0316708    0.0078089
24 months   PROBIT           BELARUS                        0                    NA                 0.0034762   -0.0139636    0.0209160
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0158116   -0.0327863    0.0011632

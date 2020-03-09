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

**Outcome Variable:** stunted

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

agecat      studyid          country                        single    stunted   n_cell       n
----------  ---------------  -----------------------------  -------  --------  -------  ------
Birth       COHORTS          GUATEMALA                      0               0      679     767
Birth       COHORTS          GUATEMALA                      0               1       40     767
Birth       COHORTS          GUATEMALA                      1               0       43     767
Birth       COHORTS          GUATEMALA                      1               1        5     767
Birth       COHORTS          INDIA                          0               0     4206    4778
Birth       COHORTS          INDIA                          0               1      565    4778
Birth       COHORTS          INDIA                          1               0        7    4778
Birth       COHORTS          INDIA                          1               1        0    4778
Birth       COHORTS          PHILIPPINES                    0               0     2760    3010
Birth       COHORTS          PHILIPPINES                    0               1      176    3010
Birth       COHORTS          PHILIPPINES                    1               0       68    3010
Birth       COHORTS          PHILIPPINES                    1               1        6    3010
Birth       JiVitA-4         BANGLADESH                     0               0     1959    2819
Birth       JiVitA-4         BANGLADESH                     0               1      855    2819
Birth       JiVitA-4         BANGLADESH                     1               0        4    2819
Birth       JiVitA-4         BANGLADESH                     1               1        1    2819
Birth       MAL-ED           BANGLADESH                     0               0      187     231
Birth       MAL-ED           BANGLADESH                     0               1       44     231
Birth       MAL-ED           BANGLADESH                     1               0        0     231
Birth       MAL-ED           BANGLADESH                     1               1        0     231
Birth       MAL-ED           BRAZIL                         0               0       51      65
Birth       MAL-ED           BRAZIL                         0               1        6      65
Birth       MAL-ED           BRAZIL                         1               0        5      65
Birth       MAL-ED           BRAZIL                         1               1        3      65
Birth       MAL-ED           INDIA                          0               0       37      47
Birth       MAL-ED           INDIA                          0               1       10      47
Birth       MAL-ED           INDIA                          1               0        0      47
Birth       MAL-ED           INDIA                          1               1        0      47
Birth       MAL-ED           NEPAL                          0               0       25      27
Birth       MAL-ED           NEPAL                          0               1        2      27
Birth       MAL-ED           NEPAL                          1               0        0      27
Birth       MAL-ED           NEPAL                          1               1        0      27
Birth       MAL-ED           PERU                           0               0      187     233
Birth       MAL-ED           PERU                           0               1       22     233
Birth       MAL-ED           PERU                           1               0       20     233
Birth       MAL-ED           PERU                           1               1        4     233
Birth       MAL-ED           SOUTH AFRICA                   0               0       60     123
Birth       MAL-ED           SOUTH AFRICA                   0               1        3     123
Birth       MAL-ED           SOUTH AFRICA                   1               0       53     123
Birth       MAL-ED           SOUTH AFRICA                   1               1        7     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0       99     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1       23     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        3     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        0     125
Birth       PROBIT           BELARUS                        0               0    13319   13893
Birth       PROBIT           BELARUS                        0               1       32   13893
Birth       PROBIT           BELARUS                        1               0      540   13893
Birth       PROBIT           BELARUS                        1               1        2   13893
Birth       ZVITAMBO         ZIMBABWE                       0               0    11620   13817
Birth       ZVITAMBO         ZIMBABWE                       0               1     1322   13817
Birth       ZVITAMBO         ZIMBABWE                       1               0      768   13817
Birth       ZVITAMBO         ZIMBABWE                       1               1      107   13817
6 months    COHORTS          GUATEMALA                      0               0      499     893
6 months    COHORTS          GUATEMALA                      0               1      327     893
6 months    COHORTS          GUATEMALA                      1               0       30     893
6 months    COHORTS          GUATEMALA                      1               1       37     893
6 months    COHORTS          INDIA                          0               0     3991    4971
6 months    COHORTS          INDIA                          0               1      971    4971
6 months    COHORTS          INDIA                          1               0        7    4971
6 months    COHORTS          INDIA                          1               1        2    4971
6 months    COHORTS          PHILIPPINES                    0               0     2055    2676
6 months    COHORTS          PHILIPPINES                    0               1      553    2676
6 months    COHORTS          PHILIPPINES                    1               0       54    2676
6 months    COHORTS          PHILIPPINES                    1               1       14    2676
6 months    Guatemala BSC    GUATEMALA                      0               0      173     277
6 months    Guatemala BSC    GUATEMALA                      0               1       75     277
6 months    Guatemala BSC    GUATEMALA                      1               0       18     277
6 months    Guatemala BSC    GUATEMALA                      1               1       11     277
6 months    JiVitA-4         BANGLADESH                     0               0     3598    4822
6 months    JiVitA-4         BANGLADESH                     0               1     1216    4822
6 months    JiVitA-4         BANGLADESH                     1               0        7    4822
6 months    JiVitA-4         BANGLADESH                     1               1        1    4822
6 months    MAL-ED           BANGLADESH                     0               0      197     241
6 months    MAL-ED           BANGLADESH                     0               1       44     241
6 months    MAL-ED           BANGLADESH                     1               0        0     241
6 months    MAL-ED           BANGLADESH                     1               1        0     241
6 months    MAL-ED           BRAZIL                         0               0      175     209
6 months    MAL-ED           BRAZIL                         0               1        4     209
6 months    MAL-ED           BRAZIL                         1               0       28     209
6 months    MAL-ED           BRAZIL                         1               1        2     209
6 months    MAL-ED           INDIA                          0               0      191     234
6 months    MAL-ED           INDIA                          0               1       43     234
6 months    MAL-ED           INDIA                          1               0        0     234
6 months    MAL-ED           INDIA                          1               1        0     234
6 months    MAL-ED           NEPAL                          0               0      224     236
6 months    MAL-ED           NEPAL                          0               1       12     236
6 months    MAL-ED           NEPAL                          1               0        0     236
6 months    MAL-ED           NEPAL                          1               1        0     236
6 months    MAL-ED           PERU                           0               0      192     273
6 months    MAL-ED           PERU                           0               1       48     273
6 months    MAL-ED           PERU                           1               0       21     273
6 months    MAL-ED           PERU                           1               1       12     273
6 months    MAL-ED           SOUTH AFRICA                   0               0      121     254
6 months    MAL-ED           SOUTH AFRICA                   0               1       19     254
6 months    MAL-ED           SOUTH AFRICA                   1               0       83     254
6 months    MAL-ED           SOUTH AFRICA                   1               1       31     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0      182     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1       57     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        6     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        2     247
6 months    PROBIT           BELARUS                        0               0    14538   15760
6 months    PROBIT           BELARUS                        0               1      579   15760
6 months    PROBIT           BELARUS                        1               0      602   15760
6 months    PROBIT           BELARUS                        1               1       41   15760
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1654    2013
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      181    2013
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      164    2013
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       14    2013
6 months    ZVITAMBO         ZIMBABWE                       0               0     6820    8638
6 months    ZVITAMBO         ZIMBABWE                       0               1     1305    8638
6 months    ZVITAMBO         ZIMBABWE                       1               0      411    8638
6 months    ZVITAMBO         ZIMBABWE                       1               1      102    8638
24 months   COHORTS          GUATEMALA                      0               0      177    1010
24 months   COHORTS          GUATEMALA                      0               1      746    1010
24 months   COHORTS          GUATEMALA                      1               0       10    1010
24 months   COHORTS          GUATEMALA                      1               1       77    1010
24 months   COHORTS          INDIA                          0               0     1622    3753
24 months   COHORTS          INDIA                          0               1     2122    3753
24 months   COHORTS          INDIA                          1               0        3    3753
24 months   COHORTS          INDIA                          1               1        6    3753
24 months   COHORTS          PHILIPPINES                    0               0      880    2416
24 months   COHORTS          PHILIPPINES                    0               1     1477    2416
24 months   COHORTS          PHILIPPINES                    1               0       24    2416
24 months   COHORTS          PHILIPPINES                    1               1       35    2416
24 months   JiVitA-4         BANGLADESH                     0               0     2836    4744
24 months   JiVitA-4         BANGLADESH                     0               1     1902    4744
24 months   JiVitA-4         BANGLADESH                     1               0        5    4744
24 months   JiVitA-4         BANGLADESH                     1               1        1    4744
24 months   MAL-ED           BANGLADESH                     0               0      111     212
24 months   MAL-ED           BANGLADESH                     0               1      101     212
24 months   MAL-ED           BANGLADESH                     1               0        0     212
24 months   MAL-ED           BANGLADESH                     1               1        0     212
24 months   MAL-ED           BRAZIL                         0               0      144     169
24 months   MAL-ED           BRAZIL                         0               1        4     169
24 months   MAL-ED           BRAZIL                         1               0       18     169
24 months   MAL-ED           BRAZIL                         1               1        3     169
24 months   MAL-ED           INDIA                          0               0      129     225
24 months   MAL-ED           INDIA                          0               1       96     225
24 months   MAL-ED           INDIA                          1               0        0     225
24 months   MAL-ED           INDIA                          1               1        0     225
24 months   MAL-ED           NEPAL                          0               0      178     228
24 months   MAL-ED           NEPAL                          0               1       50     228
24 months   MAL-ED           NEPAL                          1               0        0     228
24 months   MAL-ED           NEPAL                          1               1        0     228
24 months   MAL-ED           PERU                           0               0      111     201
24 months   MAL-ED           PERU                           0               1       65     201
24 months   MAL-ED           PERU                           1               0       16     201
24 months   MAL-ED           PERU                           1               1        9     201
24 months   MAL-ED           SOUTH AFRICA                   0               0       85     238
24 months   MAL-ED           SOUTH AFRICA                   0               1       46     238
24 months   MAL-ED           SOUTH AFRICA                   1               0       69     238
24 months   MAL-ED           SOUTH AFRICA                   1               1       38     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0       59     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1      149     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        6     214
24 months   PROBIT           BELARUS                        0               0     3628    4035
24 months   PROBIT           BELARUS                        0               1      262    4035
24 months   PROBIT           BELARUS                        1               0      132    4035
24 months   PROBIT           BELARUS                        1               1       13    4035
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ZVITAMBO         ZIMBABWE                       0               0     1014    1637
24 months   ZVITAMBO         ZIMBABWE                       0               1      519    1637
24 months   ZVITAMBO         ZIMBABWE                       1               0       56    1637
24 months   ZVITAMBO         ZIMBABWE                       1               1       48    1637


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

* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/25c69cb4-5da9-4caf-972c-4f5b2d7ef7af/c753da9c-7688-46ac-90e6-7c9a8978b224/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/25c69cb4-5da9-4caf-972c-4f5b2d7ef7af/c753da9c-7688-46ac-90e6-7c9a8978b224/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/25c69cb4-5da9-4caf-972c-4f5b2d7ef7af/c753da9c-7688-46ac-90e6-7c9a8978b224/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/25c69cb4-5da9-4caf-972c-4f5b2d7ef7af/c753da9c-7688-46ac-90e6-7c9a8978b224/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      0                    NA                0.0556328   0.0388678   0.0723978
Birth       COHORTS          GUATEMALA                      1                    NA                0.1041667   0.0176920   0.1906413
Birth       COHORTS          PHILIPPINES                    0                    NA                0.0599455   0.0513537   0.0685373
Birth       COHORTS          PHILIPPINES                    1                    NA                0.0810811   0.0199126   0.1422496
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                0.1023156   0.0970903   0.1075410
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                0.1200775   0.0978192   0.1423357
6 months    COHORTS          GUATEMALA                      0                    NA                0.3976130   0.3642567   0.4309693
6 months    COHORTS          GUATEMALA                      1                    NA                0.5569960   0.4366287   0.6773634
6 months    COHORTS          PHILIPPINES                    0                    NA                0.2125055   0.1967638   0.2282471
6 months    COHORTS          PHILIPPINES                    1                    NA                0.1888374   0.1036313   0.2740435
6 months    Guatemala BSC    GUATEMALA                      0                    NA                0.3042123   0.2466651   0.3617594
6 months    Guatemala BSC    GUATEMALA                      1                    NA                0.4078880   0.2207969   0.5949791
6 months    MAL-ED           PERU                           0                    NA                0.2022625   0.1514109   0.2531141
6 months    MAL-ED           PERU                           1                    NA                0.3252314   0.1509820   0.4994807
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                0.1358163   0.0740104   0.1976222
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                0.2145097   0.1505284   0.2784910
6 months    PROBIT           BELARUS                        0                    NA                0.0384096   0.0281948   0.0486244
6 months    PROBIT           BELARUS                        1                    NA                0.0445407   0.0272234   0.0618580
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0987126   0.0850670   0.1123582
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0805058   0.0412282   0.1197834
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.1611508   0.1531316   0.1691701
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.1987353   0.1620753   0.2353954
24 months   COHORTS          GUATEMALA                      0                    NA                0.8094937   0.7841904   0.8347970
24 months   COHORTS          GUATEMALA                      1                    NA                0.8638303   0.7695882   0.9580724
24 months   COHORTS          PHILIPPINES                    0                    NA                0.6264249   0.6068024   0.6460473
24 months   COHORTS          PHILIPPINES                    1                    NA                0.5900391   0.4868464   0.6932318
24 months   MAL-ED           PERU                           0                    NA                0.3693182   0.2978389   0.4407975
24 months   MAL-ED           PERU                           1                    NA                0.3600000   0.1713737   0.5486263
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.3483597   0.2651575   0.4315620
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.3457459   0.2547402   0.4367516
24 months   PROBIT           BELARUS                        0                    NA                0.0676692   0.0405742   0.0947642
24 months   PROBIT           BELARUS                        1                    NA                0.0922625   0.0518778   0.1326471
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.3381609   0.3145084   0.3618133
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.4696603   0.3707167   0.5686039


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      NA                   NA                0.0586701   0.0420278   0.0753124
Birth       COHORTS          PHILIPPINES                    NA                   NA                0.0604651   0.0519489   0.0689813
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.1034233   0.0983457   0.1085009
6 months    COHORTS          GUATEMALA                      NA                   NA                0.4076148   0.3753675   0.4398620
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2118834   0.1963977   0.2273691
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                0.3104693   0.2558835   0.3650551
6 months    MAL-ED           PERU                           NA                   NA                0.2197802   0.1705687   0.2689917
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.1968504   0.1478551   0.2458457
6 months    PROBIT           BELARUS                        NA                   NA                0.0393401   0.0293640   0.0493162
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0968703   0.0839461   0.1097946
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1628849   0.1550974   0.1706725
24 months   COHORTS          GUATEMALA                      NA                   NA                0.8148515   0.7908851   0.8388178
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6258278   0.6065280   0.6451276
24 months   MAL-ED           PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   PROBIT           BELARUS                        NA                   NA                0.0681537   0.0420376   0.0942697
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.3463653   0.3233089   0.3694217


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
Birth       COHORTS          GUATEMALA                      1                    0                 1.8723958   0.7741873   4.528447
Birth       COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
Birth       COHORTS          PHILIPPINES                    1                    0                 1.3525799   0.6275750   2.915145
Birth       ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                 1.1735983   0.9683524   1.422347
6 months    COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6 months    COHORTS          GUATEMALA                      1                    0                 1.4008497   1.1127319   1.763569
6 months    COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6 months    COHORTS          PHILIPPINES                    1                    0                 0.8886237   0.5627716   1.403148
6 months    Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 1.3408007   0.8152249   2.205215
6 months    MAL-ED           PERU                           0                    0                 1.0000000   1.0000000   1.000000
6 months    MAL-ED           PERU                           1                    0                 1.6079667   0.8917622   2.899379
6 months    MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
6 months    MAL-ED           SOUTH AFRICA                   1                    0                 1.5794103   0.9167273   2.721133
6 months    PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6 months    PROBIT           BELARUS                        1                    0                 1.1596245   0.7617975   1.765205
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8155574   0.4913993   1.353551
6 months    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 1.2332255   1.0191495   1.492269
24 months   COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
24 months   COHORTS          GUATEMALA                      1                    0                 1.0671242   0.9525937   1.195425
24 months   COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
24 months   COHORTS          PHILIPPINES                    1                    0                 0.9419152   0.7890194   1.124439
24 months   MAL-ED           PERU                           0                    0                 1.0000000   1.0000000   1.000000
24 months   MAL-ED           PERU                           1                    0                 0.9747692   0.5575963   1.704056
24 months   MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
24 months   MAL-ED           SOUTH AFRICA                   1                    0                 0.9924968   0.6958446   1.415617
24 months   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
24 months   PROBIT           BELARUS                        1                    0                 1.3634333   0.7672919   2.422742
24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.3888665   1.1129103   1.733249


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      0                    NA                 0.0030373   -0.0025377   0.0086123
Birth       COHORTS          PHILIPPINES                    0                    NA                 0.0005196   -0.0010290   0.0020683
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                 0.0011077   -0.0003140   0.0025294
6 months    COHORTS          GUATEMALA                      0                    NA                 0.0100018    0.0008071   0.0191965
6 months    COHORTS          PHILIPPINES                    0                    NA                -0.0006221   -0.0030942   0.0018501
6 months    Guatemala BSC    GUATEMALA                      0                    NA                 0.0062570   -0.0137504   0.0262645
6 months    MAL-ED           PERU                           0                    NA                 0.0175177   -0.0035053   0.0385407
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.0610340    0.0096409   0.1124272
6 months    PROBIT           BELARUS                        0                    NA                 0.0009305   -0.0000605   0.0019216
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0018423   -0.0055186   0.0018341
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0017341   -0.0004136   0.0038817
24 months   COHORTS          GUATEMALA                      0                    NA                 0.0053578   -0.0011549   0.0118705
24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0005971   -0.0035496   0.0023555
24 months   MAL-ED           PERU                           0                    NA                -0.0011590   -0.0262516   0.0239336
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0045814   -0.0522119   0.0613748
24 months   PROBIT           BELARUS                        0                    NA                 0.0004845   -0.0014813   0.0024502
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0082044    0.0018488   0.0145601


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      0                    NA                 0.0517694   -0.0470659   0.1412754
Birth       COHORTS          PHILIPPINES                    0                    NA                 0.0085936   -0.0173296   0.0338562
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                 0.0107103   -0.0031240   0.0243537
6 months    COHORTS          GUATEMALA                      0                    NA                 0.0245374    0.0016712   0.0468798
6 months    COHORTS          PHILIPPINES                    0                    NA                -0.0029358   -0.0146682   0.0086609
6 months    Guatemala BSC    GUATEMALA                      0                    NA                 0.0201535   -0.0464412   0.0825102
6 months    MAL-ED           PERU                           0                    NA                 0.0797056   -0.0202823   0.1698947
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.3100530    0.0034913   0.5223053
6 months    PROBIT           BELARUS                        0                    NA                 0.0236531   -0.0037289   0.0502880
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0190177   -0.0576159   0.0181718
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0106461   -0.0026225   0.0237391
24 months   COHORTS          GUATEMALA                      0                    NA                 0.0065752   -0.0014666   0.0145523
24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0009540   -0.0056821   0.0037518
24 months   MAL-ED           PERU                           0                    NA                -0.0031480   -0.0736742   0.0627455
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0129807   -0.1618103   0.1614749
24 months   PROBIT           BELARUS                        0                    NA                 0.0071082   -0.0235747   0.0368714
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0236872    0.0051639   0.0418657

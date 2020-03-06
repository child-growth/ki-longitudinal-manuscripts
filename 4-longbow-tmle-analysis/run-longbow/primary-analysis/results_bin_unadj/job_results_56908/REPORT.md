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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** predfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid         country                        predfeed36    wasted   n_cell     n
----------  --------------  -----------------------------  -----------  -------  -------  ----
Birth       EE              PAKISTAN                       1                  0        2     6
Birth       EE              PAKISTAN                       1                  1        0     6
Birth       EE              PAKISTAN                       0                  0        3     6
Birth       EE              PAKISTAN                       0                  1        1     6
Birth       GMS-Nepal       NEPAL                          1                  0      320   491
Birth       GMS-Nepal       NEPAL                          1                  1       76   491
Birth       GMS-Nepal       NEPAL                          0                  0       77   491
Birth       GMS-Nepal       NEPAL                          0                  1       18   491
Birth       MAL-ED          BANGLADESH                     1                  0       59   208
Birth       MAL-ED          BANGLADESH                     1                  1       10   208
Birth       MAL-ED          BANGLADESH                     0                  0      115   208
Birth       MAL-ED          BANGLADESH                     0                  1       24   208
Birth       MAL-ED          BRAZIL                         1                  0        7    62
Birth       MAL-ED          BRAZIL                         1                  1        0    62
Birth       MAL-ED          BRAZIL                         0                  0       53    62
Birth       MAL-ED          BRAZIL                         0                  1        2    62
Birth       MAL-ED          INDIA                          1                  0        4    40
Birth       MAL-ED          INDIA                          1                  1        0    40
Birth       MAL-ED          INDIA                          0                  0       31    40
Birth       MAL-ED          INDIA                          0                  1        5    40
Birth       MAL-ED          NEPAL                          1                  0        0    25
Birth       MAL-ED          NEPAL                          1                  1        1    25
Birth       MAL-ED          NEPAL                          0                  0       23    25
Birth       MAL-ED          NEPAL                          0                  1        1    25
Birth       MAL-ED          PERU                           1                  0       57   218
Birth       MAL-ED          PERU                           1                  1        0   218
Birth       MAL-ED          PERU                           0                  0      156   218
Birth       MAL-ED          PERU                           0                  1        5   218
Birth       MAL-ED          SOUTH AFRICA                   1                  0        2   104
Birth       MAL-ED          SOUTH AFRICA                   1                  1        0   104
Birth       MAL-ED          SOUTH AFRICA                   0                  0       93   104
Birth       MAL-ED          SOUTH AFRICA                   0                  1        9   104
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0   111
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0   111
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      110   111
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        1   111
6 months    EE              PAKISTAN                       1                  0        4     9
6 months    EE              PAKISTAN                       1                  1        0     9
6 months    EE              PAKISTAN                       0                  0        5     9
6 months    EE              PAKISTAN                       0                  1        0     9
6 months    GMS-Nepal       NEPAL                          1                  0      383   527
6 months    GMS-Nepal       NEPAL                          1                  1       39   527
6 months    GMS-Nepal       NEPAL                          0                  0       95   527
6 months    GMS-Nepal       NEPAL                          0                  1       10   527
6 months    LCNI-5          MALAWI                         1                  0       47   272
6 months    LCNI-5          MALAWI                         1                  1        0   272
6 months    LCNI-5          MALAWI                         0                  0      221   272
6 months    LCNI-5          MALAWI                         0                  1        4   272
6 months    MAL-ED          BANGLADESH                     1                  0       78   240
6 months    MAL-ED          BANGLADESH                     1                  1        3   240
6 months    MAL-ED          BANGLADESH                     0                  0      154   240
6 months    MAL-ED          BANGLADESH                     0                  1        5   240
6 months    MAL-ED          BRAZIL                         1                  0       25   209
6 months    MAL-ED          BRAZIL                         1                  1        0   209
6 months    MAL-ED          BRAZIL                         0                  0      183   209
6 months    MAL-ED          BRAZIL                         0                  1        1   209
6 months    MAL-ED          INDIA                          1                  0       16   233
6 months    MAL-ED          INDIA                          1                  1        1   233
6 months    MAL-ED          INDIA                          0                  0      198   233
6 months    MAL-ED          INDIA                          0                  1       18   233
6 months    MAL-ED          NEPAL                          1                  0        8   235
6 months    MAL-ED          NEPAL                          1                  1        0   235
6 months    MAL-ED          NEPAL                          0                  0      223   235
6 months    MAL-ED          NEPAL                          0                  1        4   235
6 months    MAL-ED          PERU                           1                  0       72   272
6 months    MAL-ED          PERU                           1                  1        0   272
6 months    MAL-ED          PERU                           0                  0      200   272
6 months    MAL-ED          PERU                           0                  1        0   272
6 months    MAL-ED          SOUTH AFRICA                   1                  0        3   250
6 months    MAL-ED          SOUTH AFRICA                   1                  1        0   250
6 months    MAL-ED          SOUTH AFRICA                   0                  0      240   250
6 months    MAL-ED          SOUTH AFRICA                   0                  1        7   250
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        5   243
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0   243
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      237   243
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        1   243
6 months    SAS-FoodSuppl   INDIA                          1                  0        0   168
6 months    SAS-FoodSuppl   INDIA                          1                  1        0   168
6 months    SAS-FoodSuppl   INDIA                          0                  0      127   168
6 months    SAS-FoodSuppl   INDIA                          0                  1       41   168
24 months   EE              PAKISTAN                       1                  0        0     3
24 months   EE              PAKISTAN                       1                  1        0     3
24 months   EE              PAKISTAN                       0                  0        3     3
24 months   EE              PAKISTAN                       0                  1        0     3
24 months   GMS-Nepal       NEPAL                          1                  0      304   445
24 months   GMS-Nepal       NEPAL                          1                  1       58   445
24 months   GMS-Nepal       NEPAL                          0                  0       60   445
24 months   GMS-Nepal       NEPAL                          0                  1       23   445
24 months   LCNI-5          MALAWI                         1                  0       33   184
24 months   LCNI-5          MALAWI                         1                  1        1   184
24 months   LCNI-5          MALAWI                         0                  0      147   184
24 months   LCNI-5          MALAWI                         0                  1        3   184
24 months   MAL-ED          BANGLADESH                     1                  0       62   212
24 months   MAL-ED          BANGLADESH                     1                  1        7   212
24 months   MAL-ED          BANGLADESH                     0                  0      129   212
24 months   MAL-ED          BANGLADESH                     0                  1       14   212
24 months   MAL-ED          BRAZIL                         1                  0       20   169
24 months   MAL-ED          BRAZIL                         1                  1        0   169
24 months   MAL-ED          BRAZIL                         0                  0      146   169
24 months   MAL-ED          BRAZIL                         0                  1        3   169
24 months   MAL-ED          INDIA                          1                  0       16   224
24 months   MAL-ED          INDIA                          1                  1        1   224
24 months   MAL-ED          INDIA                          0                  0      181   224
24 months   MAL-ED          INDIA                          0                  1       26   224
24 months   MAL-ED          NEPAL                          1                  0        8   227
24 months   MAL-ED          NEPAL                          1                  1        0   227
24 months   MAL-ED          NEPAL                          0                  0      214   227
24 months   MAL-ED          NEPAL                          0                  1        5   227
24 months   MAL-ED          PERU                           1                  0       52   201
24 months   MAL-ED          PERU                           1                  1        1   201
24 months   MAL-ED          PERU                           0                  0      145   201
24 months   MAL-ED          PERU                           0                  1        3   201
24 months   MAL-ED          SOUTH AFRICA                   1                  0        3   235
24 months   MAL-ED          SOUTH AFRICA                   1                  1        0   235
24 months   MAL-ED          SOUTH AFRICA                   0                  0      231   235
24 months   MAL-ED          SOUTH AFRICA                   0                  1        1   235
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        4   213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0   213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      205   213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        4   213


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/d0a12a42-3da0-4463-8d18-97a0484e9c95/cbd48cc1-88be-4cf4-b1e7-79d2ada13a15/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d0a12a42-3da0-4463-8d18-97a0484e9c95/cbd48cc1-88be-4cf4-b1e7-79d2ada13a15/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d0a12a42-3da0-4463-8d18-97a0484e9c95/cbd48cc1-88be-4cf4-b1e7-79d2ada13a15/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d0a12a42-3da0-4463-8d18-97a0484e9c95/cbd48cc1-88be-4cf4-b1e7-79d2ada13a15/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                0.1919192   0.1530926   0.2307458
Birth       GMS-Nepal   NEPAL        0                    NA                0.1894737   0.1105900   0.2683573
Birth       MAL-ED      BANGLADESH   1                    NA                0.1449275   0.0616655   0.2281896
Birth       MAL-ED      BANGLADESH   0                    NA                0.1726619   0.1096784   0.2356454
6 months    GMS-Nepal   NEPAL        1                    NA                0.0924171   0.0647589   0.1200752
6 months    GMS-Nepal   NEPAL        0                    NA                0.0952381   0.0390378   0.1514384
24 months   GMS-Nepal   NEPAL        1                    NA                0.1602210   0.1223920   0.1980500
24 months   GMS-Nepal   NEPAL        0                    NA                0.2771084   0.1807124   0.3735044
24 months   MAL-ED      BANGLADESH   1                    NA                0.1014493   0.0300414   0.1728571
24 months   MAL-ED      BANGLADESH   0                    NA                0.0979021   0.0490785   0.1467257


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        NA                   NA                0.1914460   0.1566101   0.2262820
Birth       MAL-ED      BANGLADESH   NA                   NA                0.1634615   0.1130867   0.2138364
6 months    GMS-Nepal   NEPAL        NA                   NA                0.0929791   0.0681617   0.1177965
24 months   GMS-Nepal   NEPAL        NA                   NA                0.1820225   0.1461311   0.2179138
24 months   MAL-ED      BANGLADESH   NA                   NA                0.0990566   0.0587480   0.1393652


### Parameter: RR


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal   NEPAL        0                    1                 0.9872576   0.6214464   1.568402
Birth       MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       MAL-ED      BANGLADESH   0                    1                 1.1913669   0.6032458   2.352864
6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    GMS-Nepal   NEPAL        0                    1                 1.0305250   0.5317475   1.997154
24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   GMS-Nepal   NEPAL        0                    1                 1.7295388   1.1359084   2.633403
24 months   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED      BANGLADESH   0                    1                 0.9650350   0.4072906   2.286555


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0004732   -0.0174846   0.0165383
Birth       MAL-ED      BANGLADESH   1                    NA                 0.0185340   -0.0512564   0.0883244
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0005621   -0.0119182   0.0130424
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0218015    0.0020282   0.0415747
24 months   MAL-ED      BANGLADESH   1                    NA                -0.0023927   -0.0607420   0.0559567


### Parameter: PAF


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0024715   -0.0953856   0.0825613
Birth       MAL-ED      BANGLADESH   1                    NA                 0.1133845   -0.4335513   0.4516505
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0060451   -0.1376585   0.1315967
24 months   GMS-Nepal   NEPAL        1                    NA                 0.1197735    0.0059331   0.2205770
24 months   MAL-ED      BANGLADESH   1                    NA                -0.0241546   -0.8202312   0.4237586

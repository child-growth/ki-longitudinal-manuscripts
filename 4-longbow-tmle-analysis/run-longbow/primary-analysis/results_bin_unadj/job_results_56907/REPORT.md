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

**Intervention Variable:** predfeed6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid         country                        predfeed6    wasted   n_cell     n
----------  --------------  -----------------------------  ----------  -------  -------  ----
Birth       EE              PAKISTAN                       1                 0       20    28
Birth       EE              PAKISTAN                       1                 1        4    28
Birth       EE              PAKISTAN                       0                 0        3    28
Birth       EE              PAKISTAN                       0                 1        1    28
Birth       GMS-Nepal       NEPAL                          1                 0      309   522
Birth       GMS-Nepal       NEPAL                          1                 1       81   522
Birth       GMS-Nepal       NEPAL                          0                 0      111   522
Birth       GMS-Nepal       NEPAL                          0                 1       21   522
Birth       MAL-ED          BANGLADESH                     1                 0       58   194
Birth       MAL-ED          BANGLADESH                     1                 1       10   194
Birth       MAL-ED          BANGLADESH                     0                 0      102   194
Birth       MAL-ED          BANGLADESH                     0                 1       24   194
Birth       MAL-ED          BRAZIL                         1                 0        5    57
Birth       MAL-ED          BRAZIL                         1                 1        0    57
Birth       MAL-ED          BRAZIL                         0                 0       50    57
Birth       MAL-ED          BRAZIL                         0                 1        2    57
Birth       MAL-ED          INDIA                          1                 0        4    37
Birth       MAL-ED          INDIA                          1                 1        0    37
Birth       MAL-ED          INDIA                          0                 0       28    37
Birth       MAL-ED          INDIA                          0                 1        5    37
Birth       MAL-ED          NEPAL                          1                 0        3    23
Birth       MAL-ED          NEPAL                          1                 1        0    23
Birth       MAL-ED          NEPAL                          0                 0       19    23
Birth       MAL-ED          NEPAL                          0                 1        1    23
Birth       MAL-ED          PERU                           1                 0       71   208
Birth       MAL-ED          PERU                           1                 1        1   208
Birth       MAL-ED          PERU                           0                 0      132   208
Birth       MAL-ED          PERU                           0                 1        4   208
Birth       MAL-ED          SOUTH AFRICA                   1                 0        1    90
Birth       MAL-ED          SOUTH AFRICA                   1                 1        0    90
Birth       MAL-ED          SOUTH AFRICA                   0                 0       80    90
Birth       MAL-ED          SOUTH AFRICA                   0                 1        9    90
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        0   105
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0   105
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      104   105
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        1   105
6 months    EE              PAKISTAN                       1                 0       39    48
6 months    EE              PAKISTAN                       1                 1        4    48
6 months    EE              PAKISTAN                       0                 0        5    48
6 months    EE              PAKISTAN                       0                 1        0    48
6 months    GMS-Nepal       NEPAL                          1                 0      370   547
6 months    GMS-Nepal       NEPAL                          1                 1       36   547
6 months    GMS-Nepal       NEPAL                          0                 0      127   547
6 months    GMS-Nepal       NEPAL                          0                 1       14   547
6 months    LCNI-5          MALAWI                         1                 0       47   272
6 months    LCNI-5          MALAWI                         1                 1        0   272
6 months    LCNI-5          MALAWI                         0                 0      221   272
6 months    LCNI-5          MALAWI                         0                 1        4   272
6 months    MAL-ED          BANGLADESH                     1                 0       80   231
6 months    MAL-ED          BANGLADESH                     1                 1        4   231
6 months    MAL-ED          BANGLADESH                     0                 0      143   231
6 months    MAL-ED          BANGLADESH                     0                 1        4   231
6 months    MAL-ED          BRAZIL                         1                 0       29   209
6 months    MAL-ED          BRAZIL                         1                 1        1   209
6 months    MAL-ED          BRAZIL                         0                 0      179   209
6 months    MAL-ED          BRAZIL                         0                 1        0   209
6 months    MAL-ED          INDIA                          1                 0       11   218
6 months    MAL-ED          INDIA                          1                 1        0   218
6 months    MAL-ED          INDIA                          0                 0      191   218
6 months    MAL-ED          INDIA                          0                 1       16   218
6 months    MAL-ED          NEPAL                          1                 0       12   225
6 months    MAL-ED          NEPAL                          1                 1        0   225
6 months    MAL-ED          NEPAL                          0                 0      209   225
6 months    MAL-ED          NEPAL                          0                 1        4   225
6 months    MAL-ED          PERU                           1                 0       92   271
6 months    MAL-ED          PERU                           1                 1        0   271
6 months    MAL-ED          PERU                           0                 0      179   271
6 months    MAL-ED          PERU                           0                 1        0   271
6 months    MAL-ED          SOUTH AFRICA                   1                 0        3   233
6 months    MAL-ED          SOUTH AFRICA                   1                 1        0   233
6 months    MAL-ED          SOUTH AFRICA                   0                 0      223   233
6 months    MAL-ED          SOUTH AFRICA                   0                 1        7   233
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        1   232
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0   232
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      230   232
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        1   232
6 months    SAS-FoodSuppl   INDIA                          1                 0        0   168
6 months    SAS-FoodSuppl   INDIA                          1                 1        0   168
6 months    SAS-FoodSuppl   INDIA                          0                 0      127   168
6 months    SAS-FoodSuppl   INDIA                          0                 1       41   168
24 months   EE              PAKISTAN                       1                 0       17    23
24 months   EE              PAKISTAN                       1                 1        3    23
24 months   EE              PAKISTAN                       0                 0        3    23
24 months   EE              PAKISTAN                       0                 1        0    23
24 months   GMS-Nepal       NEPAL                          1                 0      294   469
24 months   GMS-Nepal       NEPAL                          1                 1       61   469
24 months   GMS-Nepal       NEPAL                          0                 0       85   469
24 months   GMS-Nepal       NEPAL                          0                 1       29   469
24 months   LCNI-5          MALAWI                         1                 0       33   184
24 months   LCNI-5          MALAWI                         1                 1        1   184
24 months   LCNI-5          MALAWI                         0                 0      147   184
24 months   LCNI-5          MALAWI                         0                 1        3   184
24 months   MAL-ED          BANGLADESH                     1                 0       69   205
24 months   MAL-ED          BANGLADESH                     1                 1        7   205
24 months   MAL-ED          BANGLADESH                     0                 0      116   205
24 months   MAL-ED          BANGLADESH                     0                 1       13   205
24 months   MAL-ED          BRAZIL                         1                 0       24   169
24 months   MAL-ED          BRAZIL                         1                 1        1   169
24 months   MAL-ED          BRAZIL                         0                 0      142   169
24 months   MAL-ED          BRAZIL                         0                 1        2   169
24 months   MAL-ED          INDIA                          1                 0       11   209
24 months   MAL-ED          INDIA                          1                 1        0   209
24 months   MAL-ED          INDIA                          0                 0      174   209
24 months   MAL-ED          INDIA                          0                 1       24   209
24 months   MAL-ED          NEPAL                          1                 0       12   219
24 months   MAL-ED          NEPAL                          1                 1        0   219
24 months   MAL-ED          NEPAL                          0                 0      202   219
24 months   MAL-ED          NEPAL                          0                 1        5   219
24 months   MAL-ED          PERU                           1                 0       66   201
24 months   MAL-ED          PERU                           1                 1        2   201
24 months   MAL-ED          PERU                           0                 0      131   201
24 months   MAL-ED          PERU                           0                 1        2   201
24 months   MAL-ED          SOUTH AFRICA                   1                 0        3   216
24 months   MAL-ED          SOUTH AFRICA                   1                 1        0   216
24 months   MAL-ED          SOUTH AFRICA                   0                 0      212   216
24 months   MAL-ED          SOUTH AFRICA                   0                 1        1   216
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        1   202
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0   202
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      197   202
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        4   202


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
![](/tmp/9a1f180b-b7b8-44cb-8ce4-781ca3754603/97f63098-3833-4b5a-9560-06770adc31d1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9a1f180b-b7b8-44cb-8ce4-781ca3754603/97f63098-3833-4b5a-9560-06770adc31d1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9a1f180b-b7b8-44cb-8ce4-781ca3754603/97f63098-3833-4b5a-9560-06770adc31d1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9a1f180b-b7b8-44cb-8ce4-781ca3754603/97f63098-3833-4b5a-9560-06770adc31d1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                0.2076923   0.1673938   0.2479908
Birth       GMS-Nepal   NEPAL        0                    NA                0.1590909   0.0966348   0.2215470
Birth       MAL-ED      BANGLADESH   1                    NA                0.1470588   0.0626630   0.2314546
Birth       MAL-ED      BANGLADESH   0                    NA                0.1904762   0.1217345   0.2592179
6 months    GMS-Nepal   NEPAL        1                    NA                0.0886700   0.0609936   0.1163463
6 months    GMS-Nepal   NEPAL        0                    NA                0.0992908   0.0498844   0.1486971
24 months   GMS-Nepal   NEPAL        1                    NA                0.1718310   0.1325477   0.2111143
24 months   GMS-Nepal   NEPAL        0                    NA                0.2543860   0.1743541   0.3344178
24 months   MAL-ED      BANGLADESH   1                    NA                0.0921053   0.0269330   0.1572776
24 months   MAL-ED      BANGLADESH   0                    NA                0.1007752   0.0487006   0.1528498


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        NA                   NA                0.1954023   0.1613549   0.2294497
Birth       MAL-ED      BANGLADESH   NA                   NA                0.1752577   0.1216204   0.2288951
6 months    GMS-Nepal   NEPAL        NA                   NA                0.0914077   0.0672348   0.1155805
24 months   GMS-Nepal   NEPAL        NA                   NA                0.1918977   0.1562203   0.2275751
24 months   MAL-ED      BANGLADESH   NA                   NA                0.0975610   0.0568436   0.1382784


### Parameter: RR


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal   NEPAL        0                    1                 0.7659933   0.4943584   1.186883
Birth       MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       MAL-ED      BANGLADESH   0                    1                 1.2952381   0.6575460   2.551368
6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    GMS-Nepal   NEPAL        0                    1                 1.1197794   0.6223492   2.014794
24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   GMS-Nepal   NEPAL        0                    1                 1.4804429   1.0034471   2.184182
24 months   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED      BANGLADESH   0                    1                 1.0941307   0.4555621   2.627791


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0122900   -0.0311731   0.0065930
Birth       MAL-ED      BANGLADESH   1                    NA                 0.0281989   -0.0425571   0.0989549
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0027377   -0.0118650   0.0173404
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0200667   -0.0018400   0.0419733
24 months   MAL-ED      BANGLADESH   1                    NA                 0.0054557   -0.0470421   0.0579535


### Parameter: PAF


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0628959   -0.1637323   0.0292031
Birth       MAL-ED      BANGLADESH   1                    NA                 0.1608997   -0.3544668   0.4801723
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0299507   -0.1435240   0.1771091
24 months   GMS-Nepal   NEPAL        1                    NA                 0.1045696   -0.0161000   0.2109088
24 months   MAL-ED      BANGLADESH   1                    NA                 0.0559211   -0.6686320   0.4658588

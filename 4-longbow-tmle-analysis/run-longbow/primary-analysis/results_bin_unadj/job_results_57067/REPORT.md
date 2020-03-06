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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** predfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid     country                        predfeed3    ever_swasted   n_cell     n
----------------------------  ----------  -----------------------------  ----------  -------------  -------  ----
0-24 months (no birth wast)   EE          PAKISTAN                       1                       0       34    39
0-24 months (no birth wast)   EE          PAKISTAN                       1                       1        5    39
0-24 months (no birth wast)   EE          PAKISTAN                       0                       0        0    39
0-24 months (no birth wast)   EE          PAKISTAN                       0                       1        0    39
0-24 months (no birth wast)   GMS-Nepal   NEPAL                          1                       0      283   453
0-24 months (no birth wast)   GMS-Nepal   NEPAL                          1                       1       93   453
0-24 months (no birth wast)   GMS-Nepal   NEPAL                          0                       0       62   453
0-24 months (no birth wast)   GMS-Nepal   NEPAL                          0                       1       15   453
0-24 months (no birth wast)   MAL-ED      BANGLADESH                     1                       0      190   244
0-24 months (no birth wast)   MAL-ED      BANGLADESH                     1                       1       10   244
0-24 months (no birth wast)   MAL-ED      BANGLADESH                     0                       0       42   244
0-24 months (no birth wast)   MAL-ED      BANGLADESH                     0                       1        2   244
0-24 months (no birth wast)   MAL-ED      BRAZIL                         1                       0       94   202
0-24 months (no birth wast)   MAL-ED      BRAZIL                         1                       1        4   202
0-24 months (no birth wast)   MAL-ED      BRAZIL                         0                       0      104   202
0-24 months (no birth wast)   MAL-ED      BRAZIL                         0                       1        0   202
0-24 months (no birth wast)   MAL-ED      INDIA                          1                       0      140   212
0-24 months (no birth wast)   MAL-ED      INDIA                          1                       1       10   212
0-24 months (no birth wast)   MAL-ED      INDIA                          0                       0       60   212
0-24 months (no birth wast)   MAL-ED      INDIA                          0                       1        2   212
0-24 months (no birth wast)   MAL-ED      NEPAL                          1                       0      111   227
0-24 months (no birth wast)   MAL-ED      NEPAL                          1                       1        2   227
0-24 months (no birth wast)   MAL-ED      NEPAL                          0                       0      113   227
0-24 months (no birth wast)   MAL-ED      NEPAL                          0                       1        1   227
0-24 months (no birth wast)   MAL-ED      PERU                           1                       0      184   287
0-24 months (no birth wast)   MAL-ED      PERU                           1                       1        4   287
0-24 months (no birth wast)   MAL-ED      PERU                           0                       0       99   287
0-24 months (no birth wast)   MAL-ED      PERU                           0                       1        0   287
0-24 months (no birth wast)   MAL-ED      SOUTH AFRICA                   1                       0       70   269
0-24 months (no birth wast)   MAL-ED      SOUTH AFRICA                   1                       1        1   269
0-24 months (no birth wast)   MAL-ED      SOUTH AFRICA                   0                       0      188   269
0-24 months (no birth wast)   MAL-ED      SOUTH AFRICA                   0                       1       10   269
0-24 months (no birth wast)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                       0       63   219
0-24 months (no birth wast)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                       1        2   219
0-24 months (no birth wast)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                       0      149   219
0-24 months (no birth wast)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                       1        5   219
0-6 months (no birth wast)    EE          PAKISTAN                       1                       0       38    38
0-6 months (no birth wast)    EE          PAKISTAN                       1                       1        0    38
0-6 months (no birth wast)    EE          PAKISTAN                       0                       0        0    38
0-6 months (no birth wast)    EE          PAKISTAN                       0                       1        0    38
0-6 months (no birth wast)    GMS-Nepal   NEPAL                          1                       0      347   439
0-6 months (no birth wast)    GMS-Nepal   NEPAL                          1                       1       19   439
0-6 months (no birth wast)    GMS-Nepal   NEPAL                          0                       0       68   439
0-6 months (no birth wast)    GMS-Nepal   NEPAL                          0                       1        5   439
0-6 months (no birth wast)    MAL-ED      BANGLADESH                     1                       0      193   243
0-6 months (no birth wast)    MAL-ED      BANGLADESH                     1                       1        6   243
0-6 months (no birth wast)    MAL-ED      BANGLADESH                     0                       0       43   243
0-6 months (no birth wast)    MAL-ED      BANGLADESH                     0                       1        1   243
0-6 months (no birth wast)    MAL-ED      BRAZIL                         1                       0       95   202
0-6 months (no birth wast)    MAL-ED      BRAZIL                         1                       1        3   202
0-6 months (no birth wast)    MAL-ED      BRAZIL                         0                       0      104   202
0-6 months (no birth wast)    MAL-ED      BRAZIL                         0                       1        0   202
0-6 months (no birth wast)    MAL-ED      INDIA                          1                       0      144   210
0-6 months (no birth wast)    MAL-ED      INDIA                          1                       1        6   210
0-6 months (no birth wast)    MAL-ED      INDIA                          0                       0       59   210
0-6 months (no birth wast)    MAL-ED      INDIA                          0                       1        1   210
0-6 months (no birth wast)    MAL-ED      NEPAL                          1                       0      113   225
0-6 months (no birth wast)    MAL-ED      NEPAL                          1                       1        0   225
0-6 months (no birth wast)    MAL-ED      NEPAL                          0                       0      111   225
0-6 months (no birth wast)    MAL-ED      NEPAL                          0                       1        1   225
0-6 months (no birth wast)    MAL-ED      PERU                           1                       0      187   287
0-6 months (no birth wast)    MAL-ED      PERU                           1                       1        1   287
0-6 months (no birth wast)    MAL-ED      PERU                           0                       0       99   287
0-6 months (no birth wast)    MAL-ED      PERU                           0                       1        0   287
0-6 months (no birth wast)    MAL-ED      SOUTH AFRICA                   1                       0       70   268
0-6 months (no birth wast)    MAL-ED      SOUTH AFRICA                   1                       1        0   268
0-6 months (no birth wast)    MAL-ED      SOUTH AFRICA                   0                       0      196   268
0-6 months (no birth wast)    MAL-ED      SOUTH AFRICA                   0                       1        2   268
0-6 months (no birth wast)    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                       0       64   219
0-6 months (no birth wast)    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                       1        1   219
0-6 months (no birth wast)    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                       0      152   219
0-6 months (no birth wast)    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                       1        2   219
6-24 months                   EE          PAKISTAN                       1                       0       33    38
6-24 months                   EE          PAKISTAN                       1                       1        5    38
6-24 months                   EE          PAKISTAN                       0                       0        0    38
6-24 months                   EE          PAKISTAN                       0                       1        0    38
6-24 months                   GMS-Nepal   NEPAL                          1                       0      293   451
6-24 months                   GMS-Nepal   NEPAL                          1                       1       82   451
6-24 months                   GMS-Nepal   NEPAL                          0                       0       64   451
6-24 months                   GMS-Nepal   NEPAL                          0                       1       12   451
6-24 months                   MAL-ED      BANGLADESH                     1                       0      186   232
6-24 months                   MAL-ED      BANGLADESH                     1                       1        4   232
6-24 months                   MAL-ED      BANGLADESH                     0                       0       41   232
6-24 months                   MAL-ED      BANGLADESH                     0                       1        1   232
6-24 months                   MAL-ED      BRAZIL                         1                       0       92   185
6-24 months                   MAL-ED      BRAZIL                         1                       1        1   185
6-24 months                   MAL-ED      BRAZIL                         0                       0       92   185
6-24 months                   MAL-ED      BRAZIL                         0                       1        0   185
6-24 months                   MAL-ED      INDIA                          1                       0      142   209
6-24 months                   MAL-ED      INDIA                          1                       1        4   209
6-24 months                   MAL-ED      INDIA                          0                       0       62   209
6-24 months                   MAL-ED      INDIA                          0                       1        1   209
6-24 months                   MAL-ED      NEPAL                          1                       0      111   226
6-24 months                   MAL-ED      NEPAL                          1                       1        2   226
6-24 months                   MAL-ED      NEPAL                          0                       0      113   226
6-24 months                   MAL-ED      NEPAL                          0                       1        0   226
6-24 months                   MAL-ED      PERU                           1                       0      172   267
6-24 months                   MAL-ED      PERU                           1                       1        3   267
6-24 months                   MAL-ED      PERU                           0                       0       92   267
6-24 months                   MAL-ED      PERU                           0                       1        0   267
6-24 months                   MAL-ED      SOUTH AFRICA                   1                       0       64   248
6-24 months                   MAL-ED      SOUTH AFRICA                   1                       1        2   248
6-24 months                   MAL-ED      SOUTH AFRICA                   0                       0      174   248
6-24 months                   MAL-ED      SOUTH AFRICA                   0                       1        8   248
6-24 months                   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                       0       62   210
6-24 months                   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                       1        1   210
6-24 months                   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                       0      144   210
6-24 months                   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                       1        3   210


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/df287349-8469-483e-ae18-05b83dea8380/82c8a8cc-7a2e-415f-8aaf-28b445ff81da/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/df287349-8469-483e-ae18-05b83dea8380/82c8a8cc-7a2e-415f-8aaf-28b445ff81da/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/df287349-8469-483e-ae18-05b83dea8380/82c8a8cc-7a2e-415f-8aaf-28b445ff81da/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/df287349-8469-483e-ae18-05b83dea8380/82c8a8cc-7a2e-415f-8aaf-28b445ff81da/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid     country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL     1                    NA                0.2473404   0.2036807   0.2910001
0-24 months (no birth wast)   GMS-Nepal   NEPAL     0                    NA                0.1948052   0.1062461   0.2833643
0-6 months (no birth wast)    GMS-Nepal   NEPAL     1                    NA                0.0519126   0.0291583   0.0746669
0-6 months (no birth wast)    GMS-Nepal   NEPAL     0                    NA                0.0684932   0.0104837   0.1265026
6-24 months                   GMS-Nepal   NEPAL     1                    NA                0.2186667   0.1767850   0.2605483
6-24 months                   GMS-Nepal   NEPAL     0                    NA                0.1578947   0.0758236   0.2399659


### Parameter: E(Y)


agecat                        studyid     country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL     NA                   NA                0.2384106   0.1991278   0.2776934
0-6 months (no birth wast)    GMS-Nepal   NEPAL     NA                   NA                0.0546697   0.0333797   0.0759597
6-24 months                   GMS-Nepal   NEPAL     NA                   NA                0.2084257   0.1708970   0.2459544


### Parameter: RR


agecat                        studyid     country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ----------  --------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   GMS-Nepal   NEPAL     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   GMS-Nepal   NEPAL     0                    1                 0.7875995   0.4836295   1.282620
0-6 months (no birth wast)    GMS-Nepal   NEPAL     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    GMS-Nepal   NEPAL     0                    1                 1.3193944   0.5084106   3.424007
6-24 months                   GMS-Nepal   NEPAL     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   GMS-Nepal   NEPAL     0                    1                 0.7220796   0.4149617   1.256499


### Parameter: PAR


agecat                        studyid     country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL     1                    NA                -0.0089298   -0.0258112   0.0079515
0-6 months (no birth wast)    GMS-Nepal   NEPAL     1                    NA                 0.0027571   -0.0076207   0.0131350
6-24 months                   GMS-Nepal   NEPAL     1                    NA                -0.0102409   -0.0259094   0.0054275


### Parameter: PAF


agecat                        studyid     country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL     1                    NA                -0.0374557   -0.1106348   0.0309017
0-6 months (no birth wast)    GMS-Nepal   NEPAL     1                    NA                 0.0504326   -0.1585940   0.2217479
6-24 months                   GMS-Nepal   NEPAL     1                    NA                -0.0491348   -0.1268184   0.0231933

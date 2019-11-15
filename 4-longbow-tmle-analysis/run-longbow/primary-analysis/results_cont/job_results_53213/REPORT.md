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

**Intervention Variable:** predfeed36

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        predfeed36    n_cell      n
----------  -------------------------  -----------------------------  -----------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 69    208
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                139    208
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  7     62
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 55     62
Birth       ki0047075b-MAL-ED          INDIA                          1                  4     40
Birth       ki0047075b-MAL-ED          INDIA                          0                 36     40
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1     25
Birth       ki0047075b-MAL-ED          NEPAL                          0                 24     25
Birth       ki0047075b-MAL-ED          PERU                           1                 57    218
Birth       ki0047075b-MAL-ED          PERU                           0                161    218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  2    104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                102    104
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0    111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                111    111
Birth       ki1000109-EE               PAKISTAN                       1                  2      6
Birth       ki1000109-EE               PAKISTAN                       0                  4      6
Birth       ki1113344-GMS-Nepal        NEPAL                          1                396    491
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 95    491
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               6746   8619
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1873   8619
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1714   2128
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                414   2128
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 81    240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                159    240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 25    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                184    209
6 months    ki0047075b-MAL-ED          INDIA                          1                 17    233
6 months    ki0047075b-MAL-ED          INDIA                          0                216    233
6 months    ki0047075b-MAL-ED          NEPAL                          1                  8    235
6 months    ki0047075b-MAL-ED          NEPAL                          0                227    235
6 months    ki0047075b-MAL-ED          PERU                           1                 72    272
6 months    ki0047075b-MAL-ED          PERU                           0                200    272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                247    250
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  5    243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                238    243
6 months    ki1000109-EE               PAKISTAN                       1                  4      9
6 months    ki1000109-EE               PAKISTAN                       0                  5      9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168    168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                422    527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                105    527
6 months    ki1148112-LCNI-5           MALAWI                         1                 47    272
6 months    ki1148112-LCNI-5           MALAWI                         0                225    272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               6576   8535
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1959   8535
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3252   4188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                936   4188
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 69    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                143    212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 20    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                149    169
24 months   ki0047075b-MAL-ED          INDIA                          1                 17    224
24 months   ki0047075b-MAL-ED          INDIA                          0                207    224
24 months   ki0047075b-MAL-ED          NEPAL                          1                  8    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                219    227
24 months   ki0047075b-MAL-ED          PERU                           1                 53    201
24 months   ki0047075b-MAL-ED          PERU                           0                148    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                232    235
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                209    213
24 months   ki1000109-EE               PAKISTAN                       1                  0      3
24 months   ki1000109-EE               PAKISTAN                       0                  3      3
24 months   ki1113344-GMS-Nepal        NEPAL                          1                362    445
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 83    445
24 months   ki1148112-LCNI-5           MALAWI                         1                 34    184
24 months   ki1148112-LCNI-5           MALAWI                         0                150    184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               3320   4317
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                997   4317
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3144   4035
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                891   4035


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

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
![](/tmp/3b2ca806-4e15-4259-b1bd-c48ab8b67df3/60730e24-0b27-44b9-b43d-5e4362eb8190/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3b2ca806-4e15-4259-b1bd-c48ab8b67df3/60730e24-0b27-44b9-b43d-5e4362eb8190/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3b2ca806-4e15-4259-b1bd-c48ab8b67df3/60730e24-0b27-44b9-b43d-5e4362eb8190/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.9493792   -1.1833133   -0.7154452
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.9474189   -1.1391414   -0.7556964
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.3457143   -1.2397629    0.5483343
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.4981818    0.1725808    0.8237829
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                 0.1263167   -0.1004227    0.3530562
Birth       ki0047075b-MAL-ED     PERU                           0                    NA                -0.1072802   -0.2549007    0.0403403
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.0985679   -1.2074957   -0.9896401
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.1526867   -1.3520226   -0.9533507
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.7981729   -0.8251167   -0.7712291
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.7541519   -0.8060375   -0.7022663
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.6887538   -0.7448766   -0.6326311
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.7549927   -0.8909101   -0.6190754
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.1426177   -0.3652520    0.0800166
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.1282145   -0.2886647    0.0322356
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                 1.5126811    1.0952386    1.9301236
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.8936639    0.7164309    1.0708969
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.3924832   -0.8758855    0.0909191
6 months    ki0047075b-MAL-ED     INDIA                          0                    NA                -0.7558546   -0.8875399   -0.6241692
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.3168750   -0.9708901    0.3371401
6 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.1292144   -0.0046984    0.2631272
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                 1.3215414    1.0828621    1.5602207
6 months    ki0047075b-MAL-ED     PERU                           0                    NA                 0.9565999    0.8164323    1.0967675
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.7950000    1.1425391    2.4474609
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5246709    0.3926689    0.6566728
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.5690853   -0.6694566   -0.4687141
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.7249567   -0.9134968   -0.5364166
6 months    ki1148112-LCNI-5      MALAWI                         1                    NA                 0.3687346    0.0355513    0.7019180
6 months    ki1148112-LCNI-5      MALAWI                         0                    NA                 0.3992767    0.2716071    0.5269463
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.6001861   -0.6293079   -0.5710643
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.5958378   -0.6449363   -0.5467393
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.3453358   -0.3909785   -0.2996930
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.5553310   -0.6347563   -0.4759057
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.8915615   -1.0912485   -0.6918746
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.7537180   -0.9099705   -0.5974655
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.4756150   -0.1019701    1.0532002
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.4620040    0.2403589    0.6836491
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.6613808   -1.0310805   -0.2916811
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                -0.9749454   -1.0974310   -0.8524598
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.5987500   -1.1044659   -0.0930341
24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.3643379   -0.4810145   -0.2476613
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0193426   -0.2093510    0.1706659
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                 0.1282481   -0.0244680    0.2809642
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.0696015   -1.1681055   -0.9710975
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.3754394   -1.6275822   -1.1232965
24 months   ki1148112-LCNI-5      MALAWI                         1                    NA                -0.1906423   -0.5298270    0.1485425
24 months   ki1148112-LCNI-5      MALAWI                         0                    NA                -0.0734147   -0.2349815    0.0881521
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -1.3464200   -1.3850767   -1.3077633
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -1.2999693   -1.3673389   -1.2325997
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.2297963   -1.2718186   -1.1877740
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -1.2363274   -1.3177534   -1.1549015


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.9480769   -1.0934921   -0.8026617
Birth       ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.4029032    0.0896793    0.7161272
Birth       ki0047075b-MAL-ED     PERU                           NA                   NA                -0.0458257   -0.1696487    0.0779973
Birth       ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.1085743   -1.2077878   -1.0093609
Birth       kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -0.7892308   -0.8133344   -0.7651272
Birth       kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -0.7018985   -0.7560164   -0.6477806
6 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.1354583   -0.2647102   -0.0062065
6 months    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.7161910   -0.8437667   -0.5886153
6 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                 0.1140284   -0.0176364    0.2456931
6 months    ki0047075b-MAL-ED     PERU                           NA                   NA                 1.0511642    0.9291821    1.1731463
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5508093    0.4191033    0.6825154
6 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.6001075   -0.6890924   -0.5111227
6 months    ki1148112-LCNI-5      MALAWI                         NA                   NA                 0.3925000    0.2735307    0.5114693
6 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -0.5995202   -0.6251579   -0.5738825
6 months    kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -0.3960017   -0.4356255   -0.3563778
24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.9581250   -1.0746982   -0.8415518
24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.3725991   -0.4867052   -0.2584930
24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.1236255   -1.2167712   -1.0304797
24 months   ki1148112-LCNI-5      MALAWI                         NA                   NA                -0.0770652   -0.2204213    0.0662909
24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -1.3352235   -1.3688736   -1.3015735
24 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -1.2344089   -1.2708428   -1.1979750


### Parameter: ATE


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0019603   -0.3049618    0.3088825
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.8438961   -0.1075969    1.7953891
Birth       ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU                           0                    1                 -0.2335969   -0.5047788    0.0375850
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0541188   -0.2716694    0.1634318
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0440210   -0.0140551    0.1020971
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.0662389   -0.2092969    0.0768191
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0144032   -0.2605160    0.2893223
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.6190172   -1.0664630   -0.1715715
6 months    ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA                          0                    1                 -0.3633714   -0.8648037    0.1380610
6 months    ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL                          0                    1                  0.4460894   -0.2214946    1.1136734
6 months    ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU                           0                    1                 -0.3649415   -0.6425732   -0.0873098
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -1.2703291   -1.9360090   -0.6046493
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.1558714   -0.3694581    0.0577153
6 months    ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI                         0                    1                  0.0305421   -0.3266700    0.3877542
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0043483   -0.0514128    0.0601093
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.2099953   -0.3006809   -0.1193096
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.1378435   -0.1207588    0.3964458
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0136110   -0.6321578    0.6049358
24 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA                          0                    1                 -0.3135646   -0.7024416    0.0753124
24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.2344121   -0.2845889    0.7534131
24 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.1475906   -0.0976544    0.3928357
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.3058379   -0.5756853   -0.0359905
24 months   ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI                         0                    1                  0.1172276   -0.2618477    0.4963029
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0464507   -0.0308957    0.1237971
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.0065312   -0.0963711    0.0833088


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0013023   -0.2067813    0.2093860
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.7486175   -0.0981055    1.5953405
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                -0.1721424   -0.3737707    0.0294858
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0100064   -0.0517302    0.0317174
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0089421   -0.0037748    0.0216590
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0131446   -0.0413613    0.0150720
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0071594   -0.1759798    0.1902985
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.5406038   -0.9431577   -0.1380498
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.3237078   -0.7911528    0.1437372
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.4309034   -0.2140376    1.0758444
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                -0.2703772   -0.4768360   -0.0639183
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.2441907   -1.8936261   -0.5947552
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0310222   -0.0738277    0.0117834
6 months    ki1148112-LCNI-5      MALAWI                         1                    NA                 0.0237654   -0.2734395    0.3209702
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0006659   -0.0121313    0.0134630
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0506659   -0.0724026   -0.0289293
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0722691   -0.1042664    0.2488045
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0129917   -0.5658579    0.5398744
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.2967442   -0.6572314    0.0637429
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.2261509   -0.2745910    0.7268928
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.1305407   -0.0528268    0.3139082
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0540240   -0.1041202   -0.0039278
24 months   ki1148112-LCNI-5      MALAWI                         1                    NA                 0.1135770   -0.1996752    0.4268293
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0111965   -0.0067314    0.0291244
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0046126   -0.0247379    0.0155126

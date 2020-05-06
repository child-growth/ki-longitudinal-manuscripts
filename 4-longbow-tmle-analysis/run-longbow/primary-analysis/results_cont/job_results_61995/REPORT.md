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

agecat      studyid         country                        predfeed36    n_cell      n  outcome_variable 
----------  --------------  -----------------------------  -----------  -------  -----  -----------------
Birth       EE              PAKISTAN                       1                  2      6  whz              
Birth       EE              PAKISTAN                       0                  4      6  whz              
Birth       GMS-Nepal       NEPAL                          1                396    491  whz              
Birth       GMS-Nepal       NEPAL                          0                 95    491  whz              
Birth       JiVitA-3        BANGLADESH                     1               6746   8619  whz              
Birth       JiVitA-3        BANGLADESH                     0               1873   8619  whz              
Birth       JiVitA-4        BANGLADESH                     1               1714   2128  whz              
Birth       JiVitA-4        BANGLADESH                     0                414   2128  whz              
Birth       MAL-ED          BANGLADESH                     1                 69    208  whz              
Birth       MAL-ED          BANGLADESH                     0                139    208  whz              
Birth       MAL-ED          BRAZIL                         1                  7     62  whz              
Birth       MAL-ED          BRAZIL                         0                 55     62  whz              
Birth       MAL-ED          INDIA                          1                  4     40  whz              
Birth       MAL-ED          INDIA                          0                 36     40  whz              
Birth       MAL-ED          NEPAL                          1                  1     25  whz              
Birth       MAL-ED          NEPAL                          0                 24     25  whz              
Birth       MAL-ED          PERU                           1                 57    218  whz              
Birth       MAL-ED          PERU                           0                161    218  whz              
Birth       MAL-ED          SOUTH AFRICA                   1                  2    104  whz              
Birth       MAL-ED          SOUTH AFRICA                   0                102    104  whz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0    111  whz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                111    111  whz              
6 months    EE              PAKISTAN                       1                  4      9  whz              
6 months    EE              PAKISTAN                       0                  5      9  whz              
6 months    GMS-Nepal       NEPAL                          1                422    527  whz              
6 months    GMS-Nepal       NEPAL                          0                105    527  whz              
6 months    JiVitA-3        BANGLADESH                     1               6576   8535  whz              
6 months    JiVitA-3        BANGLADESH                     0               1959   8535  whz              
6 months    JiVitA-4        BANGLADESH                     1               3252   4188  whz              
6 months    JiVitA-4        BANGLADESH                     0                936   4188  whz              
6 months    LCNI-5          MALAWI                         1                 47    272  whz              
6 months    LCNI-5          MALAWI                         0                225    272  whz              
6 months    MAL-ED          BANGLADESH                     1                 81    240  whz              
6 months    MAL-ED          BANGLADESH                     0                159    240  whz              
6 months    MAL-ED          BRAZIL                         1                 25    209  whz              
6 months    MAL-ED          BRAZIL                         0                184    209  whz              
6 months    MAL-ED          INDIA                          1                 17    233  whz              
6 months    MAL-ED          INDIA                          0                216    233  whz              
6 months    MAL-ED          NEPAL                          1                  8    235  whz              
6 months    MAL-ED          NEPAL                          0                227    235  whz              
6 months    MAL-ED          PERU                           1                 72    272  whz              
6 months    MAL-ED          PERU                           0                200    272  whz              
6 months    MAL-ED          SOUTH AFRICA                   1                  3    250  whz              
6 months    MAL-ED          SOUTH AFRICA                   0                247    250  whz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  5    243  whz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                238    243  whz              
6 months    SAS-FoodSuppl   INDIA                          1                  0    168  whz              
6 months    SAS-FoodSuppl   INDIA                          0                168    168  whz              
24 months   EE              PAKISTAN                       1                  0      3  whz              
24 months   EE              PAKISTAN                       0                  3      3  whz              
24 months   GMS-Nepal       NEPAL                          1                362    445  whz              
24 months   GMS-Nepal       NEPAL                          0                 83    445  whz              
24 months   JiVitA-3        BANGLADESH                     1               3320   4317  whz              
24 months   JiVitA-3        BANGLADESH                     0                997   4317  whz              
24 months   JiVitA-4        BANGLADESH                     1               3144   4035  whz              
24 months   JiVitA-4        BANGLADESH                     0                891   4035  whz              
24 months   LCNI-5          MALAWI                         1                 34    184  whz              
24 months   LCNI-5          MALAWI                         0                150    184  whz              
24 months   MAL-ED          BANGLADESH                     1                 69    212  whz              
24 months   MAL-ED          BANGLADESH                     0                143    212  whz              
24 months   MAL-ED          BRAZIL                         1                 20    169  whz              
24 months   MAL-ED          BRAZIL                         0                149    169  whz              
24 months   MAL-ED          INDIA                          1                 17    224  whz              
24 months   MAL-ED          INDIA                          0                207    224  whz              
24 months   MAL-ED          NEPAL                          1                  8    227  whz              
24 months   MAL-ED          NEPAL                          0                219    227  whz              
24 months   MAL-ED          PERU                           1                 53    201  whz              
24 months   MAL-ED          PERU                           0                148    201  whz              
24 months   MAL-ED          SOUTH AFRICA                   1                  3    235  whz              
24 months   MAL-ED          SOUTH AFRICA                   0                232    235  whz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    213  whz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                209    213  whz              


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
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




# Results Detail

## Results Plots
![](/tmp/df03b239-17fb-4cb4-bc11-078df4dd0924/944fcd93-24e1-49c3-a284-86f870b4f421/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/df03b239-17fb-4cb4-bc11-078df4dd0924/944fcd93-24e1-49c3-a284-86f870b4f421/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/df03b239-17fb-4cb4-bc11-078df4dd0924/944fcd93-24e1-49c3-a284-86f870b4f421/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                -1.0977118   -1.2063967   -0.9890268
Birth       GMS-Nepal   NEPAL                          0                    NA                -1.1736233   -1.3713722   -0.9758744
Birth       JiVitA-3    BANGLADESH                     1                    NA                -0.7980360   -0.8249890   -0.7710829
Birth       JiVitA-3    BANGLADESH                     0                    NA                -0.7575818   -0.8100294   -0.7051343
Birth       JiVitA-4    BANGLADESH                     1                    NA                -0.6894599   -0.7453405   -0.6335792
Birth       JiVitA-4    BANGLADESH                     0                    NA                -0.7550154   -0.8917957   -0.6182351
Birth       MAL-ED      BANGLADESH                     1                    NA                -0.9286430   -1.1687274   -0.6885585
Birth       MAL-ED      BANGLADESH                     0                    NA                -0.9707160   -1.1601082   -0.7813239
Birth       MAL-ED      BRAZIL                         1                    NA                -0.3457143   -1.2397629    0.5483343
Birth       MAL-ED      BRAZIL                         0                    NA                 0.4981818    0.1725808    0.8237829
Birth       MAL-ED      PERU                           1                    NA                 0.1206656   -0.1178763    0.3592075
Birth       MAL-ED      PERU                           0                    NA                -0.1046840   -0.2513369    0.0419689
6 months    GMS-Nepal   NEPAL                          1                    NA                -0.5696402   -0.6704279   -0.4688524
6 months    GMS-Nepal   NEPAL                          0                    NA                -0.7601949   -0.9484855   -0.5719042
6 months    JiVitA-3    BANGLADESH                     1                    NA                -0.5993867   -0.6285217   -0.5702516
6 months    JiVitA-3    BANGLADESH                     0                    NA                -0.6019031   -0.6505456   -0.5532606
6 months    JiVitA-4    BANGLADESH                     1                    NA                -0.3431206   -0.3888901   -0.2973511
6 months    JiVitA-4    BANGLADESH                     0                    NA                -0.5569164   -0.6370864   -0.4767465
6 months    LCNI-5      MALAWI                         1                    NA                 0.3730856    0.0426920    0.7034793
6 months    LCNI-5      MALAWI                         0                    NA                 0.3955160    0.2689415    0.5220906
6 months    MAL-ED      BANGLADESH                     1                    NA                -0.1086588   -0.3479892    0.1306716
6 months    MAL-ED      BANGLADESH                     0                    NA                -0.1394867   -0.3022060    0.0232326
6 months    MAL-ED      BRAZIL                         1                    NA                 1.4894121    1.0999281    1.8788960
6 months    MAL-ED      BRAZIL                         0                    NA                 0.9081506    0.7308116    1.0854896
6 months    MAL-ED      INDIA                          1                    NA                -0.1135014   -0.5900503    0.3630476
6 months    MAL-ED      INDIA                          0                    NA                -0.7550620   -0.8864955   -0.6236285
6 months    MAL-ED      NEPAL                          1                    NA                -0.3168750   -0.9708901    0.3371401
6 months    MAL-ED      NEPAL                          0                    NA                 0.1292144   -0.0046984    0.2631272
6 months    MAL-ED      PERU                           1                    NA                 1.2440313    0.9980721    1.4899906
6 months    MAL-ED      PERU                           0                    NA                 0.9598323    0.8183103    1.1013542
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.7950000    1.1425391    2.4474609
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5246709    0.3926689    0.6566728
24 months   GMS-Nepal   NEPAL                          1                    NA                -1.0670503   -1.1657820   -0.9683186
24 months   GMS-Nepal   NEPAL                          0                    NA                -1.3695224   -1.6271346   -1.1119102
24 months   JiVitA-3    BANGLADESH                     1                    NA                -1.3458190   -1.3844030   -1.3072351
24 months   JiVitA-3    BANGLADESH                     0                    NA                -1.2997926   -1.3659735   -1.2336116
24 months   JiVitA-4    BANGLADESH                     1                    NA                -1.2288397   -1.2711852   -1.1864941
24 months   JiVitA-4    BANGLADESH                     0                    NA                -1.2456433   -1.3264866   -1.1647999
24 months   LCNI-5      MALAWI                         1                    NA                -0.0954109   -0.4151119    0.2242901
24 months   LCNI-5      MALAWI                         0                    NA                -0.0592991   -0.2209866    0.1023883
24 months   MAL-ED      BANGLADESH                     1                    NA                -0.9484702   -1.1503072   -0.7466332
24 months   MAL-ED      BANGLADESH                     0                    NA                -0.7570677   -0.9127507   -0.6013848
24 months   MAL-ED      BRAZIL                         1                    NA                 0.4131566   -0.1350493    0.9613624
24 months   MAL-ED      BRAZIL                         0                    NA                 0.4682120    0.2466732    0.6897508
24 months   MAL-ED      INDIA                          1                    NA                -0.7672612   -1.1877226   -0.3467997
24 months   MAL-ED      INDIA                          0                    NA                -0.9723891   -1.0949606   -0.8498177
24 months   MAL-ED      NEPAL                          1                    NA                -0.5987500   -1.1044659   -0.0930341
24 months   MAL-ED      NEPAL                          0                    NA                -0.3643379   -0.4810145   -0.2476613
24 months   MAL-ED      PERU                           1                    NA                 0.0307594   -0.1611174    0.2226362
24 months   MAL-ED      PERU                           0                    NA                 0.1329676   -0.0197456    0.2856808


### Parameter: E(Y)


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          NA                   NA                -1.1085743   -1.2077878   -1.0093609
Birth       JiVitA-3    BANGLADESH                     NA                   NA                -0.7892308   -0.8133344   -0.7651272
Birth       JiVitA-4    BANGLADESH                     NA                   NA                -0.7018985   -0.7560164   -0.6477806
Birth       MAL-ED      BANGLADESH                     NA                   NA                -0.9480769   -1.0934921   -0.8026617
Birth       MAL-ED      BRAZIL                         NA                   NA                 0.4029032    0.0896793    0.7161272
Birth       MAL-ED      PERU                           NA                   NA                -0.0458257   -0.1696487    0.0779973
6 months    GMS-Nepal   NEPAL                          NA                   NA                -0.6001075   -0.6890924   -0.5111227
6 months    JiVitA-3    BANGLADESH                     NA                   NA                -0.5995202   -0.6251579   -0.5738825
6 months    JiVitA-4    BANGLADESH                     NA                   NA                -0.3960017   -0.4356255   -0.3563778
6 months    LCNI-5      MALAWI                         NA                   NA                 0.3925000    0.2735307    0.5114693
6 months    MAL-ED      BANGLADESH                     NA                   NA                -0.1354583   -0.2647102   -0.0062065
6 months    MAL-ED      BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    MAL-ED      INDIA                          NA                   NA                -0.7161910   -0.8437667   -0.5886153
6 months    MAL-ED      NEPAL                          NA                   NA                 0.1140284   -0.0176364    0.2456931
6 months    MAL-ED      PERU                           NA                   NA                 1.0511642    0.9291821    1.1731463
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5508093    0.4191033    0.6825154
24 months   GMS-Nepal   NEPAL                          NA                   NA                -1.1236255   -1.2167712   -1.0304797
24 months   JiVitA-3    BANGLADESH                     NA                   NA                -1.3352235   -1.3688736   -1.3015735
24 months   JiVitA-4    BANGLADESH                     NA                   NA                -1.2344089   -1.2708428   -1.1979750
24 months   LCNI-5      MALAWI                         NA                   NA                -0.0770652   -0.2204213    0.0662909
24 months   MAL-ED      BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED      BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   MAL-ED      INDIA                          NA                   NA                -0.9581250   -1.0746982   -0.8415518
24 months   MAL-ED      NEPAL                          NA                   NA                -0.3725991   -0.4867052   -0.2584930
24 months   MAL-ED      PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362


### Parameter: ATE


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal   NEPAL                          0                    1                 -0.0759116   -0.2914873    0.1396642
Birth       JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3    BANGLADESH                     0                    1                  0.0404541   -0.0181605    0.0990687
Birth       JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4    BANGLADESH                     0                    1                 -0.0655556   -0.2092478    0.0781367
Birth       MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH                     0                    1                 -0.0420731   -0.3512901    0.2671439
Birth       MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BRAZIL                         0                    1                  0.8438961   -0.1075969    1.7953891
Birth       MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU                           0                    1                 -0.2253496   -0.5062481    0.0555489
6 months    GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL                          0                    1                 -0.1905547   -0.4043523    0.0232430
6 months    JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3    BANGLADESH                     0                    1                 -0.0025165   -0.0577843    0.0527513
6 months    JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4    BANGLADESH                     0                    1                 -0.2137959   -0.3058832   -0.1217085
6 months    LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5      MALAWI                         0                    1                  0.0224304   -0.3316005    0.3764613
6 months    MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH                     0                    1                 -0.0308279   -0.3268593    0.2652035
6 months    MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL                         0                    1                 -0.5812615   -1.0072751   -0.1552478
6 months    MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA                          0                    1                 -0.6415606   -1.1363441   -0.1467771
6 months    MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      NEPAL                          0                    1                  0.4460894   -0.2214946    1.1136734
6 months    MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU                           0                    1                 -0.2841991   -0.5691140    0.0007159
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -1.2703291   -1.9360090   -0.6046493
24 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL                          0                    1                 -0.3024721   -0.5791623   -0.0257819
24 months   JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3    BANGLADESH                     0                    1                  0.0460265   -0.0298831    0.1219361
24 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4    BANGLADESH                     0                    1                 -0.0168036   -0.1063312    0.0727240
24 months   LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5      MALAWI                         0                    1                  0.0361118   -0.3218832    0.3941068
24 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH                     0                    1                  0.1914025   -0.0693868    0.4521919
24 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL                         0                    1                  0.0550554   -0.5371308    0.6472416
24 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA                          0                    1                 -0.2051280   -0.6433236    0.2330677
24 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      NEPAL                          0                    1                  0.2344121   -0.2845889    0.7534131
24 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      PERU                           0                    1                  0.1022082   -0.1439276    0.3483441


### Parameter: PAR


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                -0.0108626   -0.0519586    0.0302335
Birth       JiVitA-3    BANGLADESH                     1                    NA                 0.0088052   -0.0039256    0.0215360
Birth       JiVitA-4    BANGLADESH                     1                    NA                -0.0124386   -0.0404624    0.0155852
Birth       MAL-ED      BANGLADESH                     1                    NA                -0.0194340   -0.2346174    0.1957495
Birth       MAL-ED      BRAZIL                         1                    NA                 0.7486175   -0.0981055    1.5953405
Birth       MAL-ED      PERU                           1                    NA                -0.1664913   -0.3782046    0.0452220
6 months    GMS-Nepal   NEPAL                          1                    NA                -0.0304673   -0.0733588    0.0124241
6 months    JiVitA-3    BANGLADESH                     1                    NA                -0.0001336   -0.0128385    0.0125714
6 months    JiVitA-4    BANGLADESH                     1                    NA                -0.0528811   -0.0747028   -0.0310594
6 months    LCNI-5      MALAWI                         1                    NA                 0.0194144   -0.2740837    0.3129124
6 months    MAL-ED      BANGLADESH                     1                    NA                -0.0267996   -0.2273868    0.1737877
6 months    MAL-ED      BRAZIL                         1                    NA                -0.5173347   -0.8953751   -0.1392944
6 months    MAL-ED      INDIA                          1                    NA                -0.6026896   -1.0644852   -0.1408941
6 months    MAL-ED      NEPAL                          1                    NA                 0.4309034   -0.2140376    1.0758444
6 months    MAL-ED      PERU                           1                    NA                -0.1928671   -0.4052232    0.0194890
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.2441907   -1.8936261   -0.5947552
24 months   GMS-Nepal   NEPAL                          1                    NA                -0.0565751   -0.1083914   -0.0047589
24 months   JiVitA-3    BANGLADESH                     1                    NA                 0.0105955   -0.0069958    0.0281868
24 months   JiVitA-4    BANGLADESH                     1                    NA                -0.0055693   -0.0260233    0.0148848
24 months   LCNI-5      MALAWI                         1                    NA                 0.0183457   -0.2770945    0.3137860
24 months   MAL-ED      BANGLADESH                     1                    NA                 0.1291778   -0.0501730    0.3085286
24 months   MAL-ED      BRAZIL                         1                    NA                 0.0494667   -0.4764832    0.5754166
24 months   MAL-ED      INDIA                          1                    NA                -0.1908638   -0.6006696    0.2189419
24 months   MAL-ED      NEPAL                          1                    NA                 0.2261509   -0.2745910    0.7268928
24 months   MAL-ED      PERU                           1                    NA                 0.0804388   -0.1017917    0.2626693

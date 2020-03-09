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
![](/tmp/83ee3e93-5c2a-4c12-b9b4-0400e667e47b/00af7626-45a6-4610-af82-d529ced73438/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/83ee3e93-5c2a-4c12-b9b4-0400e667e47b/00af7626-45a6-4610-af82-d529ced73438/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/83ee3e93-5c2a-4c12-b9b4-0400e667e47b/00af7626-45a6-4610-af82-d529ced73438/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                -1.0967292   -1.2056030   -0.9878555
Birth       GMS-Nepal   NEPAL                          0                    NA                -1.1572862   -1.3626684   -0.9519039
Birth       JiVitA-3    BANGLADESH                     1                    NA                -0.7983711   -0.8253350   -0.7714071
Birth       JiVitA-3    BANGLADESH                     0                    NA                -0.7574388   -0.8097109   -0.7051668
Birth       JiVitA-4    BANGLADESH                     1                    NA                -0.6890608   -0.7449484   -0.6331733
Birth       JiVitA-4    BANGLADESH                     0                    NA                -0.7532501   -0.8880306   -0.6184697
Birth       MAL-ED      BANGLADESH                     1                    NA                -0.9230782   -1.1920549   -0.6541016
Birth       MAL-ED      BANGLADESH                     0                    NA                -0.9556512   -1.1388625   -0.7724400
Birth       MAL-ED      BRAZIL                         1                    NA                -0.3457143   -1.2397629    0.5483343
Birth       MAL-ED      BRAZIL                         0                    NA                 0.4981818    0.1725808    0.8237829
Birth       MAL-ED      PERU                           1                    NA                 0.1287044   -0.0996142    0.3570229
Birth       MAL-ED      PERU                           0                    NA                -0.1057057   -0.2518797    0.0404683
6 months    GMS-Nepal   NEPAL                          1                    NA                -0.5680734   -0.6685827   -0.4675641
6 months    GMS-Nepal   NEPAL                          0                    NA                -0.7257138   -0.9169140   -0.5345136
6 months    JiVitA-3    BANGLADESH                     1                    NA                -0.5989867   -0.6281354   -0.5698380
6 months    JiVitA-3    BANGLADESH                     0                    NA                -0.5998589   -0.6487267   -0.5509912
6 months    JiVitA-4    BANGLADESH                     1                    NA                -0.3441577   -0.3898575   -0.2984580
6 months    JiVitA-4    BANGLADESH                     0                    NA                -0.5549801   -0.6384761   -0.4714842
6 months    LCNI-5      MALAWI                         1                    NA                 0.3749676    0.0405006    0.7094346
6 months    LCNI-5      MALAWI                         0                    NA                 0.3946809    0.2675083    0.5218535
6 months    MAL-ED      BANGLADESH                     1                    NA                -0.1498306   -0.3872322    0.0875710
6 months    MAL-ED      BANGLADESH                     0                    NA                -0.1294919   -0.2875357    0.0285518
6 months    MAL-ED      BRAZIL                         1                    NA                 1.6352552    1.2329226    2.0375879
6 months    MAL-ED      BRAZIL                         0                    NA                 0.8964848    0.7195793    1.0733904
6 months    MAL-ED      INDIA                          1                    NA                -0.1742001   -0.6713522    0.3229521
6 months    MAL-ED      INDIA                          0                    NA                -0.7541812   -0.8856143   -0.6227482
6 months    MAL-ED      NEPAL                          1                    NA                -0.3168750   -0.9708901    0.3371401
6 months    MAL-ED      NEPAL                          0                    NA                 0.1292144   -0.0046984    0.2631272
6 months    MAL-ED      PERU                           1                    NA                 1.3140491    1.0748467    1.5532515
6 months    MAL-ED      PERU                           0                    NA                 0.9564240    0.8157999    1.0970480
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.7950000    1.1425391    2.4474609
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5246709    0.3926689    0.6566728
24 months   GMS-Nepal   NEPAL                          1                    NA                -1.0677721   -1.1662087   -0.9693355
24 months   GMS-Nepal   NEPAL                          0                    NA                -1.3818385   -1.6313995   -1.1322775
24 months   JiVitA-3    BANGLADESH                     1                    NA                -1.3463274   -1.3849094   -1.3077454
24 months   JiVitA-3    BANGLADESH                     0                    NA                -1.3012426   -1.3681647   -1.2343204
24 months   JiVitA-4    BANGLADESH                     1                    NA                -1.2319157   -1.2746266   -1.1892048
24 months   JiVitA-4    BANGLADESH                     0                    NA                -1.2436394   -1.3259691   -1.1613097
24 months   LCNI-5      MALAWI                         1                    NA                -0.1591668   -0.4727848    0.1544512
24 months   LCNI-5      MALAWI                         0                    NA                -0.0639324   -0.2250848    0.0972200
24 months   MAL-ED      BANGLADESH                     1                    NA                -0.9278503   -1.1236527   -0.7320478
24 months   MAL-ED      BANGLADESH                     0                    NA                -0.7721251   -0.9294952   -0.6147549
24 months   MAL-ED      BRAZIL                         1                    NA                 0.4277735   -0.1877626    1.0433095
24 months   MAL-ED      BRAZIL                         0                    NA                 0.4664424    0.2446131    0.6882717
24 months   MAL-ED      INDIA                          1                    NA                -0.6750044   -1.0479445   -0.3020642
24 months   MAL-ED      INDIA                          0                    NA                -0.9767644   -1.0991709   -0.8543579
24 months   MAL-ED      NEPAL                          1                    NA                -0.5987500   -1.1044659   -0.0930341
24 months   MAL-ED      NEPAL                          0                    NA                -0.3643379   -0.4810145   -0.2476613
24 months   MAL-ED      PERU                           1                    NA                 0.0346484   -0.1561606    0.2254574
24 months   MAL-ED      PERU                           0                    NA                 0.1390900   -0.0128088    0.2909888


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
Birth       GMS-Nepal   NEPAL                          0                    1                 -0.0605569   -0.2842367    0.1631228
Birth       JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3    BANGLADESH                     0                    1                  0.0409322   -0.0175294    0.0993939
Birth       JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4    BANGLADESH                     0                    1                 -0.0641893   -0.2058566    0.0774781
Birth       MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH                     0                    1                 -0.0325730   -0.3611328    0.2959868
Birth       MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BRAZIL                         0                    1                  0.8438961   -0.1075969    1.7953891
Birth       MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU                           0                    1                 -0.2344101   -0.5062777    0.0374575
6 months    GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL                          0                    1                 -0.1576404   -0.3737604    0.0584797
6 months    JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3    BANGLADESH                     0                    1                 -0.0008723   -0.0563944    0.0546499
6 months    JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4    BANGLADESH                     0                    1                 -0.2108224   -0.3063924   -0.1152525
6 months    LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5      MALAWI                         0                    1                  0.0197133   -0.3385432    0.3779699
6 months    MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH                     0                    1                  0.0203386   -0.2654789    0.3061561
6 months    MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL                         0                    1                 -0.7387704   -1.1765655   -0.3009753
6 months    MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA                          0                    1                 -0.5799812   -1.0949494   -0.0650129
6 months    MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      NEPAL                          0                    1                  0.4460894   -0.2214946    1.1136734
6 months    MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU                           0                    1                 -0.3576251   -0.6355312   -0.0797191
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -1.2703291   -1.9360090   -0.6046493
24 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL                          0                    1                 -0.3140664   -0.5821000   -0.0460328
24 months   JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3    BANGLADESH                     0                    1                  0.0450848   -0.0315365    0.1217061
24 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4    BANGLADESH                     0                    1                 -0.0117237   -0.1030164    0.0795689
24 months   LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5      MALAWI                         0                    1                  0.0952344   -0.2591617    0.4496305
24 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH                     0                    1                  0.1557252   -0.0992527    0.4107031
24 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL                         0                    1                  0.0386690   -0.6154221    0.6927600
24 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA                          0                    1                 -0.3017601   -0.6946157    0.0910956
24 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      NEPAL                          0                    1                  0.2344121   -0.2845889    0.7534131
24 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      PERU                           0                    1                  0.1044416   -0.1374377    0.3463209


### Parameter: PAR


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                -0.0118451   -0.0539545    0.0302643
Birth       JiVitA-3    BANGLADESH                     1                    NA                 0.0091403   -0.0036074    0.0218880
Birth       JiVitA-4    BANGLADESH                     1                    NA                -0.0128377   -0.0408491    0.0151738
Birth       MAL-ED      BANGLADESH                     1                    NA                -0.0249987   -0.2629280    0.2129306
Birth       MAL-ED      BRAZIL                         1                    NA                 0.7486175   -0.0981055    1.5953405
Birth       MAL-ED      PERU                           1                    NA                -0.1745300   -0.3772328    0.0281727
6 months    GMS-Nepal   NEPAL                          1                    NA                -0.0320341   -0.0748379    0.0107697
6 months    JiVitA-3    BANGLADESH                     1                    NA                -0.0005335   -0.0132724    0.0122053
6 months    JiVitA-4    BANGLADESH                     1                    NA                -0.0518440   -0.0737177   -0.0299702
6 months    LCNI-5      MALAWI                         1                    NA                 0.0175324   -0.2812228    0.3162877
6 months    MAL-ED      BANGLADESH                     1                    NA                 0.0143722   -0.1812721    0.2100166
6 months    MAL-ED      BRAZIL                         1                    NA                -0.6631779   -1.0566822   -0.2696735
6 months    MAL-ED      INDIA                          1                    NA                -0.5419909   -1.0221502   -0.0618317
6 months    MAL-ED      NEPAL                          1                    NA                 0.4309034   -0.2140376    1.0758444
6 months    MAL-ED      PERU                           1                    NA                -0.2628849   -0.4687385   -0.0570313
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.2441907   -1.8936261   -0.5947552
24 months   GMS-Nepal   NEPAL                          1                    NA                -0.0558533   -0.1068641   -0.0048426
24 months   JiVitA-3    BANGLADESH                     1                    NA                 0.0111038   -0.0065511    0.0287588
24 months   JiVitA-4    BANGLADESH                     1                    NA                -0.0024932   -0.0232730    0.0182865
24 months   LCNI-5      MALAWI                         1                    NA                 0.0821016   -0.2113866    0.3755897
24 months   MAL-ED      BANGLADESH                     1                    NA                 0.1085578   -0.0634954    0.2806111
24 months   MAL-ED      BRAZIL                         1                    NA                 0.0348498   -0.5571302    0.6268298
24 months   MAL-ED      INDIA                          1                    NA                -0.2831206   -0.6475512    0.0813099
24 months   MAL-ED      NEPAL                          1                    NA                 0.2261509   -0.2745910    0.7268928
24 months   MAL-ED      PERU                           1                    NA                 0.0765498   -0.1026395    0.2557391

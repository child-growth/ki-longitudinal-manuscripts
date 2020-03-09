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

agecat      studyid         country                        predfeed36    n_cell      n
----------  --------------  -----------------------------  -----------  -------  -----
Birth       EE              PAKISTAN                       1                  2      6
Birth       EE              PAKISTAN                       0                  4      6
Birth       GMS-Nepal       NEPAL                          1                396    491
Birth       GMS-Nepal       NEPAL                          0                 95    491
Birth       JiVitA-3        BANGLADESH                     1               6746   8619
Birth       JiVitA-3        BANGLADESH                     0               1873   8619
Birth       JiVitA-4        BANGLADESH                     1               1714   2128
Birth       JiVitA-4        BANGLADESH                     0                414   2128
Birth       MAL-ED          BANGLADESH                     1                 69    208
Birth       MAL-ED          BANGLADESH                     0                139    208
Birth       MAL-ED          BRAZIL                         1                  7     62
Birth       MAL-ED          BRAZIL                         0                 55     62
Birth       MAL-ED          INDIA                          1                  4     40
Birth       MAL-ED          INDIA                          0                 36     40
Birth       MAL-ED          NEPAL                          1                  1     25
Birth       MAL-ED          NEPAL                          0                 24     25
Birth       MAL-ED          PERU                           1                 57    218
Birth       MAL-ED          PERU                           0                161    218
Birth       MAL-ED          SOUTH AFRICA                   1                  2    104
Birth       MAL-ED          SOUTH AFRICA                   0                102    104
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0    111
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                111    111
6 months    EE              PAKISTAN                       1                  4      9
6 months    EE              PAKISTAN                       0                  5      9
6 months    GMS-Nepal       NEPAL                          1                422    527
6 months    GMS-Nepal       NEPAL                          0                105    527
6 months    JiVitA-3        BANGLADESH                     1               6576   8535
6 months    JiVitA-3        BANGLADESH                     0               1959   8535
6 months    JiVitA-4        BANGLADESH                     1               3252   4188
6 months    JiVitA-4        BANGLADESH                     0                936   4188
6 months    LCNI-5          MALAWI                         1                 47    272
6 months    LCNI-5          MALAWI                         0                225    272
6 months    MAL-ED          BANGLADESH                     1                 81    240
6 months    MAL-ED          BANGLADESH                     0                159    240
6 months    MAL-ED          BRAZIL                         1                 25    209
6 months    MAL-ED          BRAZIL                         0                184    209
6 months    MAL-ED          INDIA                          1                 17    233
6 months    MAL-ED          INDIA                          0                216    233
6 months    MAL-ED          NEPAL                          1                  8    235
6 months    MAL-ED          NEPAL                          0                227    235
6 months    MAL-ED          PERU                           1                 72    272
6 months    MAL-ED          PERU                           0                200    272
6 months    MAL-ED          SOUTH AFRICA                   1                  3    250
6 months    MAL-ED          SOUTH AFRICA                   0                247    250
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  5    243
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                238    243
6 months    SAS-FoodSuppl   INDIA                          1                  0    168
6 months    SAS-FoodSuppl   INDIA                          0                168    168
24 months   EE              PAKISTAN                       1                  0      3
24 months   EE              PAKISTAN                       0                  3      3
24 months   GMS-Nepal       NEPAL                          1                362    445
24 months   GMS-Nepal       NEPAL                          0                 83    445
24 months   JiVitA-3        BANGLADESH                     1               3320   4317
24 months   JiVitA-3        BANGLADESH                     0                997   4317
24 months   JiVitA-4        BANGLADESH                     1               3144   4035
24 months   JiVitA-4        BANGLADESH                     0                891   4035
24 months   LCNI-5          MALAWI                         1                 34    184
24 months   LCNI-5          MALAWI                         0                150    184
24 months   MAL-ED          BANGLADESH                     1                 69    212
24 months   MAL-ED          BANGLADESH                     0                143    212
24 months   MAL-ED          BRAZIL                         1                 20    169
24 months   MAL-ED          BRAZIL                         0                149    169
24 months   MAL-ED          INDIA                          1                 17    224
24 months   MAL-ED          INDIA                          0                207    224
24 months   MAL-ED          NEPAL                          1                  8    227
24 months   MAL-ED          NEPAL                          0                219    227
24 months   MAL-ED          PERU                           1                 53    201
24 months   MAL-ED          PERU                           0                148    201
24 months   MAL-ED          SOUTH AFRICA                   1                  3    235
24 months   MAL-ED          SOUTH AFRICA                   0                232    235
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                209    213


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
![](/tmp/e8a86a48-5913-45fd-9685-d8afffea3a56/6e53d286-5426-4285-8113-6910438690b3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e8a86a48-5913-45fd-9685-d8afffea3a56/6e53d286-5426-4285-8113-6910438690b3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e8a86a48-5913-45fd-9685-d8afffea3a56/6e53d286-5426-4285-8113-6910438690b3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                -1.0982164   -1.2065599   -0.9898730
Birth       GMS-Nepal   NEPAL                          0                    NA                -1.1513143   -1.3526218   -0.9500069
Birth       JiVitA-3    BANGLADESH                     1                    NA                -0.7981339   -0.8250999   -0.7711680
Birth       JiVitA-3    BANGLADESH                     0                    NA                -0.7568776   -0.8092877   -0.7044675
Birth       JiVitA-4    BANGLADESH                     1                    NA                -0.6884460   -0.7445914   -0.6323006
Birth       JiVitA-4    BANGLADESH                     0                    NA                -0.7565125   -0.8894754   -0.6235496
Birth       MAL-ED      BANGLADESH                     1                    NA                -0.9136810   -1.1966492   -0.6307128
Birth       MAL-ED      BANGLADESH                     0                    NA                -0.9613823   -1.1490350   -0.7737295
Birth       MAL-ED      BRAZIL                         1                    NA                -0.3457143   -1.2397629    0.5483343
Birth       MAL-ED      BRAZIL                         0                    NA                 0.4981818    0.1725808    0.8237829
Birth       MAL-ED      PERU                           1                    NA                 0.1474876   -0.0988537    0.3938290
Birth       MAL-ED      PERU                           0                    NA                -0.1096930   -0.2554079    0.0360220
6 months    GMS-Nepal   NEPAL                          1                    NA                -0.5690408   -0.6698037   -0.4682779
6 months    GMS-Nepal   NEPAL                          0                    NA                -0.7679109   -0.9567964   -0.5790255
6 months    JiVitA-3    BANGLADESH                     1                    NA                -0.5992736   -0.6284625   -0.5700847
6 months    JiVitA-3    BANGLADESH                     0                    NA                -0.6004238   -0.6494019   -0.5514458
6 months    JiVitA-4    BANGLADESH                     1                    NA                -0.3440945   -0.3900128   -0.2981762
6 months    JiVitA-4    BANGLADESH                     0                    NA                -0.5530078   -0.6396425   -0.4663731
6 months    LCNI-5      MALAWI                         1                    NA                 0.3661638    0.0218323    0.7104953
6 months    LCNI-5      MALAWI                         0                    NA                 0.3981128    0.2712218    0.5250038
6 months    MAL-ED      BANGLADESH                     1                    NA                -0.1463313   -0.3885548    0.0958922
6 months    MAL-ED      BANGLADESH                     0                    NA                -0.1284741   -0.2873987    0.0304505
6 months    MAL-ED      BRAZIL                         1                    NA                 1.4711915    1.0270238    1.9153592
6 months    MAL-ED      BRAZIL                         0                    NA                 0.9033478    0.7264143    1.0802814
6 months    MAL-ED      INDIA                          1                    NA                -0.6018823   -1.0484557   -0.1553089
6 months    MAL-ED      INDIA                          0                    NA                -0.7576782   -0.8891106   -0.6262457
6 months    MAL-ED      NEPAL                          1                    NA                -0.3168750   -0.9708901    0.3371401
6 months    MAL-ED      NEPAL                          0                    NA                 0.1292144   -0.0046984    0.2631272
6 months    MAL-ED      PERU                           1                    NA                 1.3695942    1.1318993    1.6072892
6 months    MAL-ED      PERU                           0                    NA                 0.9672584    0.8264190    1.1080978
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.7950000    1.1425391    2.4474609
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5246709    0.3926689    0.6566728
24 months   GMS-Nepal   NEPAL                          1                    NA                -1.0605764   -1.1582703   -0.9628824
24 months   GMS-Nepal   NEPAL                          0                    NA                -1.3880921   -1.6359223   -1.1402620
24 months   JiVitA-3    BANGLADESH                     1                    NA                -1.3459319   -1.3845159   -1.3073479
24 months   JiVitA-3    BANGLADESH                     0                    NA                -1.3038062   -1.3707083   -1.2369040
24 months   JiVitA-4    BANGLADESH                     1                    NA                -1.2296638   -1.2738577   -1.1854700
24 months   JiVitA-4    BANGLADESH                     0                    NA                -1.2411718   -1.3255828   -1.1567608
24 months   LCNI-5      MALAWI                         1                    NA                -0.1217517   -0.4483562    0.2048528
24 months   LCNI-5      MALAWI                         0                    NA                -0.0636499   -0.2247983    0.0974986
24 months   MAL-ED      BANGLADESH                     1                    NA                -0.9609317   -1.1591403   -0.7627231
24 months   MAL-ED      BANGLADESH                     0                    NA                -0.7546125   -0.9100582   -0.5991669
24 months   MAL-ED      BRAZIL                         1                    NA                 0.4444465   -0.1098157    0.9987086
24 months   MAL-ED      BRAZIL                         0                    NA                 0.4626084    0.2406566    0.6845602
24 months   MAL-ED      INDIA                          1                    NA                -1.1722914   -1.5933996   -0.7511832
24 months   MAL-ED      INDIA                          0                    NA                -0.9773700   -1.0995532   -0.8551868
24 months   MAL-ED      NEPAL                          1                    NA                -0.5987500   -1.1044659   -0.0930341
24 months   MAL-ED      NEPAL                          0                    NA                -0.3643379   -0.4810145   -0.2476613
24 months   MAL-ED      PERU                           1                    NA                 0.0686444   -0.1206820    0.2579708
24 months   MAL-ED      PERU                           0                    NA                 0.1370463   -0.0162342    0.2903269


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
Birth       GMS-Nepal   NEPAL                          0                    1                 -0.0530979   -0.2711689    0.1649731
Birth       JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3    BANGLADESH                     0                    1                  0.0412564   -0.0173481    0.0998608
Birth       JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4    BANGLADESH                     0                    1                 -0.0680665   -0.2086611    0.0725282
Birth       MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH                     0                    1                 -0.0477013   -0.3984137    0.3030111
Birth       MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BRAZIL                         0                    1                  0.8438961   -0.1075969    1.7953891
Birth       MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU                           0                    1                 -0.2571806   -0.5453190    0.0309578
6 months    GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL                          0                    1                 -0.1988701   -0.4133808    0.0156406
6 months    JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3    BANGLADESH                     0                    1                 -0.0011502   -0.0568820    0.0545815
6 months    JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4    BANGLADESH                     0                    1                 -0.2089133   -0.3066883   -0.1111383
6 months    LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5      MALAWI                         0                    1                  0.0319489   -0.3347838    0.3986817
6 months    MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH                     0                    1                  0.0178572   -0.2759646    0.3116790
6 months    MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL                         0                    1                 -0.5678436   -1.0435373   -0.0921500
6 months    MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA                          0                    1                 -0.1557959   -0.6218974    0.3103056
6 months    MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      NEPAL                          0                    1                  0.4460894   -0.2214946    1.1136734
6 months    MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU                           0                    1                 -0.4023358   -0.6790813   -0.1255904
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -1.2703291   -1.9360090   -0.6046493
24 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL                          0                    1                 -0.3275158   -0.5947002   -0.0603313
24 months   JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3    BANGLADESH                     0                    1                  0.0421257   -0.0344482    0.1186997
24 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4    BANGLADESH                     0                    1                 -0.0115080   -0.1050271    0.0820112
24 months   LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5      MALAWI                         0                    1                  0.0581018   -0.3073429    0.4235465
24 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH                     0                    1                  0.2063191   -0.0470279    0.4596661
24 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL                         0                    1                  0.0181619   -0.5785694    0.6148933
24 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA                          0                    1                  0.1949214   -0.2472093    0.6370520
24 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      NEPAL                          0                    1                  0.2344121   -0.2845889    0.7534131
24 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      PERU                           0                    1                  0.0684019   -0.1755302    0.3123341


### Parameter: PAR


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                -0.0103579   -0.0514737    0.0307578
Birth       JiVitA-3    BANGLADESH                     1                    NA                 0.0089032   -0.0038472    0.0216535
Birth       JiVitA-4    BANGLADESH                     1                    NA                -0.0134525   -0.0417445    0.0148395
Birth       MAL-ED      BANGLADESH                     1                    NA                -0.0343960   -0.2903322    0.2215403
Birth       MAL-ED      BRAZIL                         1                    NA                 0.7486175   -0.0981055    1.5953405
Birth       MAL-ED      PERU                           1                    NA                -0.1933133   -0.4127323    0.0261057
6 months    GMS-Nepal   NEPAL                          1                    NA                -0.0310667   -0.0739313    0.0117978
6 months    JiVitA-3    BANGLADESH                     1                    NA                -0.0002466   -0.0130333    0.0125401
6 months    JiVitA-4    BANGLADESH                     1                    NA                -0.0519072   -0.0738401   -0.0299742
6 months    LCNI-5      MALAWI                         1                    NA                 0.0263362   -0.2807886    0.3334610
6 months    MAL-ED      BANGLADESH                     1                    NA                 0.0108730   -0.1906232    0.2123692
6 months    MAL-ED      BRAZIL                         1                    NA                -0.4991141   -0.9267787   -0.0714495
6 months    MAL-ED      INDIA                          1                    NA                -0.1143087   -0.5482698    0.3196524
6 months    MAL-ED      NEPAL                          1                    NA                 0.4309034   -0.2140376    1.0758444
6 months    MAL-ED      PERU                           1                    NA                -0.3184300   -0.5241066   -0.1127534
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.2441907   -1.8936261   -0.5947552
24 months   GMS-Nepal   NEPAL                          1                    NA                -0.0630491   -0.1150573   -0.0110410
24 months   JiVitA-3    BANGLADESH                     1                    NA                 0.0107084   -0.0068403    0.0282570
24 months   JiVitA-4    BANGLADESH                     1                    NA                -0.0047451   -0.0270884    0.0175982
24 months   LCNI-5      MALAWI                         1                    NA                 0.0446865   -0.2615339    0.3509068
24 months   MAL-ED      BANGLADESH                     1                    NA                 0.1416392   -0.0324112    0.3156897
24 months   MAL-ED      BRAZIL                         1                    NA                 0.0181768   -0.5151146    0.5514682
24 months   MAL-ED      INDIA                          1                    NA                 0.2141664   -0.2034316    0.6317643
24 months   MAL-ED      NEPAL                          1                    NA                 0.2261509   -0.2745910    0.7268928
24 months   MAL-ED      PERU                           1                    NA                 0.0425538   -0.1375257    0.2226332

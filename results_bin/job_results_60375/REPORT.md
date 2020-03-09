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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** vagbrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* W_nrooms
* brthmon
* W_parity
* impfloor
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        vagbrth    wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  --------  ------------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          0                    0       11    324
0-24 months   CMC-V-BCS-2002   INDIA                          0                    1        9    324
0-24 months   CMC-V-BCS-2002   INDIA                          1                    0      109    324
0-24 months   CMC-V-BCS-2002   INDIA                          1                    1      195    324
0-24 months   IRC              INDIA                          0                    0       24    395
0-24 months   IRC              INDIA                          0                    1       39    395
0-24 months   IRC              INDIA                          1                    0      138    395
0-24 months   IRC              INDIA                          1                    1      194    395
0-24 months   JiVitA-3         BANGLADESH                     0                    0      206   7547
0-24 months   JiVitA-3         BANGLADESH                     0                    1      241   7547
0-24 months   JiVitA-3         BANGLADESH                     1                    0     4152   7547
0-24 months   JiVitA-3         BANGLADESH                     1                    1     2948   7547
0-24 months   JiVitA-4         BANGLADESH                     0                    0       84   1790
0-24 months   JiVitA-4         BANGLADESH                     0                    1       47   1790
0-24 months   JiVitA-4         BANGLADESH                     1                    0     1208   1790
0-24 months   JiVitA-4         BANGLADESH                     1                    1      451   1790
0-24 months   NIH-Crypto       BANGLADESH                     0                    0       18    189
0-24 months   NIH-Crypto       BANGLADESH                     0                    1       42    189
0-24 months   NIH-Crypto       BANGLADESH                     1                    0       58    189
0-24 months   NIH-Crypto       BANGLADESH                     1                    1       71    189
0-24 months   PROBIT           BELARUS                        0                    0       62   4408
0-24 months   PROBIT           BELARUS                        0                    1      418   4408
0-24 months   PROBIT           BELARUS                        1                    0      464   4408
0-24 months   PROBIT           BELARUS                        1                    1     3464   4408
0-24 months   PROVIDE          BANGLADESH                     0                    0       25    308
0-24 months   PROVIDE          BANGLADESH                     0                    1       44    308
0-24 months   PROVIDE          BANGLADESH                     1                    0      104    308
0-24 months   PROVIDE          BANGLADESH                     1                    1      135    308
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0       24    705
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       32    705
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      240    705
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      409    705
0-24 months   ZVITAMBO         ZIMBABWE                       0                    0      121   3582
0-24 months   ZVITAMBO         ZIMBABWE                       0                    1      184   3582
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0     1512   3582
0-24 months   ZVITAMBO         ZIMBABWE                       1                    1     1765   3582
0-6 months    CMC-V-BCS-2002   INDIA                          0                    0        8    201
0-6 months    CMC-V-BCS-2002   INDIA                          0                    1        8    201
0-6 months    CMC-V-BCS-2002   INDIA                          1                    0       58    201
0-6 months    CMC-V-BCS-2002   INDIA                          1                    1      127    201
0-6 months    IRC              INDIA                          0                    0       16    240
0-6 months    IRC              INDIA                          0                    1       31    240
0-6 months    IRC              INDIA                          1                    0       71    240
0-6 months    IRC              INDIA                          1                    1      122    240
0-6 months    JiVitA-3         BANGLADESH                     0                    0       82   4723
0-6 months    JiVitA-3         BANGLADESH                     0                    1      241   4723
0-6 months    JiVitA-3         BANGLADESH                     1                    0     1452   4723
0-6 months    JiVitA-3         BANGLADESH                     1                    1     2948   4723
0-6 months    JiVitA-4         BANGLADESH                     0                    0       17    510
0-6 months    JiVitA-4         BANGLADESH                     0                    1       33    510
0-6 months    JiVitA-4         BANGLADESH                     1                    0      184    510
0-6 months    JiVitA-4         BANGLADESH                     1                    1      276    510
0-6 months    NIH-Crypto       BANGLADESH                     0                    0        4    111
0-6 months    NIH-Crypto       BANGLADESH                     0                    1       36    111
0-6 months    NIH-Crypto       BANGLADESH                     1                    0       10    111
0-6 months    NIH-Crypto       BANGLADESH                     1                    1       61    111
0-6 months    PROBIT           BELARUS                        0                    0       47   4267
0-6 months    PROBIT           BELARUS                        0                    1      414   4267
0-6 months    PROBIT           BELARUS                        1                    0      376   4267
0-6 months    PROBIT           BELARUS                        1                    1     3430   4267
0-6 months    PROVIDE          BANGLADESH                     0                    0        6    185
0-6 months    PROVIDE          BANGLADESH                     0                    1       40    185
0-6 months    PROVIDE          BANGLADESH                     1                    0       34    185
0-6 months    PROVIDE          BANGLADESH                     1                    1      105    185
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0        8    335
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       17    335
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       91    335
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      219    335
0-6 months    ZVITAMBO         ZIMBABWE                       0                    0       41   2501
0-6 months    ZVITAMBO         ZIMBABWE                       0                    1      179   2501
0-6 months    ZVITAMBO         ZIMBABWE                       1                    0      591   2501
0-6 months    ZVITAMBO         ZIMBABWE                       1                    1     1690   2501
6-24 months   CMC-V-BCS-2002   INDIA                          0                    0        3    123
6-24 months   CMC-V-BCS-2002   INDIA                          0                    1        1    123
6-24 months   CMC-V-BCS-2002   INDIA                          1                    0       51    123
6-24 months   CMC-V-BCS-2002   INDIA                          1                    1       68    123
6-24 months   IRC              INDIA                          0                    0        8    155
6-24 months   IRC              INDIA                          0                    1        8    155
6-24 months   IRC              INDIA                          1                    0       67    155
6-24 months   IRC              INDIA                          1                    1       72    155
6-24 months   JiVitA-3         BANGLADESH                     0                    0      124   2824
6-24 months   JiVitA-3         BANGLADESH                     0                    1        0   2824
6-24 months   JiVitA-3         BANGLADESH                     1                    0     2700   2824
6-24 months   JiVitA-3         BANGLADESH                     1                    1        0   2824
6-24 months   JiVitA-4         BANGLADESH                     0                    0       67   1280
6-24 months   JiVitA-4         BANGLADESH                     0                    1       14   1280
6-24 months   JiVitA-4         BANGLADESH                     1                    0     1024   1280
6-24 months   JiVitA-4         BANGLADESH                     1                    1      175   1280
6-24 months   NIH-Crypto       BANGLADESH                     0                    0       14     78
6-24 months   NIH-Crypto       BANGLADESH                     0                    1        6     78
6-24 months   NIH-Crypto       BANGLADESH                     1                    0       48     78
6-24 months   NIH-Crypto       BANGLADESH                     1                    1       10     78
6-24 months   PROBIT           BELARUS                        0                    0       15    141
6-24 months   PROBIT           BELARUS                        0                    1        4    141
6-24 months   PROBIT           BELARUS                        1                    0       88    141
6-24 months   PROBIT           BELARUS                        1                    1       34    141
6-24 months   PROVIDE          BANGLADESH                     0                    0       19    123
6-24 months   PROVIDE          BANGLADESH                     0                    1        4    123
6-24 months   PROVIDE          BANGLADESH                     1                    0       70    123
6-24 months   PROVIDE          BANGLADESH                     1                    1       30    123
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0       16    370
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       15    370
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      149    370
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      190    370
6-24 months   ZVITAMBO         ZIMBABWE                       0                    0       80   1081
6-24 months   ZVITAMBO         ZIMBABWE                       0                    1        5   1081
6-24 months   ZVITAMBO         ZIMBABWE                       1                    0      921   1081
6-24 months   ZVITAMBO         ZIMBABWE                       1                    1       75   1081


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/38756e40-b53e-4b63-b060-20b2917adfb3/0420bb56-8f3b-40eb-a18d-cae2854b80b3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/38756e40-b53e-4b63-b060-20b2917adfb3/0420bb56-8f3b-40eb-a18d-cae2854b80b3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/38756e40-b53e-4b63-b060-20b2917adfb3/0420bb56-8f3b-40eb-a18d-cae2854b80b3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/38756e40-b53e-4b63-b060-20b2917adfb3/0420bb56-8f3b-40eb-a18d-cae2854b80b3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.4500000   0.2010987   0.6989013
0-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.6414474   0.5845014   0.6983933
0-24 months   IRC              INDIA                          0                    NA                0.6151986   0.4703035   0.7600938
0-24 months   IRC              INDIA                          1                    NA                0.5837655   0.5277725   0.6397585
0-24 months   JiVitA-3         BANGLADESH                     0                    NA                0.5031652   0.4468346   0.5594958
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.4158192   0.4043327   0.4273058
0-24 months   JiVitA-4         BANGLADESH                     0                    NA                0.3425996   0.2476292   0.4375700
0-24 months   JiVitA-4         BANGLADESH                     1                    NA                0.2716351   0.2495446   0.2937257
0-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.7393391   0.6196639   0.8590143
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.5739032   0.4872813   0.6605252
0-24 months   PROBIT           BELARUS                        0                    NA                0.8764208   0.8474318   0.9054097
0-24 months   PROBIT           BELARUS                        1                    NA                0.8815953   0.8715531   0.8916375
0-24 months   PROVIDE          BANGLADESH                     0                    NA                0.6348249   0.5097386   0.7599113
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.5677021   0.5039894   0.6314149
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5748452   0.4221771   0.7275132
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6297496   0.5904595   0.6690397
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.5928967   0.5358977   0.6498956
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.5387288   0.5215488   0.5559088
0-6 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.5000000   0.2484317   0.7515683
0-6 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.6864865   0.6188619   0.7541111
0-6 months    IRC              INDIA                          0                    NA                0.6734585   0.5279444   0.8189726
0-6 months    IRC              INDIA                          1                    NA                0.6338043   0.5641202   0.7034884
0-6 months    JiVitA-3         BANGLADESH                     0                    NA                0.7086817   0.6497293   0.7676341
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                0.6712579   0.6573548   0.6851610
0-6 months    JiVitA-4         BANGLADESH                     0                    NA                0.6605740   0.5231493   0.7979987
0-6 months    JiVitA-4         BANGLADESH                     1                    NA                0.6005809   0.5557505   0.6454113
0-6 months    PROBIT           BELARUS                        0                    NA                0.9076611   0.8810434   0.9342787
0-6 months    PROBIT           BELARUS                        1                    NA                0.9007365   0.8911647   0.9103083
0-6 months    PROVIDE          BANGLADESH                     0                    NA                0.8695652   0.7698152   0.9693153
0-6 months    PROVIDE          BANGLADESH                     1                    NA                0.7553957   0.6854609   0.8253304
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6800000   0.4929570   0.8670430
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7064516   0.6550297   0.7578735
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.8088381   0.7624505   0.8552258
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.7408778   0.7230398   0.7587158
6-24 months   IRC              INDIA                          0                    NA                0.5000000   0.2294903   0.7705097
6-24 months   IRC              INDIA                          1                    NA                0.5179856   0.4297875   0.6061838
6-24 months   JiVitA-4         BANGLADESH                     0                    NA                0.1643085   0.0779106   0.2507063
6-24 months   JiVitA-4         BANGLADESH                     1                    NA                0.1460626   0.1263571   0.1657681
6-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.3000000   0.0725547   0.5274453
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1724138   0.0793318   0.2654957
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5177389   0.3200835   0.7153942
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5601152   0.5055349   0.6146956
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0588235   0.0060316   0.1116154
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0753012   0.0590916   0.0915108


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6296296   0.5734927   0.6857666
0-24 months   IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4225520   0.4114127   0.4336913
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.2782123   0.2567662   0.2996583
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.5978836   0.5264156   0.6693516
0-24 months   PROBIT           BELARUS                        NA                   NA                0.8806715   0.8711794   0.8901636
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6255319   0.5876598   0.6634040
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.5441094   0.5276459   0.5605730
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.6716418   0.6057305   0.7375531
0-6 months    IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.6752064   0.6618507   0.6885622
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.6058824   0.5634305   0.6483342
0-6 months    PROBIT           BELARUS                        NA                   NA                0.9008671   0.8918443   0.9098900
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7044776   0.6548846   0.7540707
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.7473011   0.7302821   0.7643201
6-24 months   IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1476563   0.1284384   0.1668741
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.2051282   0.1132549   0.2970015
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5540541   0.5015831   0.6065250
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0740056   0.0585029   0.0895082


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   CMC-V-BCS-2002   INDIA                          1                    0                 1.4254386   0.8141162   2.4958048
0-24 months   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          1                    0                 0.9489058   0.7357208   1.2238639
0-24 months   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     1                    0                 0.8264069   0.7364215   0.9273880
0-24 months   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4         BANGLADESH                     1                    0                 0.7928647   0.5938568   1.0585624
0-24 months   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     1                    0                 0.7762382   0.6209692   0.9703312
0-24 months   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        1                    0                 1.0059042   0.9713294   1.0417097
0-24 months   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     1                    0                 0.8942657   0.7116782   1.1236976
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0955117   0.8339797   1.4390590
0-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 0.9086386   0.8216093   1.0048866
0-6 months    CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          1                    0                 1.3729730   0.8222475   2.2925636
0-6 months    IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          1                    0                 0.9411186   0.7381737   1.1998589
0-6 months    JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     1                    0                 0.9471924   0.8694019   1.0319433
0-6 months    JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4         BANGLADESH                     1                    0                 0.9091803   0.7285440   1.1346037
0-6 months    PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        1                    0                 0.9923709   0.9618983   1.0238089
0-6 months    PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     1                    0                 0.8687050   0.7496395   1.0066819
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0388994   0.7816335   1.3808416
0-6 months    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       1                    0                 0.9159779   0.8622416   0.9730631
6-24 months   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          1                    0                 1.0359712   0.5874383   1.8269773
6-24 months   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4         BANGLADESH                     1                    0                 0.8889535   0.5166065   1.5296714
6-24 months   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   NIH-Crypto       BANGLADESH                     1                    0                 0.5747126   0.2266054   1.4575764
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0818489   0.7301434   1.6029685
6-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.2801205   0.5086675   3.2215712


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.1796296   -0.0595047    0.4187640
0-24 months   IRC              INDIA                          0                    NA                -0.0253252   -0.1564317    0.1057813
0-24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.0806132   -0.1357581   -0.0254683
0-24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0643873   -0.1558939    0.0271193
0-24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.1414555   -0.2448786   -0.0380324
0-24 months   PROBIT           BELARUS                        0                    NA                 0.0042507   -0.0231102    0.0316117
0-24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0536561   -0.1643946    0.0570825
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0506867   -0.0953107    0.1966842
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0487872   -0.1033849    0.0058104
0-6 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.1716418   -0.0677857    0.4110693
0-6 months    IRC              INDIA                          0                    NA                -0.0359585   -0.1667002    0.0947832
0-6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.0334752   -0.0910947    0.0241442
0-6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0546917   -0.1860955    0.0767122
0-6 months    PROBIT           BELARUS                        0                    NA                -0.0067940   -0.0319871    0.0183992
0-6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0857814   -0.1775631    0.0060003
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0244776   -0.1550298    0.2039850
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0615370   -0.1059658   -0.0171083
6-24 months   IRC              INDIA                          0                    NA                 0.0161290   -0.2390237    0.2712818
6-24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0166522   -0.0998343    0.0665298
6-24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0948718   -0.2780930    0.0883494
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0363152   -0.1523927    0.2250231
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0151820   -0.0357019    0.0660660


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.2852941   -0.2199966    0.5813066
0-24 months   IRC              INDIA                          0                    NA                -0.0429333   -0.2903227    0.1570250
0-24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.1907771   -0.3287726   -0.0671127
0-24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.2314323   -0.6079807    0.0569380
0-24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.2365937   -0.4281050   -0.0707643
0-24 months   PROBIT           BELARUS                        0                    NA                 0.0048267   -0.0267318    0.0354152
0-24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0923244   -0.3005997    0.0825980
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0810298   -0.1850686    0.2873778
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0896644   -0.1948181    0.0062350
0-6 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.2555556   -0.2051932    0.5401588
0-6 months    IRC              INDIA                          0                    NA                -0.0564054   -0.2827617    0.1300080
0-6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.0495778   -0.1385009    0.0324000
0-6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0902678   -0.3304631    0.1065638
0-6 months    PROBIT           BELARUS                        0                    NA                -0.0075416   -0.0359002    0.0200407
0-6 months    PROVIDE          BANGLADESH                     0                    NA                -0.1094453   -0.2348561    0.0032289
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0347458   -0.2569309    0.2587375
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0823457   -0.1436386   -0.0243378
6-24 months   IRC              INDIA                          0                    NA                 0.0312500   -0.6139924    0.4185372
6-24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.1127770   -0.8451479    0.3289033
6-24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.4625000   -1.6271554    0.1858471
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0655444   -0.3458018    0.3511621
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.2051471   -0.8882704    0.6654127

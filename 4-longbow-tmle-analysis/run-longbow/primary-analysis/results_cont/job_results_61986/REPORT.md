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

**Intervention Variable:** trth2o

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nhh
* W_nchldlt5
* brthmon
* cleanck
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_brthmon
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        trth2o    n_cell     n  outcome_variable 
----------  ---------------  -----------------------------  -------  -------  ----  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1             24    24  whz              
Birth       CMC-V-BCS-2002   INDIA                          0              0    24  whz              
Birth       GMS-Nepal        NEPAL                          1              1     4  whz              
Birth       GMS-Nepal        NEPAL                          0              3     4  whz              
Birth       IRC              INDIA                          1            105   105  whz              
Birth       IRC              INDIA                          0              0   105  whz              
Birth       MAL-ED           BANGLADESH                     1            110   112  whz              
Birth       MAL-ED           BANGLADESH                     0              2   112  whz              
Birth       MAL-ED           BRAZIL                         1              3    20  whz              
Birth       MAL-ED           BRAZIL                         0             17    20  whz              
Birth       MAL-ED           INDIA                          1              0     1  whz              
Birth       MAL-ED           INDIA                          0              1     1  whz              
Birth       MAL-ED           NEPAL                          1              7     9  whz              
Birth       MAL-ED           NEPAL                          0              2     9  whz              
Birth       MAL-ED           PERU                           1             28    36  whz              
Birth       MAL-ED           PERU                           0              8    36  whz              
Birth       MAL-ED           SOUTH AFRICA                   1              1     5  whz              
Birth       MAL-ED           SOUTH AFRICA                   0              4     5  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              4    21  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             17    21  whz              
Birth       NIH-Crypto       BANGLADESH                     1            397   707  whz              
Birth       NIH-Crypto       BANGLADESH                     0            310   707  whz              
Birth       PROVIDE          BANGLADESH                     1             11   532  whz              
Birth       PROVIDE          BANGLADESH                     0            521   532  whz              
6 months    CMC-V-BCS-2002   INDIA                          1            120   120  whz              
6 months    CMC-V-BCS-2002   INDIA                          0              0   120  whz              
6 months    GMS-Nepal        NEPAL                          1              1     4  whz              
6 months    GMS-Nepal        NEPAL                          0              3     4  whz              
6 months    IRC              INDIA                          1            121   121  whz              
6 months    IRC              INDIA                          0              0   121  whz              
6 months    MAL-ED           BANGLADESH                     1            132   134  whz              
6 months    MAL-ED           BANGLADESH                     0              2   134  whz              
6 months    MAL-ED           BRAZIL                         1             13   103  whz              
6 months    MAL-ED           BRAZIL                         0             90   103  whz              
6 months    MAL-ED           INDIA                          1              4     9  whz              
6 months    MAL-ED           INDIA                          0              5     9  whz              
6 months    MAL-ED           NEPAL                          1             69    83  whz              
6 months    MAL-ED           NEPAL                          0             14    83  whz              
6 months    MAL-ED           PERU                           1             39    49  whz              
6 months    MAL-ED           PERU                           0             10    49  whz              
6 months    MAL-ED           SOUTH AFRICA                   1              2    12  whz              
6 months    MAL-ED           SOUTH AFRICA                   0             10    12  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6    42  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             36    42  whz              
6 months    NIH-Crypto       BANGLADESH                     1            396   715  whz              
6 months    NIH-Crypto       BANGLADESH                     0            319   715  whz              
6 months    PROVIDE          BANGLADESH                     1             14   603  whz              
6 months    PROVIDE          BANGLADESH                     0            589   603  whz              
24 months   CMC-V-BCS-2002   INDIA                          1            119   119  whz              
24 months   CMC-V-BCS-2002   INDIA                          0              0   119  whz              
24 months   GMS-Nepal        NEPAL                          1              1     4  whz              
24 months   GMS-Nepal        NEPAL                          0              3     4  whz              
24 months   IRC              INDIA                          1            121   121  whz              
24 months   IRC              INDIA                          0              0   121  whz              
24 months   MAL-ED           BANGLADESH                     1            133   135  whz              
24 months   MAL-ED           BANGLADESH                     0              2   135  whz              
24 months   MAL-ED           BRAZIL                         1             13   103  whz              
24 months   MAL-ED           BRAZIL                         0             90   103  whz              
24 months   MAL-ED           INDIA                          1              4     9  whz              
24 months   MAL-ED           INDIA                          0              5     9  whz              
24 months   MAL-ED           NEPAL                          1             69    83  whz              
24 months   MAL-ED           NEPAL                          0             14    83  whz              
24 months   MAL-ED           PERU                           1             39    49  whz              
24 months   MAL-ED           PERU                           0             10    49  whz              
24 months   MAL-ED           SOUTH AFRICA                   1              2    11  whz              
24 months   MAL-ED           SOUTH AFRICA                   0              9    11  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6    43  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             37    43  whz              
24 months   NIH-Crypto       BANGLADESH                     1            242   514  whz              
24 months   NIH-Crypto       BANGLADESH                     0            272   514  whz              
24 months   PROVIDE          BANGLADESH                     1             14   579  whz              
24 months   PROVIDE          BANGLADESH                     0            565   579  whz              


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA

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
![](/tmp/70b17bb1-1026-471c-b7f8-e8b10f705526/7b350326-f84d-451f-8409-fc9bb8060f5a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/70b17bb1-1026-471c-b7f8-e8b10f705526/7b350326-f84d-451f-8409-fc9bb8060f5a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/70b17bb1-1026-471c-b7f8-e8b10f705526/7b350326-f84d-451f-8409-fc9bb8060f5a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       PERU                           1                    NA                -0.2460714   -0.6028599    0.1107170
Birth       MAL-ED       PERU                           0                    NA                 0.0550000   -0.3367180    0.4467180
Birth       NIH-Crypto   BANGLADESH                     1                    NA                -1.2395389   -1.3650340   -1.1140437
Birth       NIH-Crypto   BANGLADESH                     0                    NA                -1.3036865   -1.4673866   -1.1399863
Birth       PROVIDE      BANGLADESH                     1                    NA                -1.5271779   -2.0017117   -1.0526440
Birth       PROVIDE      BANGLADESH                     0                    NA                -1.3003327   -1.3782361   -1.2224292
6 months    MAL-ED       BRAZIL                         1                    NA                 0.9503426    0.3967237    1.5039616
6 months    MAL-ED       BRAZIL                         0                    NA                 1.0192309    0.7600891    1.2783726
6 months    MAL-ED       NEPAL                          1                    NA                 0.1078812   -0.1550846    0.3708469
6 months    MAL-ED       NEPAL                          0                    NA                 0.4135456   -0.3629804    1.1900715
6 months    MAL-ED       PERU                           1                    NA                 1.0313707    0.6651332    1.3976081
6 months    MAL-ED       PERU                           0                    NA                 0.7653990    0.0521636    1.4786345
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.4100000    1.0960519    1.7239481
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.6305093    0.2775495    0.9834691
6 months    NIH-Crypto   BANGLADESH                     1                    NA                -0.0350136   -0.1497139    0.0796867
6 months    NIH-Crypto   BANGLADESH                     0                    NA                 0.0212772   -0.1119045    0.1544589
6 months    PROVIDE      BANGLADESH                     1                    NA                 0.9225268    0.3812019    1.4638517
6 months    PROVIDE      BANGLADESH                     0                    NA                -0.2201694   -0.3032634   -0.1370753
24 months   MAL-ED       BRAZIL                         1                    NA                 0.0767845   -0.5154414    0.6690104
24 months   MAL-ED       BRAZIL                         0                    NA                 0.5073791    0.2250669    0.7896914
24 months   MAL-ED       NEPAL                          1                    NA                -0.2738854   -0.4916380   -0.0561328
24 months   MAL-ED       NEPAL                          0                    NA                 0.1192828   -0.3826306    0.6211963
24 months   MAL-ED       PERU                           1                    NA                 0.0881517   -0.2420237    0.4183272
24 months   MAL-ED       PERU                           0                    NA                 0.1126026   -0.6153653    0.8405704
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2166667   -0.6845675    1.1179009
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0854054   -0.2281139    0.3989247
24 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.7506013   -0.9084937   -0.5927090
24 months   NIH-Crypto   BANGLADESH                     0                    NA                -0.4914023   -0.6507454   -0.3320592
24 months   PROVIDE      BANGLADESH                     1                    NA                -0.4087434   -0.7567734   -0.0607134
24 months   PROVIDE      BANGLADESH                     0                    NA                -0.9059813   -0.9903061   -0.8216566


### Parameter: E(Y)


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       PERU                           NA                   NA                -0.1791667   -0.4729428    0.1146094
Birth       NIH-Crypto   BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       PROVIDE      BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
6 months    MAL-ED       BRAZIL                         NA                   NA                 0.9731715    0.7347562    1.2115869
6 months    MAL-ED       NEPAL                          NA                   NA                 0.1447189   -0.1029021    0.3923399
6 months    MAL-ED       PERU                           NA                   NA                 0.9109184    0.5934529    1.2283839
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7418651    0.4248303    1.0588998
6 months    NIH-Crypto   BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROVIDE      BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
24 months   MAL-ED       BRAZIL                         NA                   NA                 0.5203560    0.2632846    0.7774274
24 months   MAL-ED       NEPAL                          NA                   NA                -0.2262651   -0.4277663   -0.0247638
24 months   MAL-ED       PERU                           NA                   NA                 0.1148299   -0.1831101    0.4127700
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.1037209   -0.1942394    0.4016813
24 months   NIH-Crypto   BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROVIDE      BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187


### Parameter: ATE


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU                           0                    1                  0.3010714   -0.2287785    0.8309214
Birth       NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH                     0                    1                 -0.0641476   -0.2714307    0.1431355
Birth       PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE      BANGLADESH                     0                    1                  0.2268452   -0.2551522    0.7088426
6 months    MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BRAZIL                         0                    1                  0.0688882   -0.5450905    0.6828670
6 months    MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL                          0                    1                  0.3056644   -0.5213387    1.1326675
6 months    MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU                           0                    1                 -0.2659716   -1.0732715    0.5413282
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.7794907   -1.2518720   -0.3071095
6 months    NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH                     0                    1                  0.0562908   -0.1190877    0.2316693
6 months    PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE      BANGLADESH                     0                    1                 -1.1426962   -1.6903556   -0.5950368
24 months   MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BRAZIL                         0                    1                  0.4305946   -0.2235977    1.0847869
24 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL                          0                    1                  0.3931682   -0.1572073    0.9435438
24 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU                           0                    1                  0.0244508   -0.7789425    0.8278442
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1312613   -1.0854716    0.8229491
24 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH                     0                    1                  0.2591991    0.0360520    0.4823461
24 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE      BANGLADESH                     0                    1                 -0.4972380   -0.8548360   -0.1396400


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       PERU                           1                    NA                 0.0669048   -0.0579283    0.1917378
Birth       NIH-Crypto   BANGLADESH                     1                    NA                -0.0046125   -0.1035996    0.0943747
Birth       PROVIDE      BANGLADESH                     1                    NA                 0.2287192   -0.2416988    0.6991373
6 months    MAL-ED       BRAZIL                         1                    NA                 0.0228289   -0.5140413    0.5596991
6 months    MAL-ED       NEPAL                          1                    NA                 0.0368377   -0.0927876    0.1664631
6 months    MAL-ED       PERU                           1                    NA                -0.1204523   -0.2802290    0.0393244
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.6681349   -1.0815518   -0.2547181
6 months    NIH-Crypto   BANGLADESH                     1                    NA                 0.0647758   -0.0236246    0.1531762
6 months    PROVIDE      BANGLADESH                     1                    NA                -1.1216175   -1.6570951   -0.5861399
24 months   MAL-ED       BRAZIL                         1                    NA                 0.4435715   -0.1437246    1.0308676
24 months   MAL-ED       NEPAL                          1                    NA                 0.0476203   -0.0510201    0.1462608
24 months   MAL-ED       PERU                           1                    NA                 0.0266782   -0.1358117    0.1891681
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1129457   -0.9341257    0.7082342
24 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.1402511    0.0063990    0.2741033
24 months   PROVIDE      BANGLADESH                     1                    NA                -0.4841236   -0.8326613   -0.1355860

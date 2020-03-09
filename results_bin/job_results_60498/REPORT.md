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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        hdlvry    pers_wast   n_cell      n
------------  ---------------  -----------------------------  -------  ----------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          0                 0      339    370
0-24 months   CMC-V-BCS-2002   INDIA                          0                 1       23    370
0-24 months   CMC-V-BCS-2002   INDIA                          1                 0        8    370
0-24 months   CMC-V-BCS-2002   INDIA                          1                 1        0    370
0-24 months   COHORTS          INDIA                          0                 0     2249   3931
0-24 months   COHORTS          INDIA                          0                 1      197   3931
0-24 months   COHORTS          INDIA                          1                 0     1292   3931
0-24 months   COHORTS          INDIA                          1                 1      193   3931
0-24 months   EE               PAKISTAN                       0                 0      232    375
0-24 months   EE               PAKISTAN                       0                 1       20    375
0-24 months   EE               PAKISTAN                       1                 0      111    375
0-24 months   EE               PAKISTAN                       1                 1       12    375
0-24 months   GMS-Nepal        NEPAL                          0                 0      121    556
0-24 months   GMS-Nepal        NEPAL                          0                 1       18    556
0-24 months   GMS-Nepal        NEPAL                          1                 0      359    556
0-24 months   GMS-Nepal        NEPAL                          1                 1       58    556
0-24 months   IRC              INDIA                          0                 0      354    410
0-24 months   IRC              INDIA                          0                 1       48    410
0-24 months   IRC              INDIA                          1                 0        8    410
0-24 months   IRC              INDIA                          1                 1        0    410
0-24 months   JiVitA-3         BANGLADESH                     0                 0       36    323
0-24 months   JiVitA-3         BANGLADESH                     0                 1        1    323
0-24 months   JiVitA-3         BANGLADESH                     1                 0      273    323
0-24 months   JiVitA-3         BANGLADESH                     1                 1       13    323
0-24 months   JiVitA-4         BANGLADESH                     0                 0     1077   4426
0-24 months   JiVitA-4         BANGLADESH                     0                 1       72   4426
0-24 months   JiVitA-4         BANGLADESH                     1                 0     2998   4426
0-24 months   JiVitA-4         BANGLADESH                     1                 1      279   4426
0-24 months   NIH-Crypto       BANGLADESH                     0                 0      551    730
0-24 months   NIH-Crypto       BANGLADESH                     0                 1       16    730
0-24 months   NIH-Crypto       BANGLADESH                     1                 0      153    730
0-24 months   NIH-Crypto       BANGLADESH                     1                 1       10    730
0-24 months   PROVIDE          BANGLADESH                     0                 0      469    641
0-24 months   PROVIDE          BANGLADESH                     0                 1       10    641
0-24 months   PROVIDE          BANGLADESH                     1                 0      157    641
0-24 months   PROVIDE          BANGLADESH                     1                 1        5    641
0-24 months   SAS-CompFeed     INDIA                          0                 0      142   1116
0-24 months   SAS-CompFeed     INDIA                          0                 1        9   1116
0-24 months   SAS-CompFeed     INDIA                          1                 0      872   1116
0-24 months   SAS-CompFeed     INDIA                          1                 1       93   1116
0-24 months   SAS-FoodSuppl    INDIA                          0                 0       64    375
0-24 months   SAS-FoodSuppl    INDIA                          0                 1       10    375
0-24 months   SAS-FoodSuppl    INDIA                          1                 0      246    375
0-24 months   SAS-FoodSuppl    INDIA                          1                 1       55    375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1966   2056
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       56   2056
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0       33   2056
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1   2056
0-6 months    CMC-V-BCS-2002   INDIA                          0                 0      299    355
0-6 months    CMC-V-BCS-2002   INDIA                          0                 1       49    355
0-6 months    CMC-V-BCS-2002   INDIA                          1                 0        7    355
0-6 months    CMC-V-BCS-2002   INDIA                          1                 1        0    355
0-6 months    EE               PAKISTAN                       0                 0      231    369
0-6 months    EE               PAKISTAN                       0                 1       18    369
0-6 months    EE               PAKISTAN                       1                 0      113    369
0-6 months    EE               PAKISTAN                       1                 1        7    369
0-6 months    GMS-Nepal        NEPAL                          0                 0      116    531
0-6 months    GMS-Nepal        NEPAL                          0                 1       13    531
0-6 months    GMS-Nepal        NEPAL                          1                 0      358    531
0-6 months    GMS-Nepal        NEPAL                          1                 1       44    531
0-6 months    IRC              INDIA                          0                 0      331    402
0-6 months    IRC              INDIA                          0                 1       63    402
0-6 months    IRC              INDIA                          1                 0        7    402
0-6 months    IRC              INDIA                          1                 1        1    402
0-6 months    NIH-Crypto       BANGLADESH                     0                 0      202    250
0-6 months    NIH-Crypto       BANGLADESH                     0                 1        3    250
0-6 months    NIH-Crypto       BANGLADESH                     1                 0       43    250
0-6 months    NIH-Crypto       BANGLADESH                     1                 1        2    250
0-6 months    PROVIDE          BANGLADESH                     0                 0      466    638
0-6 months    PROVIDE          BANGLADESH                     0                 1       11    638
0-6 months    PROVIDE          BANGLADESH                     1                 0      158    638
0-6 months    PROVIDE          BANGLADESH                     1                 1        3    638
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1876   1956
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       48   1956
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0       31   1956
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1   1956
6-24 months   CMC-V-BCS-2002   INDIA                          0                 0      339    370
6-24 months   CMC-V-BCS-2002   INDIA                          0                 1       23    370
6-24 months   CMC-V-BCS-2002   INDIA                          1                 0        8    370
6-24 months   CMC-V-BCS-2002   INDIA                          1                 1        0    370
6-24 months   COHORTS          INDIA                          0                 0     2249   3931
6-24 months   COHORTS          INDIA                          0                 1      197   3931
6-24 months   COHORTS          INDIA                          1                 0     1292   3931
6-24 months   COHORTS          INDIA                          1                 1      193   3931
6-24 months   EE               PAKISTAN                       0                 0      232    375
6-24 months   EE               PAKISTAN                       0                 1       20    375
6-24 months   EE               PAKISTAN                       1                 0      111    375
6-24 months   EE               PAKISTAN                       1                 1       12    375
6-24 months   GMS-Nepal        NEPAL                          0                 0      121    556
6-24 months   GMS-Nepal        NEPAL                          0                 1       18    556
6-24 months   GMS-Nepal        NEPAL                          1                 0      359    556
6-24 months   GMS-Nepal        NEPAL                          1                 1       58    556
6-24 months   IRC              INDIA                          0                 0      354    410
6-24 months   IRC              INDIA                          0                 1       48    410
6-24 months   IRC              INDIA                          1                 0        8    410
6-24 months   IRC              INDIA                          1                 1        0    410
6-24 months   JiVitA-3         BANGLADESH                     0                 0       36    323
6-24 months   JiVitA-3         BANGLADESH                     0                 1        1    323
6-24 months   JiVitA-3         BANGLADESH                     1                 0      273    323
6-24 months   JiVitA-3         BANGLADESH                     1                 1       13    323
6-24 months   JiVitA-4         BANGLADESH                     0                 0     1077   4426
6-24 months   JiVitA-4         BANGLADESH                     0                 1       72   4426
6-24 months   JiVitA-4         BANGLADESH                     1                 0     2998   4426
6-24 months   JiVitA-4         BANGLADESH                     1                 1      279   4426
6-24 months   NIH-Crypto       BANGLADESH                     0                 0      551    730
6-24 months   NIH-Crypto       BANGLADESH                     0                 1       16    730
6-24 months   NIH-Crypto       BANGLADESH                     1                 0      153    730
6-24 months   NIH-Crypto       BANGLADESH                     1                 1       10    730
6-24 months   PROVIDE          BANGLADESH                     0                 0      469    641
6-24 months   PROVIDE          BANGLADESH                     0                 1       10    641
6-24 months   PROVIDE          BANGLADESH                     1                 0      157    641
6-24 months   PROVIDE          BANGLADESH                     1                 1        5    641
6-24 months   SAS-CompFeed     INDIA                          0                 0      142   1116
6-24 months   SAS-CompFeed     INDIA                          0                 1        9   1116
6-24 months   SAS-CompFeed     INDIA                          1                 0      872   1116
6-24 months   SAS-CompFeed     INDIA                          1                 1       93   1116
6-24 months   SAS-FoodSuppl    INDIA                          0                 0       64    375
6-24 months   SAS-FoodSuppl    INDIA                          0                 1       10    375
6-24 months   SAS-FoodSuppl    INDIA                          1                 0      246    375
6-24 months   SAS-FoodSuppl    INDIA                          1                 1       55    375
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1966   2056
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       56   2056
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0       33   2056
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1   2056


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/aa3f615e-5139-4d60-838f-b0bcf8901887/e563a333-0389-4c95-ac14-d08fdb65c2c9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/aa3f615e-5139-4d60-838f-b0bcf8901887/e563a333-0389-4c95-ac14-d08fdb65c2c9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/aa3f615e-5139-4d60-838f-b0bcf8901887/e563a333-0389-4c95-ac14-d08fdb65c2c9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/aa3f615e-5139-4d60-838f-b0bcf8901887/e563a333-0389-4c95-ac14-d08fdb65c2c9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         INDIA        0                    NA                0.0942824   0.0811162   0.1074486
0-24 months   COHORTS         INDIA        1                    NA                0.1038267   0.0879396   0.1197138
0-24 months   EE              PAKISTAN     0                    NA                0.0819602   0.0477025   0.1162179
0-24 months   EE              PAKISTAN     1                    NA                0.0985626   0.0413391   0.1557861
0-24 months   GMS-Nepal       NEPAL        0                    NA                0.1270118   0.0715897   0.1824340
0-24 months   GMS-Nepal       NEPAL        1                    NA                0.1392479   0.1059783   0.1725176
0-24 months   JiVitA-4        BANGLADESH   0                    NA                0.0662047   0.0492367   0.0831728
0-24 months   JiVitA-4        BANGLADESH   1                    NA                0.0833399   0.0723235   0.0943563
0-24 months   NIH-Crypto      BANGLADESH   0                    NA                0.0285053   0.0147577   0.0422529
0-24 months   NIH-Crypto      BANGLADESH   1                    NA                0.0508955   0.0193692   0.0824218
0-24 months   PROVIDE         BANGLADESH   0                    NA                0.0208768   0.0080633   0.0336904
0-24 months   PROVIDE         BANGLADESH   1                    NA                0.0308642   0.0042110   0.0575174
0-24 months   SAS-CompFeed    INDIA        0                    NA                0.0596026   0.0268592   0.0923461
0-24 months   SAS-CompFeed    INDIA        1                    NA                0.0963731   0.0619791   0.1307670
0-24 months   SAS-FoodSuppl   INDIA        0                    NA                0.1283419   0.0521272   0.2045566
0-24 months   SAS-FoodSuppl   INDIA        1                    NA                0.1821295   0.1384876   0.2257714
0-6 months    EE              PAKISTAN     0                    NA                0.0722892   0.0400799   0.1044984
0-6 months    EE              PAKISTAN     1                    NA                0.0583333   0.0163426   0.1003241
0-6 months    GMS-Nepal       NEPAL        0                    NA                0.1081849   0.0504638   0.1659061
0-6 months    GMS-Nepal       NEPAL        1                    NA                0.1090485   0.0784886   0.1396084
6-24 months   COHORTS         INDIA        0                    NA                0.0934899   0.0805425   0.1064373
6-24 months   COHORTS         INDIA        1                    NA                0.1041597   0.0884397   0.1198797
6-24 months   EE              PAKISTAN     0                    NA                0.0824346   0.0479977   0.1168715
6-24 months   EE              PAKISTAN     1                    NA                0.1048057   0.0463945   0.1632169
6-24 months   GMS-Nepal       NEPAL        0                    NA                0.1311036   0.0742766   0.1879306
6-24 months   GMS-Nepal       NEPAL        1                    NA                0.1391437   0.1058173   0.1724701
6-24 months   JiVitA-4        BANGLADESH   0                    NA                0.0655643   0.0488127   0.0823158
6-24 months   JiVitA-4        BANGLADESH   1                    NA                0.0831536   0.0720810   0.0942262
6-24 months   NIH-Crypto      BANGLADESH   0                    NA                0.0289805   0.0151199   0.0428412
6-24 months   NIH-Crypto      BANGLADESH   1                    NA                0.0511841   0.0196441   0.0827241
6-24 months   PROVIDE         BANGLADESH   0                    NA                0.0208768   0.0080633   0.0336904
6-24 months   PROVIDE         BANGLADESH   1                    NA                0.0308642   0.0042110   0.0575174
6-24 months   SAS-CompFeed    INDIA        0                    NA                0.0596026   0.0268592   0.0923461
6-24 months   SAS-CompFeed    INDIA        1                    NA                0.0963731   0.0619791   0.1307670
6-24 months   SAS-FoodSuppl   INDIA        0                    NA                0.1298762   0.0518364   0.2079159
6-24 months   SAS-FoodSuppl   INDIA        1                    NA                0.1837009   0.1397657   0.2276361


### Parameter: E(Y)


agecat        studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         INDIA        NA                   NA                0.0992114   0.0898650   0.1085578
0-24 months   EE              PAKISTAN     NA                   NA                0.0853333   0.0570192   0.1136475
0-24 months   GMS-Nepal       NEPAL        NA                   NA                0.1366906   0.1081112   0.1652701
0-24 months   JiVitA-4        BANGLADESH   NA                   NA                0.0793041   0.0701363   0.0884719
0-24 months   NIH-Crypto      BANGLADESH   NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   PROVIDE         BANGLADESH   NA                   NA                0.0234009   0.0116889   0.0351130
0-24 months   SAS-CompFeed    INDIA        NA                   NA                0.0913978   0.0593363   0.1234594
0-24 months   SAS-FoodSuppl   INDIA        NA                   NA                0.1733333   0.1349698   0.2116969
0-6 months    EE              PAKISTAN     NA                   NA                0.0677507   0.0420735   0.0934278
0-6 months    GMS-Nepal       NEPAL        NA                   NA                0.1073446   0.0809909   0.1336984
6-24 months   COHORTS         INDIA        NA                   NA                0.0992114   0.0898650   0.1085578
6-24 months   EE              PAKISTAN     NA                   NA                0.0853333   0.0570192   0.1136475
6-24 months   GMS-Nepal       NEPAL        NA                   NA                0.1366906   0.1081112   0.1652701
6-24 months   JiVitA-4        BANGLADESH   NA                   NA                0.0793041   0.0701363   0.0884719
6-24 months   NIH-Crypto      BANGLADESH   NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   PROVIDE         BANGLADESH   NA                   NA                0.0234009   0.0116889   0.0351130
6-24 months   SAS-CompFeed    INDIA        NA                   NA                0.0913978   0.0593363   0.1234594
6-24 months   SAS-FoodSuppl   INDIA        NA                   NA                0.1733333   0.1349698   0.2116969


### Parameter: RR


agecat        studyid         country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   COHORTS         INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   COHORTS         INDIA        1                    0                 1.1012315   0.8958890   1.353640
0-24 months   EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   EE              PAKISTAN     1                    0                 1.2025668   0.5872403   2.462649
0-24 months   GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal       NEPAL        1                    0                 1.0963383   0.6663978   1.803664
0-24 months   JiVitA-4        BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4        BANGLADESH   1                    0                 1.2588208   0.9450240   1.676814
0-24 months   NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto      BANGLADESH   1                    0                 1.7854752   0.8154675   3.909318
0-24 months   PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   PROVIDE         BANGLADESH   1                    0                 1.4783951   0.5124750   4.264895
0-24 months   SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed    INDIA        1                    0                 1.6169257   0.8882404   2.943402
0-24 months   SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl   INDIA        1                    0                 1.4190964   0.7470586   2.695685
0-6 months    EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    EE              PAKISTAN     1                    0                 0.8069444   0.3460819   1.881518
0-6 months    GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal       NEPAL        1                    0                 1.0079825   0.5519357   1.840846
6-24 months   COHORTS         INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   COHORTS         INDIA        1                    0                 1.1141280   0.9085341   1.366246
6-24 months   EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   EE              PAKISTAN     1                    0                 1.2713798   0.6316732   2.558928
6-24 months   GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal       NEPAL        1                    0                 1.0613263   0.6465157   1.742283
6-24 months   JiVitA-4        BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4        BANGLADESH   1                    0                 1.2682759   0.9525568   1.688638
6-24 months   NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto      BANGLADESH   1                    0                 1.7661539   0.8109400   3.846523
6-24 months   PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   PROVIDE         BANGLADESH   1                    0                 1.4783951   0.5124750   4.264895
6-24 months   SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed    INDIA        1                    0                 1.6169257   0.8882404   2.943402
6-24 months   SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl   INDIA        1                    0                 1.4144315   0.7400714   2.703275


### Parameter: PAR


agecat        studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS         INDIA        0                    NA                 0.0049290   -0.0048161   0.0146741
0-24 months   EE              PAKISTAN     0                    NA                 0.0033731   -0.0176145   0.0243608
0-24 months   GMS-Nepal       NEPAL        0                    NA                 0.0096788   -0.0388009   0.0581585
0-24 months   JiVitA-4        BANGLADESH   0                    NA                 0.0130994   -0.0020944   0.0282932
0-24 months   NIH-Crypto      BANGLADESH   0                    NA                 0.0071112   -0.0017858   0.0160081
0-24 months   PROVIDE         BANGLADESH   0                    NA                 0.0025241   -0.0049575   0.0100057
0-24 months   SAS-CompFeed    INDIA        0                    NA                 0.0317952   -0.0051651   0.0687555
0-24 months   SAS-FoodSuppl   INDIA        0                    NA                 0.0449914   -0.0259124   0.1158953
0-6 months    EE              PAKISTAN     0                    NA                -0.0045385   -0.0217616   0.0126846
0-6 months    GMS-Nepal       NEPAL        0                    NA                -0.0008403   -0.0521752   0.0504946
6-24 months   COHORTS         INDIA        0                    NA                 0.0057215   -0.0037886   0.0152316
6-24 months   EE              PAKISTAN     0                    NA                 0.0028987   -0.0182754   0.0240729
6-24 months   GMS-Nepal       NEPAL        0                    NA                 0.0055870   -0.0441426   0.0553167
6-24 months   JiVitA-4        BANGLADESH   0                    NA                 0.0137399   -0.0012502   0.0287299
6-24 months   NIH-Crypto      BANGLADESH   0                    NA                 0.0066359   -0.0022993   0.0155711
6-24 months   PROVIDE         BANGLADESH   0                    NA                 0.0025241   -0.0049575   0.0100057
6-24 months   SAS-CompFeed    INDIA        0                    NA                 0.0317952   -0.0051651   0.0687555
6-24 months   SAS-FoodSuppl   INDIA        0                    NA                 0.0434572   -0.0287933   0.1157076


### Parameter: PAF


agecat        studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS         INDIA        0                    NA                 0.0496821   -0.0536675   0.1428945
0-24 months   EE              PAKISTAN     0                    NA                 0.0395289   -0.2402532   0.2561965
0-24 months   GMS-Nepal       NEPAL        0                    NA                 0.0708082   -0.3607524   0.3655000
0-24 months   JiVitA-4        BANGLADESH   0                    NA                 0.1651792   -0.0490455   0.3356572
0-24 months   NIH-Crypto      BANGLADESH   0                    NA                 0.1996594   -0.0782027   0.4059140
0-24 months   PROVIDE         BANGLADESH   0                    NA                 0.1078636   -0.2703716   0.3734846
0-24 months   SAS-CompFeed    INDIA        0                    NA                 0.3478769   -0.1175046   0.6194516
0-24 months   SAS-FoodSuppl   INDIA        0                    NA                 0.2595660   -0.2808526   0.5719706
0-6 months    EE              PAKISTAN     0                    NA                -0.0669880   -0.3526787   0.1583639
0-6 months    GMS-Nepal       NEPAL        0                    NA                -0.0078280   -0.6198131   0.3729417
6-24 months   COHORTS         INDIA        0                    NA                 0.0576699   -0.0430589   0.1486712
6-24 months   EE              PAKISTAN     0                    NA                 0.0339695   -0.2484977   0.2525297
6-24 months   GMS-Nepal       NEPAL        0                    NA                 0.0408736   -0.4014372   0.3435856
6-24 months   JiVitA-4        BANGLADESH   0                    NA                 0.1732553   -0.0378725   0.3414347
6-24 months   NIH-Crypto      BANGLADESH   0                    NA                 0.1863155   -0.0933841   0.3944648
6-24 months   PROVIDE         BANGLADESH   0                    NA                 0.1078636   -0.2703716   0.3734846
6-24 months   SAS-CompFeed    INDIA        0                    NA                 0.3478769   -0.1175046   0.6194516
6-24 months   SAS-FoodSuppl   INDIA        0                    NA                 0.2507145   -0.3028449   0.5690747

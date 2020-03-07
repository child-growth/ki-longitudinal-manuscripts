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

**Outcome Variable:** sstunted

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

agecat      studyid          country                        vagbrth    sstunted   n_cell       n
----------  ---------------  -----------------------------  --------  ---------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          0                 0       10      92
Birth       CMC-V-BCS-2002   INDIA                          0                 1        1      92
Birth       CMC-V-BCS-2002   INDIA                          1                 0       78      92
Birth       CMC-V-BCS-2002   INDIA                          1                 1        3      92
Birth       IRC              INDIA                          0                 0       67     388
Birth       IRC              INDIA                          0                 1        1     388
Birth       IRC              INDIA                          1                 0      305     388
Birth       IRC              INDIA                          1                 1       15     388
Birth       JiVitA-3         BANGLADESH                     0                 0      501   22418
Birth       JiVitA-3         BANGLADESH                     0                 1       38   22418
Birth       JiVitA-3         BANGLADESH                     1                 0    19471   22418
Birth       JiVitA-3         BANGLADESH                     1                 1     2408   22418
Birth       JiVitA-4         BANGLADESH                     0                 0       73    2822
Birth       JiVitA-4         BANGLADESH                     0                 1        3    2822
Birth       JiVitA-4         BANGLADESH                     1                 0     2516    2822
Birth       JiVitA-4         BANGLADESH                     1                 1      230    2822
Birth       NIH-Crypto       BANGLADESH                     0                 0      185     477
Birth       NIH-Crypto       BANGLADESH                     0                 1        1     477
Birth       NIH-Crypto       BANGLADESH                     1                 0      290     477
Birth       NIH-Crypto       BANGLADESH                     1                 1        1     477
Birth       PROBIT           BELARUS                        0                 0     1596   13893
Birth       PROBIT           BELARUS                        0                 1        1   13893
Birth       PROBIT           BELARUS                        1                 0    12292   13893
Birth       PROBIT           BELARUS                        1                 1        4   13893
Birth       PROVIDE          BANGLADESH                     0                 0      107     539
Birth       PROVIDE          BANGLADESH                     0                 1        1     539
Birth       PROVIDE          BANGLADESH                     1                 0      428     539
Birth       PROVIDE          BANGLADESH                     1                 1        3     539
Birth       ZVITAMBO         ZIMBABWE                       0                 0     1136   13761
Birth       ZVITAMBO         ZIMBABWE                       0                 1       30   13761
Birth       ZVITAMBO         ZIMBABWE                       1                 0    12191   13761
Birth       ZVITAMBO         ZIMBABWE                       1                 1      404   13761
6 months    CMC-V-BCS-2002   INDIA                          0                 0       23     369
6 months    CMC-V-BCS-2002   INDIA                          0                 1        2     369
6 months    CMC-V-BCS-2002   INDIA                          1                 0      304     369
6 months    CMC-V-BCS-2002   INDIA                          1                 1       40     369
6 months    IRC              INDIA                          0                 0       64     407
6 months    IRC              INDIA                          0                 1        5     407
6 months    IRC              INDIA                          1                 0      314     407
6 months    IRC              INDIA                          1                 1       24     407
6 months    JiVitA-3         BANGLADESH                     0                 0     1029   16732
6 months    JiVitA-3         BANGLADESH                     0                 1       48   16732
6 months    JiVitA-3         BANGLADESH                     1                 0    14687   16732
6 months    JiVitA-3         BANGLADESH                     1                 1      968   16732
6 months    JiVitA-4         BANGLADESH                     0                 0      326    4052
6 months    JiVitA-4         BANGLADESH                     0                 1       10    4052
6 months    JiVitA-4         BANGLADESH                     1                 0     3504    4052
6 months    JiVitA-4         BANGLADESH                     1                 1      212    4052
6 months    NIH-Crypto       BANGLADESH                     0                 0      183     457
6 months    NIH-Crypto       BANGLADESH                     0                 1        4     457
6 months    NIH-Crypto       BANGLADESH                     1                 0      258     457
6 months    NIH-Crypto       BANGLADESH                     1                 1       12     457
6 months    PROBIT           BELARUS                        0                 0     1781   15760
6 months    PROBIT           BELARUS                        0                 1       18   15760
6 months    PROBIT           BELARUS                        1                 0    13802   15760
6 months    PROBIT           BELARUS                        1                 1      159   15760
6 months    PROVIDE          BANGLADESH                     0                 0      137     604
6 months    PROVIDE          BANGLADESH                     0                 1        2     604
6 months    PROVIDE          BANGLADESH                     1                 0      453     604
6 months    PROVIDE          BANGLADESH                     1                 1       12     604
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0      189    2005
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        0    2005
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1797    2005
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       19    2005
6 months    ZVITAMBO         ZIMBABWE                       0                 0      714    8601
6 months    ZVITAMBO         ZIMBABWE                       0                 1       26    8601
6 months    ZVITAMBO         ZIMBABWE                       1                 0     7536    8601
6 months    ZVITAMBO         ZIMBABWE                       1                 1      325    8601
24 months   CMC-V-BCS-2002   INDIA                          0                 0       16     371
24 months   CMC-V-BCS-2002   INDIA                          0                 1        8     371
24 months   CMC-V-BCS-2002   INDIA                          1                 0      230     371
24 months   CMC-V-BCS-2002   INDIA                          1                 1      117     371
24 months   IRC              INDIA                          0                 0       66     409
24 months   IRC              INDIA                          0                 1        3     409
24 months   IRC              INDIA                          1                 0      302     409
24 months   IRC              INDIA                          1                 1       38     409
24 months   JiVitA-3         BANGLADESH                     0                 0      444    8584
24 months   JiVitA-3         BANGLADESH                     0                 1       36    8584
24 months   JiVitA-3         BANGLADESH                     1                 0     6805    8584
24 months   JiVitA-3         BANGLADESH                     1                 1     1299    8584
24 months   JiVitA-4         BANGLADESH                     0                 0      309    4020
24 months   JiVitA-4         BANGLADESH                     0                 1       14    4020
24 months   JiVitA-4         BANGLADESH                     1                 0     3335    4020
24 months   JiVitA-4         BANGLADESH                     1                 1      362    4020
24 months   NIH-Crypto       BANGLADESH                     0                 0       92     260
24 months   NIH-Crypto       BANGLADESH                     0                 1        7     260
24 months   NIH-Crypto       BANGLADESH                     1                 0      146     260
24 months   NIH-Crypto       BANGLADESH                     1                 1       15     260
24 months   PROBIT           BELARUS                        0                 0      465    4035
24 months   PROBIT           BELARUS                        0                 1        7    4035
24 months   PROBIT           BELARUS                        1                 0     3505    4035
24 months   PROBIT           BELARUS                        1                 1       58    4035
24 months   PROVIDE          BANGLADESH                     0                 0      130     578
24 months   PROVIDE          BANGLADESH                     0                 1        7     578
24 months   PROVIDE          BANGLADESH                     1                 0      396     578
24 months   PROVIDE          BANGLADESH                     1                 1       45     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1       6
24 months   ZVITAMBO         ZIMBABWE                       0                 0      123    1619
24 months   ZVITAMBO         ZIMBABWE                       0                 1       10    1619
24 months   ZVITAMBO         ZIMBABWE                       1                 0     1321    1619
24 months   ZVITAMBO         ZIMBABWE                       1                 1      165    1619


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/666636f8-962e-4134-9327-46321a664313/8249af3d-ea51-4407-a3bd-50f879c7170c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/666636f8-962e-4134-9327-46321a664313/8249af3d-ea51-4407-a3bd-50f879c7170c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/666636f8-962e-4134-9327-46321a664313/8249af3d-ea51-4407-a3bd-50f879c7170c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/666636f8-962e-4134-9327-46321a664313/8249af3d-ea51-4407-a3bd-50f879c7170c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       JiVitA-3         BANGLADESH   0                    NA                0.0802303    0.0618421   0.0986184
Birth       JiVitA-3         BANGLADESH   1                    NA                0.1098560    0.1052184   0.1144936
Birth       ZVITAMBO         ZIMBABWE     0                    NA                0.0262209    0.0167892   0.0356527
Birth       ZVITAMBO         ZIMBABWE     1                    NA                0.0322653    0.0291723   0.0353583
6 months    IRC              INDIA        0                    NA                0.0724638    0.0112169   0.1337106
6 months    IRC              INDIA        1                    NA                0.0710059    0.0435916   0.0984202
6 months    JiVitA-3         BANGLADESH   0                    NA                0.0573873    0.0389559   0.0758187
6 months    JiVitA-3         BANGLADESH   1                    NA                0.0611717    0.0571717   0.0651717
6 months    JiVitA-4         BANGLADESH   0                    NA                0.0292587    0.0126215   0.0458959
6 months    JiVitA-4         BANGLADESH   1                    NA                0.0570597    0.0480096   0.0661099
6 months    PROBIT           BELARUS      0                    NA                0.0097888    0.0021843   0.0173934
6 months    PROBIT           BELARUS      1                    NA                0.0114224    0.0055053   0.0173394
6 months    ZVITAMBO         ZIMBABWE     0                    NA                0.0341590    0.0210814   0.0472365
6 months    ZVITAMBO         ZIMBABWE     1                    NA                0.0413760    0.0369722   0.0457797
24 months   CMC-V-BCS-2002   INDIA        0                    NA                0.3333333    0.1444810   0.5221856
24 months   CMC-V-BCS-2002   INDIA        1                    NA                0.3371758    0.2873681   0.3869835
24 months   JiVitA-3         BANGLADESH   0                    NA                0.0905420    0.0620827   0.1190013
24 months   JiVitA-3         BANGLADESH   1                    NA                0.1580596    0.1490548   0.1670645
24 months   JiVitA-4         BANGLADESH   0                    NA                0.0427801    0.0183531   0.0672071
24 months   JiVitA-4         BANGLADESH   1                    NA                0.0966322    0.0857094   0.1075550
24 months   NIH-Crypto       BANGLADESH   0                    NA                0.0707071    0.0201159   0.1212983
24 months   NIH-Crypto       BANGLADESH   1                    NA                0.0931677    0.0481827   0.1381527
24 months   PROBIT           BELARUS      0                    NA                0.0148305   -0.0151878   0.0448488
24 months   PROBIT           BELARUS      1                    NA                0.0162784    0.0035356   0.0290213
24 months   PROVIDE          BANGLADESH   0                    NA                0.0510949    0.0141917   0.0879981
24 months   PROVIDE          BANGLADESH   1                    NA                0.1020408    0.0737647   0.1303170
24 months   ZVITAMBO         ZIMBABWE     0                    NA                0.0775673    0.0309166   0.1242179
24 months   ZVITAMBO         ZIMBABWE     1                    NA                0.1107467    0.0947851   0.1267083


### Parameter: E(Y)


agecat      studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3         BANGLADESH   NA                   NA                0.1091088   0.1045539   0.1136636
Birth       ZVITAMBO         ZIMBABWE     NA                   NA                0.0315384   0.0286183   0.0344585
6 months    IRC              INDIA        NA                   NA                0.0712531   0.0462303   0.0962759
6 months    JiVitA-3         BANGLADESH   NA                   NA                0.0607220   0.0568736   0.0645704
6 months    JiVitA-4         BANGLADESH   NA                   NA                0.0547878   0.0463432   0.0632323
6 months    PROBIT           BELARUS      NA                   NA                0.0112310   0.0054733   0.0169886
6 months    ZVITAMBO         ZIMBABWE     NA                   NA                0.0408092   0.0366277   0.0449907
24 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.3369272   0.2887662   0.3850883
24 months   JiVitA-3         BANGLADESH   NA                   NA                0.1555219   0.1467695   0.1642743
24 months   JiVitA-4         BANGLADESH   NA                   NA                0.0935323   0.0832327   0.1038320
24 months   NIH-Crypto       BANGLADESH   NA                   NA                0.0846154   0.0507212   0.1185095
24 months   PROBIT           BELARUS      NA                   NA                0.0161090   0.0017796   0.0304385
24 months   PROVIDE          BANGLADESH   NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ZVITAMBO         ZIMBABWE     NA                   NA                0.1080914   0.0929623   0.1232206


### Parameter: RR


agecat      studyid          country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3         BANGLADESH   1                    0                 1.3692585   1.0845126   1.728766
Birth       ZVITAMBO         ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
Birth       ZVITAMBO         ZIMBABWE     1                    0                 1.2305167   0.8480895   1.785391
6 months    IRC              INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    IRC              INDIA        1                    0                 0.9798817   0.3869206   2.481564
6 months    JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3         BANGLADESH   1                    0                 1.0659452   0.7667399   1.481910
6 months    JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4         BANGLADESH   1                    0                 1.9501801   1.0820172   3.514919
6 months    PROBIT           BELARUS      0                    0                 1.0000000   1.0000000   1.000000
6 months    PROBIT           BELARUS      1                    0                 1.1668753   0.6019193   2.262094
6 months    ZVITAMBO         ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
6 months    ZVITAMBO         ZIMBABWE     1                    0                 1.2112777   0.8140487   1.802342
24 months   CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.000000
24 months   CMC-V-BCS-2002   INDIA        1                    0                 1.0115274   0.5632472   1.816587
24 months   JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3         BANGLADESH   1                    0                 1.7457043   1.2716533   2.396473
24 months   JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4         BANGLADESH   1                    0                 2.2588123   1.2589754   4.052687
24 months   NIH-Crypto       BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   NIH-Crypto       BANGLADESH   1                    0                 1.3176575   0.5558122   3.123755
24 months   PROBIT           BELARUS      0                    0                 1.0000000   1.0000000   1.000000
24 months   PROBIT           BELARUS      1                    0                 1.0976304   0.2628358   4.583821
24 months   PROVIDE          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   PROVIDE          BANGLADESH   1                    0                 1.9970845   0.9213693   4.328717
24 months   ZVITAMBO         ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
24 months   ZVITAMBO         ZIMBABWE     1                    0                 1.4277506   0.7694053   2.649412


### Parameter: PAR


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3         BANGLADESH   0                    NA                 0.0288785    0.0104036   0.0473533
Birth       ZVITAMBO         ZIMBABWE     0                    NA                 0.0053175   -0.0038101   0.0144450
6 months    IRC              INDIA        0                    NA                -0.0012107   -0.0569370   0.0545156
6 months    JiVitA-3         BANGLADESH   0                    NA                 0.0033347   -0.0148702   0.0215395
6 months    JiVitA-4         BANGLADESH   0                    NA                 0.0255291    0.0082551   0.0428030
6 months    PROBIT           BELARUS      0                    NA                 0.0014421   -0.0044423   0.0073266
6 months    ZVITAMBO         ZIMBABWE     0                    NA                 0.0066503   -0.0059589   0.0192594
24 months   CMC-V-BCS-2002   INDIA        0                    NA                 0.0035939   -0.1790816   0.1862693
24 months   JiVitA-3         BANGLADESH   0                    NA                 0.0649799    0.0368266   0.0931332
24 months   JiVitA-4         BANGLADESH   0                    NA                 0.0507522    0.0258702   0.0756343
24 months   NIH-Crypto       BANGLADESH   0                    NA                 0.0139083   -0.0280339   0.0558505
24 months   PROBIT           BELARUS      0                    NA                 0.0012785   -0.0168090   0.0193660
24 months   PROVIDE          BANGLADESH   0                    NA                 0.0388705    0.0033552   0.0743858
24 months   ZVITAMBO         ZIMBABWE     0                    NA                 0.0305242   -0.0149017   0.0759501


### Parameter: PAF


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3         BANGLADESH   0                    NA                 0.2646761    0.0757980   0.4149534
Birth       ZVITAMBO         ZIMBABWE     0                    NA                 0.1686029   -0.1769713   0.4127120
6 months    IRC              INDIA        0                    NA                -0.0169915   -1.1942765   0.5286502
6 months    JiVitA-3         BANGLADESH   0                    NA                 0.0549173   -0.2977025   0.3117211
6 months    JiVitA-4         BANGLADESH   0                    NA                 0.4659627    0.0630120   0.6956249
6 months    PROBIT           BELARUS      0                    NA                 0.1284053   -0.5798497   0.5191458
6 months    ZVITAMBO         ZIMBABWE     0                    NA                 0.1629597   -0.2101638   0.4210399
24 months   CMC-V-BCS-2002   INDIA        0                    NA                 0.0106667   -0.7113840   0.4280766
24 months   JiVitA-3         BANGLADESH   0                    NA                 0.4178181    0.2072710   0.5724443
24 months   JiVitA-4         BANGLADESH   0                    NA                 0.5426171    0.1966655   0.7395866
24 months   NIH-Crypto       BANGLADESH   0                    NA                 0.1643710   -0.5055688   0.5362046
24 months   PROBIT           BELARUS      0                    NA                 0.0793677   -2.2956083   0.7428202
24 months   PROVIDE          BANGLADESH   0                    NA                 0.4320606   -0.1095941   0.7093035
24 months   ZVITAMBO         ZIMBABWE     0                    NA                 0.2823921   -0.2862537   0.5996427

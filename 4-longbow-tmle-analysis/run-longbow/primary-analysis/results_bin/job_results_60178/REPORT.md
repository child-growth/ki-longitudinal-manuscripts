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

**Intervention Variable:** nchldlt5

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
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
* delta_W_nrooms
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

agecat      studyid          country                        nchldlt5    sstunted   n_cell       n
----------  ---------------  -----------------------------  ---------  ---------  -------  ------
Birth       IRC              INDIA                          1                  0       79     388
Birth       IRC              INDIA                          1                  1        5     388
Birth       IRC              INDIA                          2+                 0      293     388
Birth       IRC              INDIA                          2+                 1       11     388
Birth       JiVitA-3         BANGLADESH                     1                  0    12217   22431
Birth       JiVitA-3         BANGLADESH                     1                  1     1769   22431
Birth       JiVitA-3         BANGLADESH                     2+                 0     7766   22431
Birth       JiVitA-3         BANGLADESH                     2+                 1      679   22431
Birth       NIH-Crypto       BANGLADESH                     1                  0      515     732
Birth       NIH-Crypto       BANGLADESH                     1                  1        7     732
Birth       NIH-Crypto       BANGLADESH                     2+                 0      207     732
Birth       NIH-Crypto       BANGLADESH                     2+                 1        3     732
Birth       PROVIDE          BANGLADESH                     1                  0      388     539
Birth       PROVIDE          BANGLADESH                     1                  1        3     539
Birth       PROVIDE          BANGLADESH                     2+                 0      147     539
Birth       PROVIDE          BANGLADESH                     2+                 1        1     539
6 months    IRC              INDIA                          1                  0       78     407
6 months    IRC              INDIA                          1                  1       11     407
6 months    IRC              INDIA                          2+                 0      300     407
6 months    IRC              INDIA                          2+                 1       18     407
6 months    JiVitA-3         BANGLADESH                     1                  0    10177   16800
6 months    JiVitA-3         BANGLADESH                     1                  1      710   16800
6 months    JiVitA-3         BANGLADESH                     2+                 0     5604   16800
6 months    JiVitA-3         BANGLADESH                     2+                 1      309   16800
6 months    LCNI-5           MALAWI                         1                  0      362     811
6 months    LCNI-5           MALAWI                         1                  1       28     811
6 months    LCNI-5           MALAWI                         2+                 0      384     811
6 months    LCNI-5           MALAWI                         2+                 1       37     811
6 months    NIH-Crypto       BANGLADESH                     1                  0      492     715
6 months    NIH-Crypto       BANGLADESH                     1                  1       15     715
6 months    NIH-Crypto       BANGLADESH                     2+                 0      200     715
6 months    NIH-Crypto       BANGLADESH                     2+                 1        8     715
6 months    PROVIDE          BANGLADESH                     1                  0      428     604
6 months    PROVIDE          BANGLADESH                     1                  1       10     604
6 months    PROVIDE          BANGLADESH                     2+                 0      162     604
6 months    PROVIDE          BANGLADESH                     2+                 1        4     604
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0     1384    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        7    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                 0      617    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                 1       12    2020
24 months   IRC              INDIA                          1                  0       82     409
24 months   IRC              INDIA                          1                  1        7     409
24 months   IRC              INDIA                          2+                 0      286     409
24 months   IRC              INDIA                          2+                 1       34     409
24 months   JiVitA-3         BANGLADESH                     1                  0     4671    8622
24 months   JiVitA-3         BANGLADESH                     1                  1      783    8622
24 months   JiVitA-3         BANGLADESH                     2+                 0     2607    8622
24 months   JiVitA-3         BANGLADESH                     2+                 1      561    8622
24 months   LCNI-5           MALAWI                         1                  0      255     571
24 months   LCNI-5           MALAWI                         1                  1       28     571
24 months   LCNI-5           MALAWI                         2+                 0      247     571
24 months   LCNI-5           MALAWI                         2+                 1       41     571
24 months   NIH-Crypto       BANGLADESH                     1                  0      336     514
24 months   NIH-Crypto       BANGLADESH                     1                  1       21     514
24 months   NIH-Crypto       BANGLADESH                     2+                 0      142     514
24 months   NIH-Crypto       BANGLADESH                     2+                 1       15     514
24 months   PROVIDE          BANGLADESH                     1                  0      389     578
24 months   PROVIDE          BANGLADESH                     1                  1       35     578
24 months   PROVIDE          BANGLADESH                     2+                 0      137     578
24 months   PROVIDE          BANGLADESH                     2+                 1       17     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0        4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                 0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                 1        0       6


The following strata were considered:

* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/c29c57e4-fa47-4375-b823-f788b3f345b4/0edae32b-8e18-417c-8a60-ef55026dd1c4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c29c57e4-fa47-4375-b823-f788b3f345b4/0edae32b-8e18-417c-8a60-ef55026dd1c4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c29c57e4-fa47-4375-b823-f788b3f345b4/0edae32b-8e18-417c-8a60-ef55026dd1c4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c29c57e4-fa47-4375-b823-f788b3f345b4/0edae32b-8e18-417c-8a60-ef55026dd1c4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA                          1                    NA                0.0595238   0.0088611   0.1101865
Birth       IRC              INDIA                          2+                   NA                0.0361842   0.0151644   0.0572040
Birth       JiVitA-3         BANGLADESH                     1                    NA                0.1185874   0.1115619   0.1256129
Birth       JiVitA-3         BANGLADESH                     2+                   NA                0.0950341   0.0829665   0.1071016
6 months    IRC              INDIA                          1                    NA                0.1266851   0.0521201   0.2012502
6 months    IRC              INDIA                          2+                   NA                0.0538688   0.0294018   0.0783358
6 months    JiVitA-3         BANGLADESH                     1                    NA                0.0629388   0.0573039   0.0685737
6 months    JiVitA-3         BANGLADESH                     2+                   NA                0.0530488   0.0403852   0.0657124
6 months    LCNI-5           MALAWI                         1                    NA                0.0700524   0.0445951   0.0955097
6 months    LCNI-5           MALAWI                         2+                   NA                0.0839920   0.0579129   0.1100711
6 months    NIH-Crypto       BANGLADESH                     1                    NA                0.0295858   0.0148264   0.0443452
6 months    NIH-Crypto       BANGLADESH                     2+                   NA                0.0384615   0.0123088   0.0646143
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0050324   0.0013129   0.0087518
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0190779   0.0083846   0.0297712
24 months   IRC              INDIA                          1                    NA                0.0786517   0.0226565   0.1346469
24 months   IRC              INDIA                          2+                   NA                0.1062500   0.0724453   0.1400547
24 months   JiVitA-3         BANGLADESH                     1                    NA                0.1486517   0.1351777   0.1621258
24 months   JiVitA-3         BANGLADESH                     2+                   NA                0.1814109   0.1610486   0.2017731
24 months   LCNI-5           MALAWI                         1                    NA                0.1004530   0.0643791   0.1365269
24 months   LCNI-5           MALAWI                         2+                   NA                0.1418209   0.1013451   0.1822968
24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.0592854   0.0346588   0.0839119
24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.0937078   0.0476063   0.1398093
24 months   PROVIDE          BANGLADESH                     1                    NA                0.0841598   0.0576865   0.1106332
24 months   PROVIDE          BANGLADESH                     2+                   NA                0.1036540   0.0558625   0.1514455


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA                          NA                   NA                0.0412371   0.0214268   0.0610475
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.1091347   0.1045757   0.1136937
6 months    IRC              INDIA                          NA                   NA                0.0712531   0.0462303   0.0962759
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0606548   0.0568002   0.0645093
6 months    LCNI-5           MALAWI                         NA                   NA                0.0801480   0.0614493   0.0988466
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.0321678   0.0192256   0.0451101
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0094059   0.0051955   0.0136164
24 months   IRC              INDIA                          NA                   NA                0.1002445   0.0711031   0.1293859
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1558803   0.1471449   0.1646158
24 months   LCNI-5           MALAWI                         NA                   NA                0.1208406   0.0940828   0.1475985
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0700389   0.0479542   0.0921236
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.0899654   0.0666186   0.1133122


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       IRC              INDIA                          2+                   1                 0.6078947   0.2169190   1.7035666
Birth       JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-3         BANGLADESH                     2+                   1                 0.8013841   0.6958563   0.9229155
6 months    IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    IRC              INDIA                          2+                   1                 0.4252180   0.2020971   0.8946709
6 months    JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-3         BANGLADESH                     2+                   1                 0.8428637   0.6535701   1.0869824
6 months    LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    LCNI-5           MALAWI                         2+                   1                 1.1989882   0.7430684   1.9346439
6 months    NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    NIH-Crypto       BANGLADESH                     2+                   1                 1.3000000   0.5593501   3.0213633
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 3.7910516   1.4993541   9.5855087
24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   IRC              INDIA                          2+                   1                 1.3508929   0.6193830   2.9463377
24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-3         BANGLADESH                     2+                   1                 1.2203752   1.0574927   1.4083461
24 months   LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   LCNI-5           MALAWI                         2+                   1                 1.4118141   0.8919680   2.2346308
24 months   NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   NIH-Crypto       BANGLADESH                     2+                   1                 1.5806232   0.8303208   3.0089207
24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH                     2+                   1                 1.2316330   0.7060664   2.1484096


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    NA                -0.0182867   -0.0612727    0.0246993
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.0094527   -0.0141345   -0.0047710
6 months    IRC              INDIA                          1                    NA                -0.0554321   -0.1193683    0.0085042
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0022840   -0.0061363    0.0015683
6 months    LCNI-5           MALAWI                         1                    NA                 0.0100955   -0.0093638    0.0295549
6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.0025820   -0.0061590    0.0113231
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0043736    0.0008368    0.0079104
24 months   IRC              INDIA                          1                    NA                 0.0215928   -0.0295941    0.0727798
24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0072286   -0.0026554    0.0171126
24 months   LCNI-5           MALAWI                         1                    NA                 0.0203876   -0.0077467    0.0485220
24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0107536   -0.0053008    0.0268079
24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0058056   -0.0091976    0.0208087


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    NA                -0.4434524   -1.9325479    0.2895070
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.0866153   -0.1299424   -0.0449496
6 months    IRC              INDIA                          1                    NA                -0.7779605   -1.8939299   -0.0923359
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0376559   -0.1030241    0.0238384
6 months    LCNI-5           MALAWI                         1                    NA                 0.1259613   -0.1519715    0.3368381
6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.0802676   -0.2334419    0.3141892
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.4649816    0.0380762    0.7024248
24 months   IRC              INDIA                          1                    NA                 0.2154015   -0.4980614    0.5890724
24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0463728   -0.0193684    0.1078742
24 months   LCNI-5           MALAWI                         1                    NA                 0.1687151   -0.0971667    0.3701645
24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.1535370   -0.1039415    0.3509623
24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0645312   -0.1170455    0.2165925

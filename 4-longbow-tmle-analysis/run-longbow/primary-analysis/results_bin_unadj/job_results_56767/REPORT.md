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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        nchldlt5    sstunted   n_cell      n
----------  ---------------  -----------------------------  ---------  ---------  -------  -----
Birth       IRC              INDIA                          1                  0       79    388
Birth       IRC              INDIA                          1                  1        5    388
Birth       IRC              INDIA                          2+                 0      293    388
Birth       IRC              INDIA                          2+                 1       11    388
Birth       NIH-Crypto       BANGLADESH                     1                  0      515    732
Birth       NIH-Crypto       BANGLADESH                     1                  1        7    732
Birth       NIH-Crypto       BANGLADESH                     2+                 0      207    732
Birth       NIH-Crypto       BANGLADESH                     2+                 1        3    732
Birth       PROVIDE          BANGLADESH                     1                  0      388    539
Birth       PROVIDE          BANGLADESH                     1                  1        3    539
Birth       PROVIDE          BANGLADESH                     2+                 0      147    539
Birth       PROVIDE          BANGLADESH                     2+                 1        1    539
6 months    IRC              INDIA                          1                  0       78    407
6 months    IRC              INDIA                          1                  1       11    407
6 months    IRC              INDIA                          2+                 0      300    407
6 months    IRC              INDIA                          2+                 1       18    407
6 months    LCNI-5           MALAWI                         1                  0      362    811
6 months    LCNI-5           MALAWI                         1                  1       28    811
6 months    LCNI-5           MALAWI                         2+                 0      384    811
6 months    LCNI-5           MALAWI                         2+                 1       37    811
6 months    NIH-Crypto       BANGLADESH                     1                  0      492    715
6 months    NIH-Crypto       BANGLADESH                     1                  1       15    715
6 months    NIH-Crypto       BANGLADESH                     2+                 0      200    715
6 months    NIH-Crypto       BANGLADESH                     2+                 1        8    715
6 months    PROVIDE          BANGLADESH                     1                  0      428    604
6 months    PROVIDE          BANGLADESH                     1                  1       10    604
6 months    PROVIDE          BANGLADESH                     2+                 0      162    604
6 months    PROVIDE          BANGLADESH                     2+                 1        4    604
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0     1384   2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        7   2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                 0      617   2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                 1       12   2020
24 months   IRC              INDIA                          1                  0       82    409
24 months   IRC              INDIA                          1                  1        7    409
24 months   IRC              INDIA                          2+                 0      286    409
24 months   IRC              INDIA                          2+                 1       34    409
24 months   LCNI-5           MALAWI                         1                  0      255    571
24 months   LCNI-5           MALAWI                         1                  1       28    571
24 months   LCNI-5           MALAWI                         2+                 0      247    571
24 months   LCNI-5           MALAWI                         2+                 1       41    571
24 months   NIH-Crypto       BANGLADESH                     1                  0      336    514
24 months   NIH-Crypto       BANGLADESH                     1                  1       21    514
24 months   NIH-Crypto       BANGLADESH                     2+                 0      142    514
24 months   NIH-Crypto       BANGLADESH                     2+                 1       15    514
24 months   PROVIDE          BANGLADESH                     1                  0      389    578
24 months   PROVIDE          BANGLADESH                     1                  1       35    578
24 months   PROVIDE          BANGLADESH                     2+                 0      137    578
24 months   PROVIDE          BANGLADESH                     2+                 1       17    578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0        4      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        1      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                 0        1      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                 1        0      6


The following strata were considered:

* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: IRC, country: INDIA
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
![](/tmp/e3d43112-534a-41d0-aae3-f58f8e17a829/c08e19e6-fc8c-4d24-96e5-c218c25f57b3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e3d43112-534a-41d0-aae3-f58f8e17a829/c08e19e6-fc8c-4d24-96e5-c218c25f57b3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e3d43112-534a-41d0-aae3-f58f8e17a829/c08e19e6-fc8c-4d24-96e5-c218c25f57b3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e3d43112-534a-41d0-aae3-f58f8e17a829/c08e19e6-fc8c-4d24-96e5-c218c25f57b3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA                          1                    NA                0.0595238   0.0088611   0.1101865
Birth       IRC              INDIA                          2+                   NA                0.0361842   0.0151644   0.0572040
6 months    IRC              INDIA                          1                    NA                0.1235955   0.0551349   0.1920561
6 months    IRC              INDIA                          2+                   NA                0.0566038   0.0311742   0.0820333
6 months    LCNI-5           MALAWI                         1                    NA                0.0717949   0.0461587   0.0974310
6 months    LCNI-5           MALAWI                         2+                   NA                0.0878860   0.0608240   0.1149480
6 months    NIH-Crypto       BANGLADESH                     1                    NA                0.0295858   0.0148264   0.0443452
6 months    NIH-Crypto       BANGLADESH                     2+                   NA                0.0384615   0.0123088   0.0646143
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0050324   0.0013129   0.0087518
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0190779   0.0083846   0.0297712
24 months   IRC              INDIA                          1                    NA                0.0786517   0.0226565   0.1346469
24 months   IRC              INDIA                          2+                   NA                0.1062500   0.0724453   0.1400547
24 months   LCNI-5           MALAWI                         1                    NA                0.0989399   0.0641224   0.1337575
24 months   LCNI-5           MALAWI                         2+                   NA                0.1423611   0.1019705   0.1827517
24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.0588235   0.0343922   0.0832549
24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.0955414   0.0495145   0.1415683
24 months   PROVIDE          BANGLADESH                     1                    NA                0.0825472   0.0563301   0.1087642
24 months   PROVIDE          BANGLADESH                     2+                   NA                0.1103896   0.0608528   0.1599264


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA                          NA                   NA                0.0412371   0.0214268   0.0610475
6 months    IRC              INDIA                          NA                   NA                0.0712531   0.0462303   0.0962759
6 months    LCNI-5           MALAWI                         NA                   NA                0.0801480   0.0614493   0.0988466
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.0321678   0.0192256   0.0451101
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0094059   0.0051955   0.0136164
24 months   IRC              INDIA                          NA                   NA                0.1002445   0.0711031   0.1293859
24 months   LCNI-5           MALAWI                         NA                   NA                0.1208406   0.0940828   0.1475985
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0700389   0.0479542   0.0921236
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.0899654   0.0666186   0.1133122


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       IRC              INDIA                          2+                   1                 0.6078947   0.2169190   1.7035666
6 months    IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    IRC              INDIA                          2+                   1                 0.4579760   0.2244433   0.9344988
6 months    LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    LCNI-5           MALAWI                         2+                   1                 1.2241262   0.7639304   1.9615465
6 months    NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    NIH-Crypto       BANGLADESH                     2+                   1                 1.3000000   0.5593501   3.0213633
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 3.7910516   1.4993541   9.5855087
24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   IRC              INDIA                          2+                   1                 1.3508929   0.6193830   2.9463377
24 months   LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   LCNI-5           MALAWI                         2+                   1                 1.4388641   0.9155963   2.2611820
24 months   NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   NIH-Crypto       BANGLADESH                     2+                   1                 1.6242038   0.8598043   3.0681842
24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH                     2+                   1                 1.3372913   0.7717307   2.3173214


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       IRC              INDIA                          1                    NA                -0.0182867   -0.0612727   0.0246993
6 months    IRC              INDIA                          1                    NA                -0.0523424   -0.1094670   0.0047821
6 months    LCNI-5           MALAWI                         1                    NA                 0.0083531   -0.0110057   0.0277119
6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.0025820   -0.0061590   0.0113231
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0043736    0.0008368   0.0079104
24 months   IRC              INDIA                          1                    NA                 0.0215928   -0.0295941   0.0727798
24 months   LCNI-5           MALAWI                         1                    NA                 0.0219007   -0.0050548   0.0488562
24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0112154   -0.0047684   0.0271991
24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0074182   -0.0075484   0.0223848


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    NA                -0.4434524   -1.9325479    0.2895070
6 months    IRC              INDIA                          1                    NA                -0.7345990   -1.7048847   -0.1123704
6 months    LCNI-5           MALAWI                         1                    NA                 0.1042209   -0.1716618    0.3151435
6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.0802676   -0.2334419    0.3141892
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.4649816    0.0380762    0.7024248
24 months   IRC              INDIA                          1                    NA                 0.2154015   -0.4980614    0.5890724
24 months   LCNI-5           MALAWI                         1                    NA                 0.1812362   -0.0714841    0.3743499
24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.1601307   -0.0956435    0.3561953
24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0824565   -0.0985842    0.2336626

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

**Outcome Variable:** wasted

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

agecat      studyid          country                        nchldlt5    wasted   n_cell       n
----------  ---------------  -----------------------------  ---------  -------  -------  ------
Birth       IRC              INDIA                          1                0       50     343
Birth       IRC              INDIA                          1                1       22     343
Birth       IRC              INDIA                          2+               0      201     343
Birth       IRC              INDIA                          2+               1       70     343
Birth       JiVitA-3         BANGLADESH                     1                0     9573   17991
Birth       JiVitA-3         BANGLADESH                     1                1     1305   17991
Birth       JiVitA-3         BANGLADESH                     2+               0     6445   17991
Birth       JiVitA-3         BANGLADESH                     2+               1      668   17991
Birth       NIH-Crypto       BANGLADESH                     1                0      385     707
Birth       NIH-Crypto       BANGLADESH                     1                1      119     707
Birth       NIH-Crypto       BANGLADESH                     2+               0      150     707
Birth       NIH-Crypto       BANGLADESH                     2+               1       53     707
Birth       PROVIDE          BANGLADESH                     1                0      295     532
Birth       PROVIDE          BANGLADESH                     1                1       90     532
Birth       PROVIDE          BANGLADESH                     2+               0      120     532
Birth       PROVIDE          BANGLADESH                     2+               1       27     532
6 months    IRC              INDIA                          1                0       77     408
6 months    IRC              INDIA                          1                1       11     408
6 months    IRC              INDIA                          2+               0      277     408
6 months    IRC              INDIA                          2+               1       43     408
6 months    JiVitA-3         BANGLADESH                     1                0     9976   16773
6 months    JiVitA-3         BANGLADESH                     1                1      896   16773
6 months    JiVitA-3         BANGLADESH                     2+               0     5378   16773
6 months    JiVitA-3         BANGLADESH                     2+               1      523   16773
6 months    LCNI-5           MALAWI                         1                0      384     811
6 months    LCNI-5           MALAWI                         1                1        6     811
6 months    LCNI-5           MALAWI                         2+               0      413     811
6 months    LCNI-5           MALAWI                         2+               1        8     811
6 months    NIH-Crypto       BANGLADESH                     1                0      494     715
6 months    NIH-Crypto       BANGLADESH                     1                1       13     715
6 months    NIH-Crypto       BANGLADESH                     2+               0      200     715
6 months    NIH-Crypto       BANGLADESH                     2+               1        8     715
6 months    PROVIDE          BANGLADESH                     1                0      421     603
6 months    PROVIDE          BANGLADESH                     1                1       17     603
6 months    PROVIDE          BANGLADESH                     2+               0      157     603
6 months    PROVIDE          BANGLADESH                     2+               1        8     603
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     1335    2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       55    2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               0      597    2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       32    2019
24 months   IRC              INDIA                          1                0       78     409
24 months   IRC              INDIA                          1                1       11     409
24 months   IRC              INDIA                          2+               0      300     409
24 months   IRC              INDIA                          2+               1       20     409
24 months   JiVitA-3         BANGLADESH                     1                0     4203    8593
24 months   JiVitA-3         BANGLADESH                     1                1     1231    8593
24 months   JiVitA-3         BANGLADESH                     2+               0     2516    8593
24 months   JiVitA-3         BANGLADESH                     2+               1      643    8593
24 months   LCNI-5           MALAWI                         1                0      271     555
24 months   LCNI-5           MALAWI                         1                1        6     555
24 months   LCNI-5           MALAWI                         2+               0      274     555
24 months   LCNI-5           MALAWI                         2+               1        4     555
24 months   NIH-Crypto       BANGLADESH                     1                0      328     514
24 months   NIH-Crypto       BANGLADESH                     1                1       29     514
24 months   NIH-Crypto       BANGLADESH                     2+               0      141     514
24 months   NIH-Crypto       BANGLADESH                     2+               1       16     514
24 months   PROVIDE          BANGLADESH                     1                0      379     579
24 months   PROVIDE          BANGLADESH                     1                1       45     579
24 months   PROVIDE          BANGLADESH                     2+               0      138     579
24 months   PROVIDE          BANGLADESH                     2+               1       17     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1        0       6


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

* agecat: 24 months, studyid: LCNI-5, country: MALAWI
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
![](/tmp/6f031108-5ce1-415d-b041-d2f11d1c3cf0/9aaf5612-2090-4a71-80a5-5160ad775ea5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6f031108-5ce1-415d-b041-d2f11d1c3cf0/9aaf5612-2090-4a71-80a5-5160ad775ea5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6f031108-5ce1-415d-b041-d2f11d1c3cf0/9aaf5612-2090-4a71-80a5-5160ad775ea5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6f031108-5ce1-415d-b041-d2f11d1c3cf0/9aaf5612-2090-4a71-80a5-5160ad775ea5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA                          1                    NA                0.3055556   0.1989991   0.4121120
Birth       IRC              INDIA                          2+                   NA                0.2583026   0.2061140   0.3104911
Birth       JiVitA-3         BANGLADESH                     1                    NA                0.1199669   0.1132156   0.1267182
Birth       JiVitA-3         BANGLADESH                     2+                   NA                0.0939126   0.0868204   0.1010047
Birth       NIH-Crypto       BANGLADESH                     1                    NA                0.2361111   0.1990077   0.2732145
Birth       NIH-Crypto       BANGLADESH                     2+                   NA                0.2610837   0.2006200   0.3215475
Birth       PROVIDE          BANGLADESH                     1                    NA                0.2337662   0.1914509   0.2760816
Birth       PROVIDE          BANGLADESH                     2+                   NA                0.1836735   0.1210188   0.2463281
6 months    IRC              INDIA                          1                    NA                0.1250000   0.0558171   0.1941829
6 months    IRC              INDIA                          2+                   NA                0.1343750   0.0969613   0.1717887
6 months    JiVitA-3         BANGLADESH                     1                    NA                0.0824135   0.0764123   0.0884148
6 months    JiVitA-3         BANGLADESH                     2+                   NA                0.0886290   0.0810190   0.0962391
6 months    LCNI-5           MALAWI                         1                    NA                0.0153846   0.0031621   0.0276071
6 months    LCNI-5           MALAWI                         2+                   NA                0.0190024   0.0059523   0.0320524
6 months    NIH-Crypto       BANGLADESH                     1                    NA                0.0256410   0.0118729   0.0394092
6 months    NIH-Crypto       BANGLADESH                     2+                   NA                0.0384615   0.0123088   0.0646143
6 months    PROVIDE          BANGLADESH                     1                    NA                0.0388128   0.0207093   0.0569163
6 months    PROVIDE          BANGLADESH                     2+                   NA                0.0484848   0.0156846   0.0812851
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0395683   0.0293176   0.0498191
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0508744   0.0336976   0.0680512
24 months   IRC              INDIA                          1                    NA                0.1235955   0.0551353   0.1920557
24 months   IRC              INDIA                          2+                   NA                0.0625000   0.0359460   0.0890540
24 months   JiVitA-3         BANGLADESH                     1                    NA                0.2265366   0.2142355   0.2388377
24 months   JiVitA-3         BANGLADESH                     2+                   NA                0.2035454   0.1880063   0.2190845
24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.0812325   0.0528661   0.1095989
24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.1019108   0.0545422   0.1492795
24 months   PROVIDE          BANGLADESH                     1                    NA                0.1061321   0.0767893   0.1354748
24 months   PROVIDE          BANGLADESH                     2+                   NA                0.1096774   0.0604406   0.1589142


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA                          NA                   NA                0.2682216   0.2212677   0.3151755
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.1096659   0.1045396   0.1147922
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                0.2432815   0.2116319   0.2749310
Birth       PROVIDE          BANGLADESH                     NA                   NA                0.2199248   0.1846953   0.2551543
6 months    IRC              INDIA                          NA                   NA                0.1323529   0.0994307   0.1652752
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0846003   0.0797949   0.0894056
6 months    LCNI-5           MALAWI                         NA                   NA                0.0172626   0.0082929   0.0262323
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.0293706   0.0169860   0.0417552
6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0414594   0.0255348   0.0573839
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0430906   0.0342310   0.0519502
24 months   IRC              INDIA                          NA                   NA                0.0757946   0.0501131   0.1014762
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2180845   0.2082032   0.2279658
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1070812   0.0818727   0.1322897


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       IRC              INDIA                          2+                   1                 0.8453539   0.5649423   1.2649491
Birth       JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-3         BANGLADESH                     2+                   1                 0.7828205   0.7149431   0.8571423
Birth       NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto       BANGLADESH                     2+                   1                 1.1057664   0.8358294   1.4628816
Birth       PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       PROVIDE          BANGLADESH                     2+                   1                 0.7857143   0.5340132   1.1560517
6 months    IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    IRC              INDIA                          2+                   1                 1.0750000   0.5785502   1.9974500
6 months    JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-3         BANGLADESH                     2+                   1                 1.0754185   0.9629588   1.2010119
6 months    LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    LCNI-5           MALAWI                         2+                   1                 1.2351544   0.4321632   3.5301627
6 months    NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    NIH-Crypto       BANGLADESH                     2+                   1                 1.5000000   0.6306811   3.5675717
6 months    PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    PROVIDE          BANGLADESH                     2+                   1                 1.2491979   0.5492426   2.8411767
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.2857349   0.8400964   1.9677675
24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   IRC              INDIA                          2+                   1                 0.5056818   0.2515958   1.0163687
24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-3         BANGLADESH                     2+                   1                 0.8985100   0.8199581   0.9845873
24 months   NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   NIH-Crypto       BANGLADESH                     2+                   1                 1.2545574   0.7014669   2.2437470
24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH                     2+                   1                 1.0334050   0.6099552   1.7508268


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    NA                -0.0373340   -0.1311004    0.0564324
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.0103010   -0.0140217   -0.0065802
Birth       NIH-Crypto       BANGLADESH                     1                    NA                 0.0071704   -0.0132157    0.0275564
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.0138414   -0.0348191    0.0071363
6 months    IRC              INDIA                          1                    NA                 0.0073529   -0.0543356    0.0690415
6 months    JiVitA-3         BANGLADESH                     1                    NA                 0.0021867   -0.0011616    0.0055350
6 months    LCNI-5           MALAWI                         1                    NA                 0.0018780   -0.0074045    0.0111606
6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.0037296   -0.0048790    0.0123382
6 months    PROVIDE          BANGLADESH                     1                    NA                 0.0026466   -0.0076107    0.0129039
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0035223   -0.0027136    0.0097582
24 months   IRC              INDIA                          1                    NA                -0.0478009   -0.1053040    0.0097023
24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0084521   -0.0155830   -0.0013213
24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0063161   -0.0105686    0.0232009
24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0009491   -0.0143954    0.0162936


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    NA                -0.1391908   -0.5481599    0.1617431
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.0939304   -0.1280331   -0.0608586
Birth       NIH-Crypto       BANGLADESH                     1                    NA                 0.0294735   -0.0580105    0.1097237
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.0629371   -0.1624999    0.0280986
6 months    IRC              INDIA                          1                    NA                 0.0555556   -0.5468114    0.4233458
6 months    JiVitA-3         BANGLADESH                     1                    NA                 0.0258476   -0.0146548    0.0647332
6 months    LCNI-5           MALAWI                         1                    NA                 0.1087912   -0.6240960    0.5109568
6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.1269841   -0.2148048    0.3726097
6 months    PROVIDE          BANGLADESH                     1                    NA                 0.0638356   -0.2178857    0.2803892
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0817415   -0.0739512    0.2148632
24 months   IRC              INDIA                          1                    NA                -0.6306633   -1.5613086   -0.0381657
24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0387562   -0.0719862   -0.0065563
24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0721444   -0.1411567    0.2455760
24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0088634   -0.1452980    0.1422740

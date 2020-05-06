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

**Intervention Variable:** nhh

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* cleanck
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
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

agecat      studyid         country      nhh          sstunted   n_cell     n  outcome_variable 
----------  --------------  -----------  ----------  ---------  -------  ----  -----------------
Birth       IRC             INDIA        3 or less           0       53   388  sstunted         
Birth       IRC             INDIA        3 or less           1        1   388  sstunted         
Birth       IRC             INDIA        4-5                 0      142   388  sstunted         
Birth       IRC             INDIA        4-5                 1        8   388  sstunted         
Birth       IRC             INDIA        6-7                 0       97   388  sstunted         
Birth       IRC             INDIA        6-7                 1        6   388  sstunted         
Birth       IRC             INDIA        8+                  0       80   388  sstunted         
Birth       IRC             INDIA        8+                  1        1   388  sstunted         
Birth       NIH-Birth       BANGLADESH   3 or less           0      106   608  sstunted         
Birth       NIH-Birth       BANGLADESH   3 or less           1        6   608  sstunted         
Birth       NIH-Birth       BANGLADESH   4-5                 0      248   608  sstunted         
Birth       NIH-Birth       BANGLADESH   4-5                 1        7   608  sstunted         
Birth       NIH-Birth       BANGLADESH   6-7                 0      135   608  sstunted         
Birth       NIH-Birth       BANGLADESH   6-7                 1        3   608  sstunted         
Birth       NIH-Birth       BANGLADESH   8+                  0      100   608  sstunted         
Birth       NIH-Birth       BANGLADESH   8+                  1        3   608  sstunted         
Birth       NIH-Crypto      BANGLADESH   3 or less           0      108   732  sstunted         
Birth       NIH-Crypto      BANGLADESH   3 or less           1        0   732  sstunted         
Birth       NIH-Crypto      BANGLADESH   4-5                 0      322   732  sstunted         
Birth       NIH-Crypto      BANGLADESH   4-5                 1        6   732  sstunted         
Birth       NIH-Crypto      BANGLADESH   6-7                 0      173   732  sstunted         
Birth       NIH-Crypto      BANGLADESH   6-7                 1        3   732  sstunted         
Birth       NIH-Crypto      BANGLADESH   8+                  0      119   732  sstunted         
Birth       NIH-Crypto      BANGLADESH   8+                  1        1   732  sstunted         
Birth       PROVIDE         BANGLADESH   3 or less           0      102   539  sstunted         
Birth       PROVIDE         BANGLADESH   3 or less           1        2   539  sstunted         
Birth       PROVIDE         BANGLADESH   4-5                 0      250   539  sstunted         
Birth       PROVIDE         BANGLADESH   4-5                 1        1   539  sstunted         
Birth       PROVIDE         BANGLADESH   6-7                 0      115   539  sstunted         
Birth       PROVIDE         BANGLADESH   6-7                 1        1   539  sstunted         
Birth       PROVIDE         BANGLADESH   8+                  0       68   539  sstunted         
Birth       PROVIDE         BANGLADESH   8+                  1        0   539  sstunted         
6 months    IRC             INDIA        3 or less           0       55   407  sstunted         
6 months    IRC             INDIA        3 or less           1        3   407  sstunted         
6 months    IRC             INDIA        4-5                 0      145   407  sstunted         
6 months    IRC             INDIA        4-5                 1       13   407  sstunted         
6 months    IRC             INDIA        6-7                 0       98   407  sstunted         
6 months    IRC             INDIA        6-7                 1        8   407  sstunted         
6 months    IRC             INDIA        8+                  0       80   407  sstunted         
6 months    IRC             INDIA        8+                  1        5   407  sstunted         
6 months    LCNI-5          MALAWI       3 or less           0      206   816  sstunted         
6 months    LCNI-5          MALAWI       3 or less           1       18   816  sstunted         
6 months    LCNI-5          MALAWI       4-5                 0      313   816  sstunted         
6 months    LCNI-5          MALAWI       4-5                 1       27   816  sstunted         
6 months    LCNI-5          MALAWI       6-7                 0      169   816  sstunted         
6 months    LCNI-5          MALAWI       6-7                 1       13   816  sstunted         
6 months    LCNI-5          MALAWI       8+                  0       63   816  sstunted         
6 months    LCNI-5          MALAWI       8+                  1        7   816  sstunted         
6 months    NIH-Birth       BANGLADESH   3 or less           0       89   537  sstunted         
6 months    NIH-Birth       BANGLADESH   3 or less           1        6   537  sstunted         
6 months    NIH-Birth       BANGLADESH   4-5                 0      211   537  sstunted         
6 months    NIH-Birth       BANGLADESH   4-5                 1       16   537  sstunted         
6 months    NIH-Birth       BANGLADESH   6-7                 0      119   537  sstunted         
6 months    NIH-Birth       BANGLADESH   6-7                 1        9   537  sstunted         
6 months    NIH-Birth       BANGLADESH   8+                  0       83   537  sstunted         
6 months    NIH-Birth       BANGLADESH   8+                  1        4   537  sstunted         
6 months    NIH-Crypto      BANGLADESH   3 or less           0       99   715  sstunted         
6 months    NIH-Crypto      BANGLADESH   3 or less           1        5   715  sstunted         
6 months    NIH-Crypto      BANGLADESH   4-5                 0      319   715  sstunted         
6 months    NIH-Crypto      BANGLADESH   4-5                 1        7   715  sstunted         
6 months    NIH-Crypto      BANGLADESH   6-7                 0      163   715  sstunted         
6 months    NIH-Crypto      BANGLADESH   6-7                 1        7   715  sstunted         
6 months    NIH-Crypto      BANGLADESH   8+                  0      111   715  sstunted         
6 months    NIH-Crypto      BANGLADESH   8+                  1        4   715  sstunted         
6 months    PROVIDE         BANGLADESH   3 or less           0      102   604  sstunted         
6 months    PROVIDE         BANGLADESH   3 or less           1        3   604  sstunted         
6 months    PROVIDE         BANGLADESH   4-5                 0      280   604  sstunted         
6 months    PROVIDE         BANGLADESH   4-5                 1        9   604  sstunted         
6 months    PROVIDE         BANGLADESH   6-7                 0      129   604  sstunted         
6 months    PROVIDE         BANGLADESH   6-7                 1        1   604  sstunted         
6 months    PROVIDE         BANGLADESH   8+                  0       79   604  sstunted         
6 months    PROVIDE         BANGLADESH   8+                  1        1   604  sstunted         
6 months    SAS-FoodSuppl   INDIA        3 or less           0       31   380  sstunted         
6 months    SAS-FoodSuppl   INDIA        3 or less           1        2   380  sstunted         
6 months    SAS-FoodSuppl   INDIA        4-5                 0      145   380  sstunted         
6 months    SAS-FoodSuppl   INDIA        4-5                 1       21   380  sstunted         
6 months    SAS-FoodSuppl   INDIA        6-7                 0       94   380  sstunted         
6 months    SAS-FoodSuppl   INDIA        6-7                 1       21   380  sstunted         
6 months    SAS-FoodSuppl   INDIA        8+                  0       56   380  sstunted         
6 months    SAS-FoodSuppl   INDIA        8+                  1       10   380  sstunted         
24 months   IRC             INDIA        3 or less           0       54   409  sstunted         
24 months   IRC             INDIA        3 or less           1        4   409  sstunted         
24 months   IRC             INDIA        4-5                 0      142   409  sstunted         
24 months   IRC             INDIA        4-5                 1       16   409  sstunted         
24 months   IRC             INDIA        6-7                 0       94   409  sstunted         
24 months   IRC             INDIA        6-7                 1       13   409  sstunted         
24 months   IRC             INDIA        8+                  0       78   409  sstunted         
24 months   IRC             INDIA        8+                  1        8   409  sstunted         
24 months   LCNI-5          MALAWI       3 or less           0      142   574  sstunted         
24 months   LCNI-5          MALAWI       3 or less           1       17   574  sstunted         
24 months   LCNI-5          MALAWI       4-5                 0      205   574  sstunted         
24 months   LCNI-5          MALAWI       4-5                 1       32   574  sstunted         
24 months   LCNI-5          MALAWI       6-7                 0      115   574  sstunted         
24 months   LCNI-5          MALAWI       6-7                 1       14   574  sstunted         
24 months   LCNI-5          MALAWI       8+                  0       43   574  sstunted         
24 months   LCNI-5          MALAWI       8+                  1        6   574  sstunted         
24 months   NIH-Birth       BANGLADESH   3 or less           0       64   429  sstunted         
24 months   NIH-Birth       BANGLADESH   3 or less           1       11   429  sstunted         
24 months   NIH-Birth       BANGLADESH   4-5                 0      139   429  sstunted         
24 months   NIH-Birth       BANGLADESH   4-5                 1       45   429  sstunted         
24 months   NIH-Birth       BANGLADESH   6-7                 0       75   429  sstunted         
24 months   NIH-Birth       BANGLADESH   6-7                 1       25   429  sstunted         
24 months   NIH-Birth       BANGLADESH   8+                  0       56   429  sstunted         
24 months   NIH-Birth       BANGLADESH   8+                  1       14   429  sstunted         
24 months   NIH-Crypto      BANGLADESH   3 or less           0       63   514  sstunted         
24 months   NIH-Crypto      BANGLADESH   3 or less           1        6   514  sstunted         
24 months   NIH-Crypto      BANGLADESH   4-5                 0      216   514  sstunted         
24 months   NIH-Crypto      BANGLADESH   4-5                 1       16   514  sstunted         
24 months   NIH-Crypto      BANGLADESH   6-7                 0      121   514  sstunted         
24 months   NIH-Crypto      BANGLADESH   6-7                 1        9   514  sstunted         
24 months   NIH-Crypto      BANGLADESH   8+                  0       78   514  sstunted         
24 months   NIH-Crypto      BANGLADESH   8+                  1        5   514  sstunted         
24 months   PROVIDE         BANGLADESH   3 or less           0       98   578  sstunted         
24 months   PROVIDE         BANGLADESH   3 or less           1        8   578  sstunted         
24 months   PROVIDE         BANGLADESH   4-5                 0      247   578  sstunted         
24 months   PROVIDE         BANGLADESH   4-5                 1       26   578  sstunted         
24 months   PROVIDE         BANGLADESH   6-7                 0      107   578  sstunted         
24 months   PROVIDE         BANGLADESH   6-7                 1       10   578  sstunted         
24 months   PROVIDE         BANGLADESH   8+                  0       74   578  sstunted         
24 months   PROVIDE         BANGLADESH   8+                  1        8   578  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: IRC, country: INDIA

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




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->

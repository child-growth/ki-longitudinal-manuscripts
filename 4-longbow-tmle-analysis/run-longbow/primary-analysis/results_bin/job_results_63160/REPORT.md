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

agecat      studyid          country                        trth2o    sstunted   n_cell     n  outcome_variable 
----------  ---------------  -----------------------------  -------  ---------  -------  ----  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1                0       25    26  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          1                1        1    26  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          0                0        0    26  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          0                1        0    26  sstunted         
Birth       GMS-Nepal        NEPAL                          1                0        1     4  sstunted         
Birth       GMS-Nepal        NEPAL                          1                1        0     4  sstunted         
Birth       GMS-Nepal        NEPAL                          0                0        3     4  sstunted         
Birth       GMS-Nepal        NEPAL                          0                1        0     4  sstunted         
Birth       IRC              INDIA                          1                0      114   120  sstunted         
Birth       IRC              INDIA                          1                1        6   120  sstunted         
Birth       IRC              INDIA                          0                0        0   120  sstunted         
Birth       IRC              INDIA                          0                1        0   120  sstunted         
Birth       MAL-ED           BANGLADESH                     1                0      113   119  sstunted         
Birth       MAL-ED           BANGLADESH                     1                1        4   119  sstunted         
Birth       MAL-ED           BANGLADESH                     0                0        2   119  sstunted         
Birth       MAL-ED           BANGLADESH                     0                1        0   119  sstunted         
Birth       MAL-ED           BRAZIL                         1                0        3    22  sstunted         
Birth       MAL-ED           BRAZIL                         1                1        1    22  sstunted         
Birth       MAL-ED           BRAZIL                         0                0       17    22  sstunted         
Birth       MAL-ED           BRAZIL                         0                1        1    22  sstunted         
Birth       MAL-ED           INDIA                          1                0        0     2  sstunted         
Birth       MAL-ED           INDIA                          1                1        0     2  sstunted         
Birth       MAL-ED           INDIA                          0                0        1     2  sstunted         
Birth       MAL-ED           INDIA                          0                1        1     2  sstunted         
Birth       MAL-ED           NEPAL                          1                0        7     9  sstunted         
Birth       MAL-ED           NEPAL                          1                1        0     9  sstunted         
Birth       MAL-ED           NEPAL                          0                0        2     9  sstunted         
Birth       MAL-ED           NEPAL                          0                1        0     9  sstunted         
Birth       MAL-ED           PERU                           1                0       28    36  sstunted         
Birth       MAL-ED           PERU                           1                1        0    36  sstunted         
Birth       MAL-ED           PERU                           0                0        8    36  sstunted         
Birth       MAL-ED           PERU                           0                1        0    36  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   1                0        1     5  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   1                1        0     5  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   0                0        4     5  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   0                1        0     5  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        4    22  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        0    22  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0       17    22  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1        1    22  sstunted         
Birth       NIH-Crypto       BANGLADESH                     1                0      404   732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     1                1        5   732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     0                0      318   732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     0                1        5   732  sstunted         
Birth       PROVIDE          BANGLADESH                     1                0       11   539  sstunted         
Birth       PROVIDE          BANGLADESH                     1                1        1   539  sstunted         
Birth       PROVIDE          BANGLADESH                     0                0      524   539  sstunted         
Birth       PROVIDE          BANGLADESH                     0                1        3   539  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1                0      105   120  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1                1       15   120  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          0                0        0   120  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          0                1        0   120  sstunted         
6 months    GMS-Nepal        NEPAL                          1                0        1     4  sstunted         
6 months    GMS-Nepal        NEPAL                          1                1        0     4  sstunted         
6 months    GMS-Nepal        NEPAL                          0                0        3     4  sstunted         
6 months    GMS-Nepal        NEPAL                          0                1        0     4  sstunted         
6 months    IRC              INDIA                          1                0      110   121  sstunted         
6 months    IRC              INDIA                          1                1       11   121  sstunted         
6 months    IRC              INDIA                          0                0        0   121  sstunted         
6 months    IRC              INDIA                          0                1        0   121  sstunted         
6 months    MAL-ED           BANGLADESH                     1                0      129   134  sstunted         
6 months    MAL-ED           BANGLADESH                     1                1        3   134  sstunted         
6 months    MAL-ED           BANGLADESH                     0                0        2   134  sstunted         
6 months    MAL-ED           BANGLADESH                     0                1        0   134  sstunted         
6 months    MAL-ED           BRAZIL                         1                0       13   103  sstunted         
6 months    MAL-ED           BRAZIL                         1                1        0   103  sstunted         
6 months    MAL-ED           BRAZIL                         0                0       90   103  sstunted         
6 months    MAL-ED           BRAZIL                         0                1        0   103  sstunted         
6 months    MAL-ED           INDIA                          1                0        4     9  sstunted         
6 months    MAL-ED           INDIA                          1                1        0     9  sstunted         
6 months    MAL-ED           INDIA                          0                0        5     9  sstunted         
6 months    MAL-ED           INDIA                          0                1        0     9  sstunted         
6 months    MAL-ED           NEPAL                          1                0       69    83  sstunted         
6 months    MAL-ED           NEPAL                          1                1        0    83  sstunted         
6 months    MAL-ED           NEPAL                          0                0       14    83  sstunted         
6 months    MAL-ED           NEPAL                          0                1        0    83  sstunted         
6 months    MAL-ED           PERU                           1                0       36    49  sstunted         
6 months    MAL-ED           PERU                           1                1        3    49  sstunted         
6 months    MAL-ED           PERU                           0                0       10    49  sstunted         
6 months    MAL-ED           PERU                           0                1        0    49  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   1                0        1    12  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   1                1        1    12  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   0                0       10    12  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   0                1        0    12  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        5    42  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        1    42  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0       33    42  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1        3    42  sstunted         
6 months    NIH-Crypto       BANGLADESH                     1                0      379   715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     1                1       17   715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     0                0      313   715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     0                1        6   715  sstunted         
6 months    PROVIDE          BANGLADESH                     1                0       13   604  sstunted         
6 months    PROVIDE          BANGLADESH                     1                1        1   604  sstunted         
6 months    PROVIDE          BANGLADESH                     0                0      577   604  sstunted         
6 months    PROVIDE          BANGLADESH                     0                1       13   604  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1                0       87   119  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1                1       32   119  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          0                0        0   119  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          0                1        0   119  sstunted         
24 months   GMS-Nepal        NEPAL                          1                0        1     4  sstunted         
24 months   GMS-Nepal        NEPAL                          1                1        0     4  sstunted         
24 months   GMS-Nepal        NEPAL                          0                0        3     4  sstunted         
24 months   GMS-Nepal        NEPAL                          0                1        0     4  sstunted         
24 months   IRC              INDIA                          1                0      108   121  sstunted         
24 months   IRC              INDIA                          1                1       13   121  sstunted         
24 months   IRC              INDIA                          0                0        0   121  sstunted         
24 months   IRC              INDIA                          0                1        0   121  sstunted         
24 months   MAL-ED           BANGLADESH                     1                0      117   135  sstunted         
24 months   MAL-ED           BANGLADESH                     1                1       16   135  sstunted         
24 months   MAL-ED           BANGLADESH                     0                0        2   135  sstunted         
24 months   MAL-ED           BANGLADESH                     0                1        0   135  sstunted         
24 months   MAL-ED           BRAZIL                         1                0       13   103  sstunted         
24 months   MAL-ED           BRAZIL                         1                1        0   103  sstunted         
24 months   MAL-ED           BRAZIL                         0                0       90   103  sstunted         
24 months   MAL-ED           BRAZIL                         0                1        0   103  sstunted         
24 months   MAL-ED           INDIA                          1                0        4     9  sstunted         
24 months   MAL-ED           INDIA                          1                1        0     9  sstunted         
24 months   MAL-ED           INDIA                          0                0        4     9  sstunted         
24 months   MAL-ED           INDIA                          0                1        1     9  sstunted         
24 months   MAL-ED           NEPAL                          1                0       65    83  sstunted         
24 months   MAL-ED           NEPAL                          1                1        4    83  sstunted         
24 months   MAL-ED           NEPAL                          0                0       13    83  sstunted         
24 months   MAL-ED           NEPAL                          0                1        1    83  sstunted         
24 months   MAL-ED           PERU                           1                0       36    49  sstunted         
24 months   MAL-ED           PERU                           1                1        3    49  sstunted         
24 months   MAL-ED           PERU                           0                0        9    49  sstunted         
24 months   MAL-ED           PERU                           0                1        1    49  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   1                0        1    11  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   1                1        1    11  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   0                0        8    11  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   0                1        1    11  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        4    43  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        2    43  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0       20    43  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1       17    43  sstunted         
24 months   NIH-Crypto       BANGLADESH                     1                0      224   514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     1                1       18   514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     0                0      254   514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     0                1       18   514  sstunted         
24 months   PROVIDE          BANGLADESH                     1                0       13   578  sstunted         
24 months   PROVIDE          BANGLADESH                     1                1        1   578  sstunted         
24 months   PROVIDE          BANGLADESH                     0                0      513   578  sstunted         
24 months   PROVIDE          BANGLADESH                     0                1       51   578  sstunted         


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
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
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
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
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
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH

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

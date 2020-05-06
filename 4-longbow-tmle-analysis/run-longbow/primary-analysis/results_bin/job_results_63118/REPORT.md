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

**Outcome Variable:** stunted

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

agecat      studyid          country                        trth2o    stunted   n_cell     n  outcome_variable 
----------  ---------------  -----------------------------  -------  --------  -------  ----  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1               0       24    26  stunted          
Birth       CMC-V-BCS-2002   INDIA                          1               1        2    26  stunted          
Birth       CMC-V-BCS-2002   INDIA                          0               0        0    26  stunted          
Birth       CMC-V-BCS-2002   INDIA                          0               1        0    26  stunted          
Birth       GMS-Nepal        NEPAL                          1               0        1     4  stunted          
Birth       GMS-Nepal        NEPAL                          1               1        0     4  stunted          
Birth       GMS-Nepal        NEPAL                          0               0        3     4  stunted          
Birth       GMS-Nepal        NEPAL                          0               1        0     4  stunted          
Birth       IRC              INDIA                          1               0      102   120  stunted          
Birth       IRC              INDIA                          1               1       18   120  stunted          
Birth       IRC              INDIA                          0               0        0   120  stunted          
Birth       IRC              INDIA                          0               1        0   120  stunted          
Birth       MAL-ED           BANGLADESH                     1               0       97   119  stunted          
Birth       MAL-ED           BANGLADESH                     1               1       20   119  stunted          
Birth       MAL-ED           BANGLADESH                     0               0        2   119  stunted          
Birth       MAL-ED           BANGLADESH                     0               1        0   119  stunted          
Birth       MAL-ED           BRAZIL                         1               0        3    22  stunted          
Birth       MAL-ED           BRAZIL                         1               1        1    22  stunted          
Birth       MAL-ED           BRAZIL                         0               0       16    22  stunted          
Birth       MAL-ED           BRAZIL                         0               1        2    22  stunted          
Birth       MAL-ED           INDIA                          1               0        0     2  stunted          
Birth       MAL-ED           INDIA                          1               1        0     2  stunted          
Birth       MAL-ED           INDIA                          0               0        1     2  stunted          
Birth       MAL-ED           INDIA                          0               1        1     2  stunted          
Birth       MAL-ED           NEPAL                          1               0        7     9  stunted          
Birth       MAL-ED           NEPAL                          1               1        0     9  stunted          
Birth       MAL-ED           NEPAL                          0               0        2     9  stunted          
Birth       MAL-ED           NEPAL                          0               1        0     9  stunted          
Birth       MAL-ED           PERU                           1               0       23    36  stunted          
Birth       MAL-ED           PERU                           1               1        5    36  stunted          
Birth       MAL-ED           PERU                           0               0        8    36  stunted          
Birth       MAL-ED           PERU                           0               1        0    36  stunted          
Birth       MAL-ED           SOUTH AFRICA                   1               0        1     5  stunted          
Birth       MAL-ED           SOUTH AFRICA                   1               1        0     5  stunted          
Birth       MAL-ED           SOUTH AFRICA                   0               0        4     5  stunted          
Birth       MAL-ED           SOUTH AFRICA                   0               1        0     5  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        4    22  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        0    22  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0       14    22  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1        4    22  stunted          
Birth       NIH-Crypto       BANGLADESH                     1               0      345   732  stunted          
Birth       NIH-Crypto       BANGLADESH                     1               1       64   732  stunted          
Birth       NIH-Crypto       BANGLADESH                     0               0      286   732  stunted          
Birth       NIH-Crypto       BANGLADESH                     0               1       37   732  stunted          
Birth       PROVIDE          BANGLADESH                     1               0       11   539  stunted          
Birth       PROVIDE          BANGLADESH                     1               1        1   539  stunted          
Birth       PROVIDE          BANGLADESH                     0               0      480   539  stunted          
Birth       PROVIDE          BANGLADESH                     0               1       47   539  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1               0       85   120  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1               1       35   120  stunted          
6 months    CMC-V-BCS-2002   INDIA                          0               0        0   120  stunted          
6 months    CMC-V-BCS-2002   INDIA                          0               1        0   120  stunted          
6 months    GMS-Nepal        NEPAL                          1               0        1     4  stunted          
6 months    GMS-Nepal        NEPAL                          1               1        0     4  stunted          
6 months    GMS-Nepal        NEPAL                          0               0        3     4  stunted          
6 months    GMS-Nepal        NEPAL                          0               1        0     4  stunted          
6 months    IRC              INDIA                          1               0       90   121  stunted          
6 months    IRC              INDIA                          1               1       31   121  stunted          
6 months    IRC              INDIA                          0               0        0   121  stunted          
6 months    IRC              INDIA                          0               1        0   121  stunted          
6 months    MAL-ED           BANGLADESH                     1               0      107   134  stunted          
6 months    MAL-ED           BANGLADESH                     1               1       25   134  stunted          
6 months    MAL-ED           BANGLADESH                     0               0        2   134  stunted          
6 months    MAL-ED           BANGLADESH                     0               1        0   134  stunted          
6 months    MAL-ED           BRAZIL                         1               0       13   103  stunted          
6 months    MAL-ED           BRAZIL                         1               1        0   103  stunted          
6 months    MAL-ED           BRAZIL                         0               0       89   103  stunted          
6 months    MAL-ED           BRAZIL                         0               1        1   103  stunted          
6 months    MAL-ED           INDIA                          1               0        3     9  stunted          
6 months    MAL-ED           INDIA                          1               1        1     9  stunted          
6 months    MAL-ED           INDIA                          0               0        2     9  stunted          
6 months    MAL-ED           INDIA                          0               1        3     9  stunted          
6 months    MAL-ED           NEPAL                          1               0       65    83  stunted          
6 months    MAL-ED           NEPAL                          1               1        4    83  stunted          
6 months    MAL-ED           NEPAL                          0               0       13    83  stunted          
6 months    MAL-ED           NEPAL                          0               1        1    83  stunted          
6 months    MAL-ED           PERU                           1               0       29    49  stunted          
6 months    MAL-ED           PERU                           1               1       10    49  stunted          
6 months    MAL-ED           PERU                           0               0        8    49  stunted          
6 months    MAL-ED           PERU                           0               1        2    49  stunted          
6 months    MAL-ED           SOUTH AFRICA                   1               0        1    12  stunted          
6 months    MAL-ED           SOUTH AFRICA                   1               1        1    12  stunted          
6 months    MAL-ED           SOUTH AFRICA                   0               0       10    12  stunted          
6 months    MAL-ED           SOUTH AFRICA                   0               1        0    12  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        4    42  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        2    42  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0       26    42  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1       10    42  stunted          
6 months    NIH-Crypto       BANGLADESH                     1               0      300   715  stunted          
6 months    NIH-Crypto       BANGLADESH                     1               1       96   715  stunted          
6 months    NIH-Crypto       BANGLADESH                     0               0      265   715  stunted          
6 months    NIH-Crypto       BANGLADESH                     0               1       54   715  stunted          
6 months    PROVIDE          BANGLADESH                     1               0       12   604  stunted          
6 months    PROVIDE          BANGLADESH                     1               1        2   604  stunted          
6 months    PROVIDE          BANGLADESH                     0               0      496   604  stunted          
6 months    PROVIDE          BANGLADESH                     0               1       94   604  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1               0       43   119  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1               1       76   119  stunted          
24 months   CMC-V-BCS-2002   INDIA                          0               0        0   119  stunted          
24 months   CMC-V-BCS-2002   INDIA                          0               1        0   119  stunted          
24 months   GMS-Nepal        NEPAL                          1               0        1     4  stunted          
24 months   GMS-Nepal        NEPAL                          1               1        0     4  stunted          
24 months   GMS-Nepal        NEPAL                          0               0        2     4  stunted          
24 months   GMS-Nepal        NEPAL                          0               1        1     4  stunted          
24 months   IRC              INDIA                          1               0       69   121  stunted          
24 months   IRC              INDIA                          1               1       52   121  stunted          
24 months   IRC              INDIA                          0               0        0   121  stunted          
24 months   IRC              INDIA                          0               1        0   121  stunted          
24 months   MAL-ED           BANGLADESH                     1               0       75   135  stunted          
24 months   MAL-ED           BANGLADESH                     1               1       58   135  stunted          
24 months   MAL-ED           BANGLADESH                     0               0        2   135  stunted          
24 months   MAL-ED           BANGLADESH                     0               1        0   135  stunted          
24 months   MAL-ED           BRAZIL                         1               0       13   103  stunted          
24 months   MAL-ED           BRAZIL                         1               1        0   103  stunted          
24 months   MAL-ED           BRAZIL                         0               0       89   103  stunted          
24 months   MAL-ED           BRAZIL                         0               1        1   103  stunted          
24 months   MAL-ED           INDIA                          1               0        4     9  stunted          
24 months   MAL-ED           INDIA                          1               1        0     9  stunted          
24 months   MAL-ED           INDIA                          0               0        2     9  stunted          
24 months   MAL-ED           INDIA                          0               1        3     9  stunted          
24 months   MAL-ED           NEPAL                          1               0       54    83  stunted          
24 months   MAL-ED           NEPAL                          1               1       15    83  stunted          
24 months   MAL-ED           NEPAL                          0               0       11    83  stunted          
24 months   MAL-ED           NEPAL                          0               1        3    83  stunted          
24 months   MAL-ED           PERU                           1               0       22    49  stunted          
24 months   MAL-ED           PERU                           1               1       17    49  stunted          
24 months   MAL-ED           PERU                           0               0        3    49  stunted          
24 months   MAL-ED           PERU                           0               1        7    49  stunted          
24 months   MAL-ED           SOUTH AFRICA                   1               0        1    11  stunted          
24 months   MAL-ED           SOUTH AFRICA                   1               1        1    11  stunted          
24 months   MAL-ED           SOUTH AFRICA                   0               0        8    11  stunted          
24 months   MAL-ED           SOUTH AFRICA                   0               1        1    11  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        2    43  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        4    43  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0        8    43  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1       29    43  stunted          
24 months   NIH-Crypto       BANGLADESH                     1               0      175   514  stunted          
24 months   NIH-Crypto       BANGLADESH                     1               1       67   514  stunted          
24 months   NIH-Crypto       BANGLADESH                     0               0      207   514  stunted          
24 months   NIH-Crypto       BANGLADESH                     0               1       65   514  stunted          
24 months   PROVIDE          BANGLADESH                     1               0        9   578  stunted          
24 months   PROVIDE          BANGLADESH                     1               1        5   578  stunted          
24 months   PROVIDE          BANGLADESH                     0               0      379   578  stunted          
24 months   PROVIDE          BANGLADESH                     0               1      185   578  stunted          


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

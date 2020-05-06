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

**Intervention Variable:** cleanck

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nhh
* W_nchldlt5
* trth2o
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_trth2o
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country        cleanck    stunted   n_cell     n  outcome_variable 
----------  ---------------  -------------  --------  --------  -------  ----  -----------------
Birth       CMC-V-BCS-2002   INDIA          1                0       35    92  stunted          
Birth       CMC-V-BCS-2002   INDIA          1                1        4    92  stunted          
Birth       CMC-V-BCS-2002   INDIA          0                0       40    92  stunted          
Birth       CMC-V-BCS-2002   INDIA          0                1       13    92  stunted          
Birth       GMS-Nepal        NEPAL          1                0        9   621  stunted          
Birth       GMS-Nepal        NEPAL          1                1        0   621  stunted          
Birth       GMS-Nepal        NEPAL          0                0      506   621  stunted          
Birth       GMS-Nepal        NEPAL          0                1      106   621  stunted          
Birth       IRC              INDIA          1                0      197   378  stunted          
Birth       IRC              INDIA          1                1       21   378  stunted          
Birth       IRC              INDIA          0                0      138   378  stunted          
Birth       IRC              INDIA          0                1       22   378  stunted          
Birth       MAL-ED           PERU           1                0        1     2  stunted          
Birth       MAL-ED           PERU           1                1        0     2  stunted          
Birth       MAL-ED           PERU           0                0        1     2  stunted          
Birth       MAL-ED           PERU           0                1        0     2  stunted          
Birth       NIH-Crypto       BANGLADESH     1                0      301   561  stunted          
Birth       NIH-Crypto       BANGLADESH     1                1       44   561  stunted          
Birth       NIH-Crypto       BANGLADESH     0                0      183   561  stunted          
Birth       NIH-Crypto       BANGLADESH     0                1       33   561  stunted          
Birth       PROVIDE          BANGLADESH     1                0      400   539  stunted          
Birth       PROVIDE          BANGLADESH     1                1       38   539  stunted          
Birth       PROVIDE          BANGLADESH     0                0       91   539  stunted          
Birth       PROVIDE          BANGLADESH     0                1       10   539  stunted          
6 months    CMC-V-BCS-2002   INDIA          1                0      123   369  stunted          
6 months    CMC-V-BCS-2002   INDIA          1                1       40   369  stunted          
6 months    CMC-V-BCS-2002   INDIA          0                0      135   369  stunted          
6 months    CMC-V-BCS-2002   INDIA          0                1       71   369  stunted          
6 months    GMS-Nepal        NEPAL          1                0        8   505  stunted          
6 months    GMS-Nepal        NEPAL          1                1        0   505  stunted          
6 months    GMS-Nepal        NEPAL          0                0      388   505  stunted          
6 months    GMS-Nepal        NEPAL          0                1      109   505  stunted          
6 months    IRC              INDIA          1                0      181   398  stunted          
6 months    IRC              INDIA          1                1       49   398  stunted          
6 months    IRC              INDIA          0                0      119   398  stunted          
6 months    IRC              INDIA          0                1       49   398  stunted          
6 months    MAL-ED           SOUTH AFRICA   1                0        1     1  stunted          
6 months    MAL-ED           SOUTH AFRICA   1                1        0     1  stunted          
6 months    MAL-ED           SOUTH AFRICA   0                0        0     1  stunted          
6 months    MAL-ED           SOUTH AFRICA   0                1        0     1  stunted          
6 months    NIH-Crypto       BANGLADESH     1                0      264   545  stunted          
6 months    NIH-Crypto       BANGLADESH     1                1       65   545  stunted          
6 months    NIH-Crypto       BANGLADESH     0                0      179   545  stunted          
6 months    NIH-Crypto       BANGLADESH     0                1       37   545  stunted          
6 months    PROVIDE          BANGLADESH     1                0      429   604  stunted          
6 months    PROVIDE          BANGLADESH     1                1       69   604  stunted          
6 months    PROVIDE          BANGLADESH     0                0       79   604  stunted          
6 months    PROVIDE          BANGLADESH     0                1       27   604  stunted          
24 months   CMC-V-BCS-2002   INDIA          1                0       67   371  stunted          
24 months   CMC-V-BCS-2002   INDIA          1                1       96   371  stunted          
24 months   CMC-V-BCS-2002   INDIA          0                0       38   371  stunted          
24 months   CMC-V-BCS-2002   INDIA          0                1      170   371  stunted          
24 months   GMS-Nepal        NEPAL          1                0        5   435  stunted          
24 months   GMS-Nepal        NEPAL          1                1        0   435  stunted          
24 months   GMS-Nepal        NEPAL          0                0      232   435  stunted          
24 months   GMS-Nepal        NEPAL          0                1      198   435  stunted          
24 months   IRC              INDIA          1                0      142   400  stunted          
24 months   IRC              INDIA          1                1       89   400  stunted          
24 months   IRC              INDIA          0                0       89   400  stunted          
24 months   IRC              INDIA          0                1       80   400  stunted          
24 months   MAL-ED           SOUTH AFRICA   1                0        1     1  stunted          
24 months   MAL-ED           SOUTH AFRICA   1                1        0     1  stunted          
24 months   MAL-ED           SOUTH AFRICA   0                0        0     1  stunted          
24 months   MAL-ED           SOUTH AFRICA   0                1        0     1  stunted          
24 months   NIH-Crypto       BANGLADESH     1                0      156   410  stunted          
24 months   NIH-Crypto       BANGLADESH     1                1       43   410  stunted          
24 months   NIH-Crypto       BANGLADESH     0                0      167   410  stunted          
24 months   NIH-Crypto       BANGLADESH     0                1       44   410  stunted          
24 months   PROVIDE          BANGLADESH     1                0      338   578  stunted          
24 months   PROVIDE          BANGLADESH     1                1      141   578  stunted          
24 months   PROVIDE          BANGLADESH     0                0       50   578  stunted          
24 months   PROVIDE          BANGLADESH     0                1       49   578  stunted          


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







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

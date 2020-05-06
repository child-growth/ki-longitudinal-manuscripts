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

**Outcome Variable:** haz

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

agecat      studyid          country                        nchldlt5    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ---------  -------  ------  -----------------
Birth       IRC              INDIA                          1               84     388  haz              
Birth       IRC              INDIA                          2+             304     388  haz              
Birth       JiVitA-3         BANGLADESH                     1            13986   22431  haz              
Birth       JiVitA-3         BANGLADESH                     2+            8445   22431  haz              
Birth       NIH-Crypto       BANGLADESH                     1              522     732  haz              
Birth       NIH-Crypto       BANGLADESH                     2+             210     732  haz              
Birth       PROVIDE          BANGLADESH                     1              391     539  haz              
Birth       PROVIDE          BANGLADESH                     2+             148     539  haz              
6 months    IRC              INDIA                          1               89     407  haz              
6 months    IRC              INDIA                          2+             318     407  haz              
6 months    JiVitA-3         BANGLADESH                     1            10887   16800  haz              
6 months    JiVitA-3         BANGLADESH                     2+            5913   16800  haz              
6 months    LCNI-5           MALAWI                         1              390     811  haz              
6 months    LCNI-5           MALAWI                         2+             421     811  haz              
6 months    NIH-Crypto       BANGLADESH                     1              507     715  haz              
6 months    NIH-Crypto       BANGLADESH                     2+             208     715  haz              
6 months    PROVIDE          BANGLADESH                     1              438     604  haz              
6 months    PROVIDE          BANGLADESH                     2+             166     604  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1391    2020  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             629    2020  haz              
24 months   IRC              INDIA                          1               89     409  haz              
24 months   IRC              INDIA                          2+             320     409  haz              
24 months   JiVitA-3         BANGLADESH                     1             5454    8622  haz              
24 months   JiVitA-3         BANGLADESH                     2+            3168    8622  haz              
24 months   LCNI-5           MALAWI                         1              283     571  haz              
24 months   LCNI-5           MALAWI                         2+             288     571  haz              
24 months   NIH-Crypto       BANGLADESH                     1              357     514  haz              
24 months   NIH-Crypto       BANGLADESH                     2+             157     514  haz              
24 months   PROVIDE          BANGLADESH                     1              424     578  haz              
24 months   PROVIDE          BANGLADESH                     2+             154     578  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       6  haz              


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

* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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

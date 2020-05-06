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

agecat      studyid         country      nhh          n_cell     n  outcome_variable 
----------  --------------  -----------  ----------  -------  ----  -----------------
Birth       IRC             INDIA        3 or less        54   388  haz              
Birth       IRC             INDIA        4-5             150   388  haz              
Birth       IRC             INDIA        6-7             103   388  haz              
Birth       IRC             INDIA        8+               81   388  haz              
Birth       NIH-Birth       BANGLADESH   3 or less       112   608  haz              
Birth       NIH-Birth       BANGLADESH   4-5             255   608  haz              
Birth       NIH-Birth       BANGLADESH   6-7             138   608  haz              
Birth       NIH-Birth       BANGLADESH   8+              103   608  haz              
Birth       NIH-Crypto      BANGLADESH   3 or less       108   732  haz              
Birth       NIH-Crypto      BANGLADESH   4-5             328   732  haz              
Birth       NIH-Crypto      BANGLADESH   6-7             176   732  haz              
Birth       NIH-Crypto      BANGLADESH   8+              120   732  haz              
Birth       PROVIDE         BANGLADESH   3 or less       104   539  haz              
Birth       PROVIDE         BANGLADESH   4-5             251   539  haz              
Birth       PROVIDE         BANGLADESH   6-7             116   539  haz              
Birth       PROVIDE         BANGLADESH   8+               68   539  haz              
6 months    IRC             INDIA        3 or less        58   407  haz              
6 months    IRC             INDIA        4-5             158   407  haz              
6 months    IRC             INDIA        6-7             106   407  haz              
6 months    IRC             INDIA        8+               85   407  haz              
6 months    LCNI-5          MALAWI       3 or less       224   816  haz              
6 months    LCNI-5          MALAWI       4-5             340   816  haz              
6 months    LCNI-5          MALAWI       6-7             182   816  haz              
6 months    LCNI-5          MALAWI       8+               70   816  haz              
6 months    NIH-Birth       BANGLADESH   3 or less        95   537  haz              
6 months    NIH-Birth       BANGLADESH   4-5             227   537  haz              
6 months    NIH-Birth       BANGLADESH   6-7             128   537  haz              
6 months    NIH-Birth       BANGLADESH   8+               87   537  haz              
6 months    NIH-Crypto      BANGLADESH   3 or less       104   715  haz              
6 months    NIH-Crypto      BANGLADESH   4-5             326   715  haz              
6 months    NIH-Crypto      BANGLADESH   6-7             170   715  haz              
6 months    NIH-Crypto      BANGLADESH   8+              115   715  haz              
6 months    PROVIDE         BANGLADESH   3 or less       105   604  haz              
6 months    PROVIDE         BANGLADESH   4-5             289   604  haz              
6 months    PROVIDE         BANGLADESH   6-7             130   604  haz              
6 months    PROVIDE         BANGLADESH   8+               80   604  haz              
6 months    SAS-FoodSuppl   INDIA        3 or less        33   380  haz              
6 months    SAS-FoodSuppl   INDIA        4-5             166   380  haz              
6 months    SAS-FoodSuppl   INDIA        6-7             115   380  haz              
6 months    SAS-FoodSuppl   INDIA        8+               66   380  haz              
24 months   IRC             INDIA        3 or less        58   409  haz              
24 months   IRC             INDIA        4-5             158   409  haz              
24 months   IRC             INDIA        6-7             107   409  haz              
24 months   IRC             INDIA        8+               86   409  haz              
24 months   LCNI-5          MALAWI       3 or less       159   574  haz              
24 months   LCNI-5          MALAWI       4-5             237   574  haz              
24 months   LCNI-5          MALAWI       6-7             129   574  haz              
24 months   LCNI-5          MALAWI       8+               49   574  haz              
24 months   NIH-Birth       BANGLADESH   3 or less        75   429  haz              
24 months   NIH-Birth       BANGLADESH   4-5             184   429  haz              
24 months   NIH-Birth       BANGLADESH   6-7             100   429  haz              
24 months   NIH-Birth       BANGLADESH   8+               70   429  haz              
24 months   NIH-Crypto      BANGLADESH   3 or less        69   514  haz              
24 months   NIH-Crypto      BANGLADESH   4-5             232   514  haz              
24 months   NIH-Crypto      BANGLADESH   6-7             130   514  haz              
24 months   NIH-Crypto      BANGLADESH   8+               83   514  haz              
24 months   PROVIDE         BANGLADESH   3 or less       106   578  haz              
24 months   PROVIDE         BANGLADESH   4-5             273   578  haz              
24 months   PROVIDE         BANGLADESH   6-7             117   578  haz              
24 months   PROVIDE         BANGLADESH   8+               82   578  haz              


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

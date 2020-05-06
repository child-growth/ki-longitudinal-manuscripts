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

**Outcome Variable:** ever_stunted

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

agecat        studyid          country                        nchldlt5    ever_stunted   n_cell       n  outcome_variable 
------------  ---------------  -----------------------------  ---------  -------------  -------  ------  -----------------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                      0      711    3188  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                      1      362    3188  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                     0     1339    3188  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                     1      776    3188  ever_stunted     
0-24 months   IRC              INDIA                          1                      0       35     410  ever_stunted     
0-24 months   IRC              INDIA                          1                      1       54     410  ever_stunted     
0-24 months   IRC              INDIA                          2+                     0      112     410  ever_stunted     
0-24 months   IRC              INDIA                          2+                     1      209     410  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     1                      0     8536   27200  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     1                      1     8874   27200  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     2+                     0     5189   27200  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     2+                     1     4601   27200  ever_stunted     
0-24 months   LCNI-5           MALAWI                         1                      0      145     812  ever_stunted     
0-24 months   LCNI-5           MALAWI                         1                      1      246     812  ever_stunted     
0-24 months   LCNI-5           MALAWI                         2+                     0      150     812  ever_stunted     
0-24 months   LCNI-5           MALAWI                         2+                     1      271     812  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     1                      0      298     758  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     1                      1      243     758  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     2+                     0       98     758  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     2+                     1      119     758  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     1                      0      295     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     1                      1      217     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     2+                     0      100     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     2+                     1       88     700  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1077    2385  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      560    2385  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0      481    2385  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1      267    2385  ever_stunted     
0-6 months    IRC              INDIA                          1                      0       49     410  ever_stunted     
0-6 months    IRC              INDIA                          1                      1       40     410  ever_stunted     
0-6 months    IRC              INDIA                          2+                     0      187     410  ever_stunted     
0-6 months    IRC              INDIA                          2+                     1      134     410  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     1                      0     9780   27134  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     1                      1     7579   27134  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     2+                     0     6146   27134  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     2+                     1     3629   27134  ever_stunted     
0-6 months    LCNI-5           MALAWI                         1                      0       81     267  ever_stunted     
0-6 months    LCNI-5           MALAWI                         1                      1       41     267  ever_stunted     
0-6 months    LCNI-5           MALAWI                         2+                     0       91     267  ever_stunted     
0-6 months    LCNI-5           MALAWI                         2+                     1       54     267  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     1                      0      386     758  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     1                      1      155     758  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     2+                     0      143     758  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     2+                     1       74     758  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     1                      0      383     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     1                      1      129     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     2+                     0      149     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     2+                     1       39     700  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1311    2385  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      326    2385  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0      609    2385  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1      139    2385  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                      0      711    3188  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                      1      362    3188  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                     0     1339    3188  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                     1      776    3188  ever_stunted     
6-24 months   IRC              INDIA                          1                      0       35     236  ever_stunted     
6-24 months   IRC              INDIA                          1                      1       14     236  ever_stunted     
6-24 months   IRC              INDIA                          2+                     0      112     236  ever_stunted     
6-24 months   IRC              INDIA                          2+                     1       75     236  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     1                      0     5238   10487  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     1                      1     1295   10487  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     2+                     0     2982   10487  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     2+                     1      972   10487  ever_stunted     
6-24 months   LCNI-5           MALAWI                         1                      0      138     705  ever_stunted     
6-24 months   LCNI-5           MALAWI                         1                      1      205     705  ever_stunted     
6-24 months   LCNI-5           MALAWI                         2+                     0      145     705  ever_stunted     
6-24 months   LCNI-5           MALAWI                         2+                     1      217     705  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     1                      0      280     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     1                      1       88     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     2+                     0       93     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     2+                     1       45     506  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     1                      0      238     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     1                      1       88     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     2+                     0       81     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     2+                     1       49     456  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0      858    1596  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      234    1596  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0      376    1596  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1      128    1596  ever_stunted     


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF



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

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

**Intervention Variable:** vagbrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* W_nrooms
* brthmon
* W_parity
* impfloor
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        vagbrth    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  --------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          0              11      92  haz              
Birth       CMC-V-BCS-2002   INDIA                          1              81      92  haz              
Birth       IRC              INDIA                          0              68     388  haz              
Birth       IRC              INDIA                          1             320     388  haz              
Birth       JiVitA-3         BANGLADESH                     0             539   22418  haz              
Birth       JiVitA-3         BANGLADESH                     1           21879   22418  haz              
Birth       JiVitA-4         BANGLADESH                     0              76    2822  haz              
Birth       JiVitA-4         BANGLADESH                     1            2746    2822  haz              
Birth       NIH-Crypto       BANGLADESH                     0             186     477  haz              
Birth       NIH-Crypto       BANGLADESH                     1             291     477  haz              
Birth       PROBIT           BELARUS                        0            1597   13893  haz              
Birth       PROBIT           BELARUS                        1           12296   13893  haz              
Birth       PROVIDE          BANGLADESH                     0             108     539  haz              
Birth       PROVIDE          BANGLADESH                     1             431     539  haz              
Birth       ZVITAMBO         ZIMBABWE                       0            1166   13761  haz              
Birth       ZVITAMBO         ZIMBABWE                       1           12595   13761  haz              
6 months    CMC-V-BCS-2002   INDIA                          0              25     369  haz              
6 months    CMC-V-BCS-2002   INDIA                          1             344     369  haz              
6 months    IRC              INDIA                          0              69     407  haz              
6 months    IRC              INDIA                          1             338     407  haz              
6 months    JiVitA-3         BANGLADESH                     0            1077   16732  haz              
6 months    JiVitA-3         BANGLADESH                     1           15655   16732  haz              
6 months    JiVitA-4         BANGLADESH                     0             336    4052  haz              
6 months    JiVitA-4         BANGLADESH                     1            3716    4052  haz              
6 months    NIH-Crypto       BANGLADESH                     0             187     457  haz              
6 months    NIH-Crypto       BANGLADESH                     1             270     457  haz              
6 months    PROBIT           BELARUS                        0            1799   15760  haz              
6 months    PROBIT           BELARUS                        1           13961   15760  haz              
6 months    PROVIDE          BANGLADESH                     0             139     604  haz              
6 months    PROVIDE          BANGLADESH                     1             465     604  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             189    2005  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            1816    2005  haz              
6 months    ZVITAMBO         ZIMBABWE                       0             740    8601  haz              
6 months    ZVITAMBO         ZIMBABWE                       1            7861    8601  haz              
24 months   CMC-V-BCS-2002   INDIA                          0              24     371  haz              
24 months   CMC-V-BCS-2002   INDIA                          1             347     371  haz              
24 months   IRC              INDIA                          0              69     409  haz              
24 months   IRC              INDIA                          1             340     409  haz              
24 months   JiVitA-3         BANGLADESH                     0             480    8584  haz              
24 months   JiVitA-3         BANGLADESH                     1            8104    8584  haz              
24 months   JiVitA-4         BANGLADESH                     0             323    4020  haz              
24 months   JiVitA-4         BANGLADESH                     1            3697    4020  haz              
24 months   NIH-Crypto       BANGLADESH                     0              99     260  haz              
24 months   NIH-Crypto       BANGLADESH                     1             161     260  haz              
24 months   PROBIT           BELARUS                        0             472    4035  haz              
24 months   PROBIT           BELARUS                        1            3563    4035  haz              
24 months   PROVIDE          BANGLADESH                     0             137     578  haz              
24 months   PROVIDE          BANGLADESH                     1             441     578  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               2       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               4       6  haz              
24 months   ZVITAMBO         ZIMBABWE                       0             133    1619  haz              
24 months   ZVITAMBO         ZIMBABWE                       1            1486    1619  haz              


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

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

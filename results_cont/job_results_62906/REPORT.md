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

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        gagebrth             n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ------------------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term        58      92  haz              
Birth       CMC-V-BCS-2002   INDIA                          Preterm                  11      92  haz              
Birth       CMC-V-BCS-2002   INDIA                          Early term               23      92  haz              
Birth       COHORTS          GUATEMALA                      Full or late term       341     617  haz              
Birth       COHORTS          GUATEMALA                      Preterm                  95     617  haz              
Birth       COHORTS          GUATEMALA                      Early term              181     617  haz              
Birth       COHORTS          INDIA                          Full or late term       570    1293  haz              
Birth       COHORTS          INDIA                          Preterm                 285    1293  haz              
Birth       COHORTS          INDIA                          Early term              438    1293  haz              
Birth       COHORTS          PHILIPPINES                    Full or late term      1164    3024  haz              
Birth       COHORTS          PHILIPPINES                    Preterm                 649    3024  haz              
Birth       COHORTS          PHILIPPINES                    Early term             1211    3024  haz              
Birth       IRC              INDIA                          Full or late term       238     369  haz              
Birth       IRC              INDIA                          Preterm                  36     369  haz              
Birth       IRC              INDIA                          Early term               95     369  haz              
Birth       JiVitA-3         BANGLADESH                     Full or late term     10944   21442  haz              
Birth       JiVitA-3         BANGLADESH                     Preterm                4514   21442  haz              
Birth       JiVitA-3         BANGLADESH                     Early term             5984   21442  haz              
Birth       Keneba           GAMBIA                         Full or late term       734    1515  haz              
Birth       Keneba           GAMBIA                         Preterm                 235    1515  haz              
Birth       Keneba           GAMBIA                         Early term              546    1515  haz              
Birth       NIH-Crypto       BANGLADESH                     Full or late term       162     732  haz              
Birth       NIH-Crypto       BANGLADESH                     Preterm                 257     732  haz              
Birth       NIH-Crypto       BANGLADESH                     Early term              313     732  haz              
Birth       PROBIT           BELARUS                        Full or late term      7100   13893  haz              
Birth       PROBIT           BELARUS                        Preterm                 472   13893  haz              
Birth       PROBIT           BELARUS                        Early term             6321   13893  haz              
6 months    CMC-V-BCS-2002   INDIA                          Full or late term       212     347  haz              
6 months    CMC-V-BCS-2002   INDIA                          Preterm                  52     347  haz              
6 months    CMC-V-BCS-2002   INDIA                          Early term               83     347  haz              
6 months    COHORTS          GUATEMALA                      Full or late term       389     713  haz              
6 months    COHORTS          GUATEMALA                      Preterm                 113     713  haz              
6 months    COHORTS          GUATEMALA                      Early term              211     713  haz              
6 months    COHORTS          INDIA                          Full or late term       568    1312  haz              
6 months    COHORTS          INDIA                          Preterm                 299    1312  haz              
6 months    COHORTS          INDIA                          Early term              445    1312  haz              
6 months    COHORTS          PHILIPPINES                    Full or late term      1028    2687  haz              
6 months    COHORTS          PHILIPPINES                    Preterm                 573    2687  haz              
6 months    COHORTS          PHILIPPINES                    Early term             1086    2687  haz              
6 months    IRC              INDIA                          Full or late term       249     388  haz              
6 months    IRC              INDIA                          Preterm                  42     388  haz              
6 months    IRC              INDIA                          Early term               97     388  haz              
6 months    JiVitA-3         BANGLADESH                     Full or late term      8527   16010  haz              
6 months    JiVitA-3         BANGLADESH                     Preterm                3045   16010  haz              
6 months    JiVitA-3         BANGLADESH                     Early term             4438   16010  haz              
6 months    Keneba           GAMBIA                         Full or late term       658    1374  haz              
6 months    Keneba           GAMBIA                         Preterm                 207    1374  haz              
6 months    Keneba           GAMBIA                         Early term              509    1374  haz              
6 months    NIH-Crypto       BANGLADESH                     Full or late term       155     715  haz              
6 months    NIH-Crypto       BANGLADESH                     Preterm                 251     715  haz              
6 months    NIH-Crypto       BANGLADESH                     Early term              309     715  haz              
6 months    PROBIT           BELARUS                        Full or late term      8007   15760  haz              
6 months    PROBIT           BELARUS                        Preterm                 551   15760  haz              
6 months    PROBIT           BELARUS                        Early term             7202   15760  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term      1167    1903  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 291    1903  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              445    1903  haz              
24 months   CMC-V-BCS-2002   INDIA                          Full or late term       213     349  haz              
24 months   CMC-V-BCS-2002   INDIA                          Preterm                  52     349  haz              
24 months   CMC-V-BCS-2002   INDIA                          Early term               84     349  haz              
24 months   COHORTS          GUATEMALA                      Full or late term       375     661  haz              
24 months   COHORTS          GUATEMALA                      Preterm                 107     661  haz              
24 months   COHORTS          GUATEMALA                      Early term              179     661  haz              
24 months   COHORTS          INDIA                          Full or late term       565    1308  haz              
24 months   COHORTS          INDIA                          Preterm                 305    1308  haz              
24 months   COHORTS          INDIA                          Early term              438    1308  haz              
24 months   COHORTS          PHILIPPINES                    Full or late term       938    2424  haz              
24 months   COHORTS          PHILIPPINES                    Preterm                 513    2424  haz              
24 months   COHORTS          PHILIPPINES                    Early term              973    2424  haz              
24 months   IRC              INDIA                          Full or late term       250     390  haz              
24 months   IRC              INDIA                          Preterm                  42     390  haz              
24 months   IRC              INDIA                          Early term               98     390  haz              
24 months   JiVitA-3         BANGLADESH                     Full or late term      4327    8202  haz              
24 months   JiVitA-3         BANGLADESH                     Preterm                1604    8202  haz              
24 months   JiVitA-3         BANGLADESH                     Early term             2271    8202  haz              
24 months   Keneba           GAMBIA                         Full or late term       557    1156  haz              
24 months   Keneba           GAMBIA                         Preterm                 167    1156  haz              
24 months   Keneba           GAMBIA                         Early term              432    1156  haz              
24 months   NIH-Crypto       BANGLADESH                     Full or late term        79     514  haz              
24 months   NIH-Crypto       BANGLADESH                     Preterm                 208     514  haz              
24 months   NIH-Crypto       BANGLADESH                     Early term              227     514  haz              
24 months   PROBIT           BELARUS                        Full or late term      2025    4035  haz              
24 months   PROBIT           BELARUS                        Preterm                 137    4035  haz              
24 months   PROBIT           BELARUS                        Early term             1873    4035  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         5       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1       6  haz              


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS

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

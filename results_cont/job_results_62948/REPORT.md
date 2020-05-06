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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
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
Birth       CMC-V-BCS-2002   INDIA                          Full or late term        53      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          Preterm                  11      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          Early term               22      86  whz              
Birth       COHORTS          GUATEMALA                      Full or late term       323     572  whz              
Birth       COHORTS          GUATEMALA                      Preterm                  78     572  whz              
Birth       COHORTS          GUATEMALA                      Early term              171     572  whz              
Birth       COHORTS          INDIA                          Full or late term       553    1229  whz              
Birth       COHORTS          INDIA                          Preterm                 259    1229  whz              
Birth       COHORTS          INDIA                          Early term              417    1229  whz              
Birth       COHORTS          PHILIPPINES                    Full or late term      1135    2874  whz              
Birth       COHORTS          PHILIPPINES                    Preterm                 579    2874  whz              
Birth       COHORTS          PHILIPPINES                    Early term             1160    2874  whz              
Birth       IRC              INDIA                          Full or late term       213     328  whz              
Birth       IRC              INDIA                          Preterm                  32     328  whz              
Birth       IRC              INDIA                          Early term               83     328  whz              
Birth       JiVitA-3         BANGLADESH                     Full or late term      9668   17161  whz              
Birth       JiVitA-3         BANGLADESH                     Preterm                2755   17161  whz              
Birth       JiVitA-3         BANGLADESH                     Early term             4738   17161  whz              
Birth       Keneba           GAMBIA                         Full or late term       709    1439  whz              
Birth       Keneba           GAMBIA                         Preterm                 206    1439  whz              
Birth       Keneba           GAMBIA                         Early term              524    1439  whz              
Birth       NIH-Crypto       BANGLADESH                     Full or late term       160     707  whz              
Birth       NIH-Crypto       BANGLADESH                     Preterm                 240     707  whz              
Birth       NIH-Crypto       BANGLADESH                     Early term              307     707  whz              
Birth       PROBIT           BELARUS                        Full or late term      7065   13817  whz              
Birth       PROBIT           BELARUS                        Preterm                 467   13817  whz              
Birth       PROBIT           BELARUS                        Early term             6285   13817  whz              
6 months    CMC-V-BCS-2002   INDIA                          Full or late term       212     346  whz              
6 months    CMC-V-BCS-2002   INDIA                          Preterm                  51     346  whz              
6 months    CMC-V-BCS-2002   INDIA                          Early term               83     346  whz              
6 months    COHORTS          GUATEMALA                      Full or late term       389     714  whz              
6 months    COHORTS          GUATEMALA                      Preterm                 114     714  whz              
6 months    COHORTS          GUATEMALA                      Early term              211     714  whz              
6 months    COHORTS          INDIA                          Full or late term       568    1312  whz              
6 months    COHORTS          INDIA                          Preterm                 299    1312  whz              
6 months    COHORTS          INDIA                          Early term              445    1312  whz              
6 months    COHORTS          PHILIPPINES                    Full or late term      1028    2685  whz              
6 months    COHORTS          PHILIPPINES                    Preterm                 572    2685  whz              
6 months    COHORTS          PHILIPPINES                    Early term             1085    2685  whz              
6 months    IRC              INDIA                          Full or late term       249     388  whz              
6 months    IRC              INDIA                          Preterm                  42     388  whz              
6 months    IRC              INDIA                          Early term               97     388  whz              
6 months    JiVitA-3         BANGLADESH                     Full or late term      8511   15989  whz              
6 months    JiVitA-3         BANGLADESH                     Preterm                3047   15989  whz              
6 months    JiVitA-3         BANGLADESH                     Early term             4431   15989  whz              
6 months    Keneba           GAMBIA                         Full or late term       658    1374  whz              
6 months    Keneba           GAMBIA                         Preterm                 207    1374  whz              
6 months    Keneba           GAMBIA                         Early term              509    1374  whz              
6 months    NIH-Crypto       BANGLADESH                     Full or late term       155     715  whz              
6 months    NIH-Crypto       BANGLADESH                     Preterm                 251     715  whz              
6 months    NIH-Crypto       BANGLADESH                     Early term              309     715  whz              
6 months    PROBIT           BELARUS                        Full or late term      8006   15757  whz              
6 months    PROBIT           BELARUS                        Preterm                 551   15757  whz              
6 months    PROBIT           BELARUS                        Early term             7200   15757  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term      1167    1902  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 290    1902  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              445    1902  whz              
24 months   CMC-V-BCS-2002   INDIA                          Full or late term       214     350  whz              
24 months   CMC-V-BCS-2002   INDIA                          Preterm                  52     350  whz              
24 months   CMC-V-BCS-2002   INDIA                          Early term               84     350  whz              
24 months   COHORTS          GUATEMALA                      Full or late term       377     667  whz              
24 months   COHORTS          GUATEMALA                      Preterm                 109     667  whz              
24 months   COHORTS          GUATEMALA                      Early term              181     667  whz              
24 months   COHORTS          INDIA                          Full or late term       559    1298  whz              
24 months   COHORTS          INDIA                          Preterm                 303    1298  whz              
24 months   COHORTS          INDIA                          Early term              436    1298  whz              
24 months   COHORTS          PHILIPPINES                    Full or late term       939    2428  whz              
24 months   COHORTS          PHILIPPINES                    Preterm                 517    2428  whz              
24 months   COHORTS          PHILIPPINES                    Early term              972    2428  whz              
24 months   IRC              INDIA                          Full or late term       250     390  whz              
24 months   IRC              INDIA                          Preterm                  42     390  whz              
24 months   IRC              INDIA                          Early term               98     390  whz              
24 months   JiVitA-3         BANGLADESH                     Full or late term      4309    8173  whz              
24 months   JiVitA-3         BANGLADESH                     Preterm                1598    8173  whz              
24 months   JiVitA-3         BANGLADESH                     Early term             2266    8173  whz              
24 months   Keneba           GAMBIA                         Full or late term       558    1157  whz              
24 months   Keneba           GAMBIA                         Preterm                 168    1157  whz              
24 months   Keneba           GAMBIA                         Early term              431    1157  whz              
24 months   NIH-Crypto       BANGLADESH                     Full or late term        79     514  whz              
24 months   NIH-Crypto       BANGLADESH                     Preterm                 208     514  whz              
24 months   NIH-Crypto       BANGLADESH                     Early term              227     514  whz              
24 months   PROBIT           BELARUS                        Full or late term      1991    3970  whz              
24 months   PROBIT           BELARUS                        Preterm                 136    3970  whz              
24 months   PROBIT           BELARUS                        Early term             1843    3970  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         5       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1       6  whz              


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

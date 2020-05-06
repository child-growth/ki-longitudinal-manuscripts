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

**Outcome Variable:** dead624

## Predictor Variables

**Intervention Variable:** ever_stunted06

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* impfloor
* hhwealth_quart
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_parity
* impsan
* safeh20
* delta_vagbrth
* delta_impfloor
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_stunted06    dead624   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------  --------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                       0      295     336  dead624          
Burkina Faso Zn   BURKINA FASO                   0                       1        2     336  dead624          
Burkina Faso Zn   BURKINA FASO                   1                       0       39     336  dead624          
Burkina Faso Zn   BURKINA FASO                   1                       1        0     336  dead624          
EE                PAKISTAN                       0                       0       91     374  dead624          
EE                PAKISTAN                       0                       1        0     374  dead624          
EE                PAKISTAN                       1                       0      279     374  dead624          
EE                PAKISTAN                       1                       1        4     374  dead624          
GMS-Nepal         NEPAL                          0                       0      398     592  dead624          
GMS-Nepal         NEPAL                          0                       1        1     592  dead624          
GMS-Nepal         NEPAL                          1                       0      192     592  dead624          
GMS-Nepal         NEPAL                          1                       1        1     592  dead624          
iLiNS-DOSE        MALAWI                         0                       0     1156    1756  dead624          
iLiNS-DOSE        MALAWI                         0                       1       73    1756  dead624          
iLiNS-DOSE        MALAWI                         1                       0      487    1756  dead624          
iLiNS-DOSE        MALAWI                         1                       1       40    1756  dead624          
iLiNS-DYAD-M      MALAWI                         0                       0      812    1148  dead624          
iLiNS-DYAD-M      MALAWI                         0                       1       13    1148  dead624          
iLiNS-DYAD-M      MALAWI                         1                       0      312    1148  dead624          
iLiNS-DYAD-M      MALAWI                         1                       1       11    1148  dead624          
JiVitA-3          BANGLADESH                     0                       0    11910   21009  dead624          
JiVitA-3          BANGLADESH                     0                       1      106   21009  dead624          
JiVitA-3          BANGLADESH                     1                       0     8830   21009  dead624          
JiVitA-3          BANGLADESH                     1                       1      163   21009  dead624          
JiVitA-4          BANGLADESH                     0                       0     3210    5260  dead624          
JiVitA-4          BANGLADESH                     0                       1       20    5260  dead624          
JiVitA-4          BANGLADESH                     1                       0     2003    5260  dead624          
JiVitA-4          BANGLADESH                     1                       1       27    5260  dead624          
Keneba            GAMBIA                         0                       0     1557    2312  dead624          
Keneba            GAMBIA                         0                       1       13    2312  dead624          
Keneba            GAMBIA                         1                       0      716    2312  dead624          
Keneba            GAMBIA                         1                       1       26    2312  dead624          
MAL-ED            BANGLADESH                     0                       0      155     240  dead624          
MAL-ED            BANGLADESH                     0                       1        0     240  dead624          
MAL-ED            BANGLADESH                     1                       0       85     240  dead624          
MAL-ED            BANGLADESH                     1                       1        0     240  dead624          
MAL-ED            INDIA                          0                       0      149     235  dead624          
MAL-ED            INDIA                          0                       1        0     235  dead624          
MAL-ED            INDIA                          1                       0       86     235  dead624          
MAL-ED            INDIA                          1                       1        0     235  dead624          
MAL-ED            PERU                           0                       0      149     273  dead624          
MAL-ED            PERU                           0                       1        0     273  dead624          
MAL-ED            PERU                           1                       0      123     273  dead624          
MAL-ED            PERU                           1                       1        1     273  dead624          
MAL-ED            SOUTH AFRICA                   0                       0      155     261  dead624          
MAL-ED            SOUTH AFRICA                   0                       1        0     261  dead624          
MAL-ED            SOUTH AFRICA                   1                       0      106     261  dead624          
MAL-ED            SOUTH AFRICA                   1                       1        0     261  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                       0      140     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                       1        0     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                       0      105     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                       1        0     245  dead624          
PROVIDE           BANGLADESH                     0                       0      455     617  dead624          
PROVIDE           BANGLADESH                     0                       1        2     617  dead624          
PROVIDE           BANGLADESH                     1                       0      160     617  dead624          
PROVIDE           BANGLADESH                     1                       1        0     617  dead624          
SAS-CompFeed      INDIA                          0                       0      796    1388  dead624          
SAS-CompFeed      INDIA                          0                       1        2    1388  dead624          
SAS-CompFeed      INDIA                          1                       0      580    1388  dead624          
SAS-CompFeed      INDIA                          1                       1       10    1388  dead624          
SAS-FoodSuppl     INDIA                          0                       0      214     402  dead624          
SAS-FoodSuppl     INDIA                          0                       1        1     402  dead624          
SAS-FoodSuppl     INDIA                          1                       0      184     402  dead624          
SAS-FoodSuppl     INDIA                          1                       1        3     402  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       0     1651    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       1        0    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       0      445    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       1        0    2096  dead624          
VITAMIN-A         INDIA                          0                       0     2094    3605  dead624          
VITAMIN-A         INDIA                          0                       1       11    3605  dead624          
VITAMIN-A         INDIA                          1                       0     1480    3605  dead624          
VITAMIN-A         INDIA                          1                       1       20    3605  dead624          
ZVITAMBO          ZIMBABWE                       0                       0     8028   11694  dead624          
ZVITAMBO          ZIMBABWE                       0                       1      190   11694  dead624          
ZVITAMBO          ZIMBABWE                       1                       0     3261   11694  dead624          
ZVITAMBO          ZIMBABWE                       1                       1      215   11694  dead624          


The following strata were considered:

* studyid: Burkina Faso Zn, country: BURKINA FASO
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: iLiNS-DOSE, country: MALAWI
* studyid: iLiNS-DYAD-M, country: MALAWI
* studyid: JiVitA-3, country: BANGLADESH
* studyid: JiVitA-4, country: BANGLADESH
* studyid: Keneba, country: GAMBIA
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: VITAMIN-A, country: INDIA
* studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: Burkina Faso Zn, country: BURKINA FASO
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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

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

**Outcome Variable:** co_occurence

## Predictor Variables

**Intervention Variable:** ever_sstunted06

**Adjustment Set:**

* sex
* arm
* brthmon
* single
* hhwealth_quart
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* delta_brthmon
* delta_single
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_sstunted06    co_occurence   n_cell      n  outcome_variable 
---------------  -----------------------------  ----------------  -------------  -------  -----  -----------------
CMC-V-BCS-2002   INDIA                          0                             0      261    366  co_occurence     
CMC-V-BCS-2002   INDIA                          0                             1       11    366  co_occurence     
CMC-V-BCS-2002   INDIA                          1                             0       83    366  co_occurence     
CMC-V-BCS-2002   INDIA                          1                             1       11    366  co_occurence     
CMIN             BANGLADESH                     0                             0      166    237  co_occurence     
CMIN             BANGLADESH                     0                             1       15    237  co_occurence     
CMIN             BANGLADESH                     1                             0       45    237  co_occurence     
CMIN             BANGLADESH                     1                             1       11    237  co_occurence     
COHORTS          GUATEMALA                      0                             0      637    778  co_occurence     
COHORTS          GUATEMALA                      0                             1       29    778  co_occurence     
COHORTS          GUATEMALA                      1                             0      103    778  co_occurence     
COHORTS          GUATEMALA                      1                             1        9    778  co_occurence     
COHORTS          PHILIPPINES                    0                             0     2166   2487  co_occurence     
COHORTS          PHILIPPINES                    0                             1      152   2487  co_occurence     
COHORTS          PHILIPPINES                    1                             0      134   2487  co_occurence     
COHORTS          PHILIPPINES                    1                             1       35   2487  co_occurence     
CONTENT          PERU                           0                             0      193    200  co_occurence     
CONTENT          PERU                           0                             1        0    200  co_occurence     
CONTENT          PERU                           1                             0        7    200  co_occurence     
CONTENT          PERU                           1                             1        0    200  co_occurence     
EE               PAKISTAN                       0                             0      169    346  co_occurence     
EE               PAKISTAN                       0                             1       27    346  co_occurence     
EE               PAKISTAN                       1                             0      103    346  co_occurence     
EE               PAKISTAN                       1                             1       47    346  co_occurence     
GMS-Nepal        NEPAL                          0                             0      462    550  co_occurence     
GMS-Nepal        NEPAL                          0                             1       47    550  co_occurence     
GMS-Nepal        NEPAL                          1                             0       28    550  co_occurence     
GMS-Nepal        NEPAL                          1                             1       13    550  co_occurence     
IRC              INDIA                          0                             0      331    405  co_occurence     
IRC              INDIA                          0                             1       13    405  co_occurence     
IRC              INDIA                          1                             0       49    405  co_occurence     
IRC              INDIA                          1                             1       12    405  co_occurence     
JiVitA-4         BANGLADESH                     0                             0     3719   4541  co_occurence     
JiVitA-4         BANGLADESH                     0                             1      311   4541  co_occurence     
JiVitA-4         BANGLADESH                     1                             0      386   4541  co_occurence     
JiVitA-4         BANGLADESH                     1                             1      125   4541  co_occurence     
Keneba           GAMBIA                         0                             0     1489   1776  co_occurence     
Keneba           GAMBIA                         0                             1       72   1776  co_occurence     
Keneba           GAMBIA                         1                             0      187   1776  co_occurence     
Keneba           GAMBIA                         1                             1       28   1776  co_occurence     
LCNI-5           MALAWI                         0                             0      630    693  co_occurence     
LCNI-5           MALAWI                         0                             1       14    693  co_occurence     
LCNI-5           MALAWI                         1                             0       45    693  co_occurence     
LCNI-5           MALAWI                         1                             1        4    693  co_occurence     
MAL-ED           BANGLADESH                     0                             0      193    221  co_occurence     
MAL-ED           BANGLADESH                     0                             1       12    221  co_occurence     
MAL-ED           BANGLADESH                     1                             0       14    221  co_occurence     
MAL-ED           BANGLADESH                     1                             1        2    221  co_occurence     
MAL-ED           BRAZIL                         0                             0      165    180  co_occurence     
MAL-ED           BRAZIL                         0                             1        0    180  co_occurence     
MAL-ED           BRAZIL                         1                             0       14    180  co_occurence     
MAL-ED           BRAZIL                         1                             1        1    180  co_occurence     
MAL-ED           INDIA                          0                             0      195    228  co_occurence     
MAL-ED           INDIA                          0                             1       14    228  co_occurence     
MAL-ED           INDIA                          1                             0       16    228  co_occurence     
MAL-ED           INDIA                          1                             1        3    228  co_occurence     
MAL-ED           NEPAL                          0                             0      217    229  co_occurence     
MAL-ED           NEPAL                          0                             1        3    229  co_occurence     
MAL-ED           NEPAL                          1                             0        8    229  co_occurence     
MAL-ED           NEPAL                          1                             1        1    229  co_occurence     
MAL-ED           PERU                           0                             0      188    222  co_occurence     
MAL-ED           PERU                           0                             1        2    222  co_occurence     
MAL-ED           PERU                           1                             0       28    222  co_occurence     
MAL-ED           PERU                           1                             1        4    222  co_occurence     
MAL-ED           SOUTH AFRICA                   0                             0      213    241  co_occurence     
MAL-ED           SOUTH AFRICA                   0                             1        3    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                             0       24    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                             1        1    241  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             0      191    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             1        0    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             0       33    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             1        1    225  co_occurence     
NIH-Birth        BANGLADESH                     0                             0      368    462  co_occurence     
NIH-Birth        BANGLADESH                     0                             1       41    462  co_occurence     
NIH-Birth        BANGLADESH                     1                             0       43    462  co_occurence     
NIH-Birth        BANGLADESH                     1                             1       10    462  co_occurence     
NIH-Crypto       BANGLADESH                     0                             0      565    634  co_occurence     
NIH-Crypto       BANGLADESH                     0                             1       23    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                             0       40    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                             1        6    634  co_occurence     
PROBIT           BELARUS                        0                             0     2127   2146  co_occurence     
PROBIT           BELARUS                        0                             1        1   2146  co_occurence     
PROBIT           BELARUS                        1                             0       18   2146  co_occurence     
PROBIT           BELARUS                        1                             1        0   2146  co_occurence     
PROVIDE          BANGLADESH                     0                             0      503    563  co_occurence     
PROVIDE          BANGLADESH                     0                             1       33    563  co_occurence     
PROVIDE          BANGLADESH                     1                             0       23    563  co_occurence     
PROVIDE          BANGLADESH                     1                             1        4    563  co_occurence     
ResPak           PAKISTAN                       0                             0        3      9  co_occurence     
ResPak           PAKISTAN                       0                             1        0      9  co_occurence     
ResPak           PAKISTAN                       1                             0        5      9  co_occurence     
ResPak           PAKISTAN                       1                             1        1      9  co_occurence     
SAS-CompFeed     INDIA                          0                             0      990   1259  co_occurence     
SAS-CompFeed     INDIA                          0                             1       84   1259  co_occurence     
SAS-CompFeed     INDIA                          1                             0      141   1259  co_occurence     
SAS-CompFeed     INDIA                          1                             1       44   1259  co_occurence     
SAS-FoodSuppl    INDIA                          0                             0      228    323  co_occurence     
SAS-FoodSuppl    INDIA                          0                             1       46    323  co_occurence     
SAS-FoodSuppl    INDIA                          1                             0       35    323  co_occurence     
SAS-FoodSuppl    INDIA                          1                             1       14    323  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             0      914    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             1       16    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             0       45    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             1        5    980  co_occurence     
ZVITAMBO         ZIMBABWE                       0                             0     1363   1691  co_occurence     
ZVITAMBO         ZIMBABWE                       0                             1       63   1691  co_occurence     
ZVITAMBO         ZIMBABWE                       1                             0      238   1691  co_occurence     
ZVITAMBO         ZIMBABWE                       1                             1       27   1691  co_occurence     


The following strata were considered:

* studyid: CMC-V-BCS-2002, country: INDIA
* studyid: CMIN, country: BANGLADESH
* studyid: COHORTS, country: GUATEMALA
* studyid: COHORTS, country: PHILIPPINES
* studyid: CONTENT, country: PERU
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: IRC, country: INDIA
* studyid: JiVitA-4, country: BANGLADESH
* studyid: Keneba, country: GAMBIA
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: NIH-Birth, country: BANGLADESH
* studyid: NIH-Crypto, country: BANGLADESH
* studyid: PROBIT, country: BELARUS
* studyid: PROVIDE, country: BANGLADESH
* studyid: ResPak, country: PAKISTAN
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: CONTENT, country: PERU
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROBIT, country: BELARUS
* studyid: PROVIDE, country: BANGLADESH
* studyid: ResPak, country: PAKISTAN

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

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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

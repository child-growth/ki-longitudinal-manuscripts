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

**Intervention Variable:** anywast06

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* hhwealth_quart
* W_nrooms
* month
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_month
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        anywast06    n_cell      n  outcome_variable 
----------  ---------------  -----------------------------  ----------  -------  -----  -----------------
Birth       CMC-V-BCS-2002   INDIA                          0                37     92  haz              
Birth       CMC-V-BCS-2002   INDIA                          1                55     92  haz              
Birth       CMIN             BANGLADESH                     0                15     20  haz              
Birth       CMIN             BANGLADESH                     1                 5     20  haz              
Birth       CONTENT          PERU                           0                 2      2  haz              
Birth       CONTENT          PERU                           1                 0      2  haz              
Birth       EE               PAKISTAN                       0               156    240  haz              
Birth       EE               PAKISTAN                       1                84    240  haz              
Birth       GMS-Nepal        NEPAL                          0               422    684  haz              
Birth       GMS-Nepal        NEPAL                          1               262    684  haz              
Birth       IRC              INDIA                          0               164    388  haz              
Birth       IRC              INDIA                          1               224    388  haz              
Birth       Keneba           GAMBIA                         0               994   1542  haz              
Birth       Keneba           GAMBIA                         1               548   1542  haz              
Birth       MAL-ED           BANGLADESH                     0               177    229  haz              
Birth       MAL-ED           BANGLADESH                     1                52    229  haz              
Birth       MAL-ED           BRAZIL                         0                62     65  haz              
Birth       MAL-ED           BRAZIL                         1                 3     65  haz              
Birth       MAL-ED           INDIA                          0                33     47  haz              
Birth       MAL-ED           INDIA                          1                14     47  haz              
Birth       MAL-ED           NEPAL                          0                23     27  haz              
Birth       MAL-ED           NEPAL                          1                 4     27  haz              
Birth       MAL-ED           PERU                           0               223    233  haz              
Birth       MAL-ED           PERU                           1                10    233  haz              
Birth       MAL-ED           SOUTH AFRICA                   0               101    122  haz              
Birth       MAL-ED           SOUTH AFRICA                   1                21    122  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               119    124  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 5    124  haz              
Birth       PROVIDE          BANGLADESH                     0               396    539  haz              
Birth       PROVIDE          BANGLADESH                     1               143    539  haz              
Birth       ResPak           PAKISTAN                       0                28     42  haz              
Birth       ResPak           PAKISTAN                       1                14     42  haz              
6 months    CMC-V-BCS-2002   INDIA                          0               177    365  haz              
6 months    CMC-V-BCS-2002   INDIA                          1               188    365  haz              
6 months    CMIN             BANGLADESH                     0               201    243  haz              
6 months    CMIN             BANGLADESH                     1                42    243  haz              
6 months    CONTENT          PERU                           0               211    215  haz              
6 months    CONTENT          PERU                           1                 4    215  haz              
6 months    EE               PAKISTAN                       0               249    373  haz              
6 months    EE               PAKISTAN                       1               124    373  haz              
6 months    GMS-Nepal        NEPAL                          0               336    564  haz              
6 months    GMS-Nepal        NEPAL                          1               228    564  haz              
6 months    Guatemala BSC    GUATEMALA                      0               270    280  haz              
6 months    Guatemala BSC    GUATEMALA                      1                10    280  haz              
6 months    IRC              INDIA                          0               180    407  haz              
6 months    IRC              INDIA                          1               227    407  haz              
6 months    Keneba           GAMBIA                         0              1441   2056  haz              
6 months    Keneba           GAMBIA                         1               615   2056  haz              
6 months    MAL-ED           BANGLADESH                     0               183    241  haz              
6 months    MAL-ED           BANGLADESH                     1                58    241  haz              
6 months    MAL-ED           BRAZIL                         0               194    209  haz              
6 months    MAL-ED           BRAZIL                         1                15    209  haz              
6 months    MAL-ED           INDIA                          0               159    236  haz              
6 months    MAL-ED           INDIA                          1                77    236  haz              
6 months    MAL-ED           NEPAL                          0               188    236  haz              
6 months    MAL-ED           NEPAL                          1                48    236  haz              
6 months    MAL-ED           PERU                           0               263    273  haz              
6 months    MAL-ED           PERU                           1                10    273  haz              
6 months    MAL-ED           SOUTH AFRICA                   0               223    254  haz              
6 months    MAL-ED           SOUTH AFRICA                   1                31    254  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               234    247  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                13    247  haz              
6 months    PROVIDE          BANGLADESH                     0               450    604  haz              
6 months    PROVIDE          BANGLADESH                     1               154    604  haz              
6 months    ResPak           PAKISTAN                       0               143    239  haz              
6 months    ResPak           PAKISTAN                       1                96    239  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1728   2029  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               301   2029  haz              
24 months   CMC-V-BCS-2002   INDIA                          0               176    366  haz              
24 months   CMC-V-BCS-2002   INDIA                          1               190    366  haz              
24 months   CMIN             BANGLADESH                     0               200    242  haz              
24 months   CMIN             BANGLADESH                     1                42    242  haz              
24 months   CONTENT          PERU                           0               162    164  haz              
24 months   CONTENT          PERU                           1                 2    164  haz              
24 months   EE               PAKISTAN                       0               109    167  haz              
24 months   EE               PAKISTAN                       1                58    167  haz              
24 months   GMS-Nepal        NEPAL                          0               300    488  haz              
24 months   GMS-Nepal        NEPAL                          1               188    488  haz              
24 months   IRC              INDIA                          0               181    409  haz              
24 months   IRC              INDIA                          1               228    409  haz              
24 months   Keneba           GAMBIA                         0              1091   1563  haz              
24 months   Keneba           GAMBIA                         1               472   1563  haz              
24 months   MAL-ED           BANGLADESH                     0               162    212  haz              
24 months   MAL-ED           BANGLADESH                     1                50    212  haz              
24 months   MAL-ED           BRAZIL                         0               156    169  haz              
24 months   MAL-ED           BRAZIL                         1                13    169  haz              
24 months   MAL-ED           INDIA                          0               151    227  haz              
24 months   MAL-ED           INDIA                          1                76    227  haz              
24 months   MAL-ED           NEPAL                          0               182    228  haz              
24 months   MAL-ED           NEPAL                          1                46    228  haz              
24 months   MAL-ED           PERU                           0               193    201  haz              
24 months   MAL-ED           PERU                           1                 8    201  haz              
24 months   MAL-ED           SOUTH AFRICA                   0               212    238  haz              
24 months   MAL-ED           SOUTH AFRICA                   1                26    238  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               202    214  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                12    214  haz              
24 months   PROVIDE          BANGLADESH                     0               432    578  haz              
24 months   PROVIDE          BANGLADESH                     1               146    578  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 5      6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1      6  haz              


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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

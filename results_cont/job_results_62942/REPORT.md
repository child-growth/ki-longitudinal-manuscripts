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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
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
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
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

agecat      studyid          country                        exclfeed36    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -----------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1                  3       3  haz              
Birth       CMC-V-BCS-2002   INDIA                          0                  0       3  haz              
Birth       EE               PAKISTAN                       1                  3       7  haz              
Birth       EE               PAKISTAN                       0                  4       7  haz              
Birth       GMS-Nepal        NEPAL                          1                422     526  haz              
Birth       GMS-Nepal        NEPAL                          0                104     526  haz              
Birth       IRC              INDIA                          1                  0       4  haz              
Birth       IRC              INDIA                          0                  4       4  haz              
Birth       JiVitA-3         BANGLADESH                     1               8322   10681  haz              
Birth       JiVitA-3         BANGLADESH                     0               2359   10681  haz              
Birth       JiVitA-4         BANGLADESH                     1               1994    2517  haz              
Birth       JiVitA-4         BANGLADESH                     0                523    2517  haz              
Birth       Keneba           GAMBIA                         1                363    1253  haz              
Birth       Keneba           GAMBIA                         0                890    1253  haz              
Birth       MAL-ED           BANGLADESH                     1                 32     221  haz              
Birth       MAL-ED           BANGLADESH                     0                189     221  haz              
Birth       MAL-ED           BRAZIL                         1                  5      65  haz              
Birth       MAL-ED           BRAZIL                         0                 60      65  haz              
Birth       MAL-ED           INDIA                          1                  1      42  haz              
Birth       MAL-ED           INDIA                          0                 41      42  haz              
Birth       MAL-ED           NEPAL                          1                  0      26  haz              
Birth       MAL-ED           NEPAL                          0                 26      26  haz              
Birth       MAL-ED           PERU                           1                  5     223  haz              
Birth       MAL-ED           PERU                           0                218     223  haz              
Birth       MAL-ED           SOUTH AFRICA                   1                  1     105  haz              
Birth       MAL-ED           SOUTH AFRICA                   0                104     105  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0     119  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                119     119  haz              
Birth       PROVIDE          BANGLADESH                     1                119     490  haz              
Birth       PROVIDE          BANGLADESH                     0                371     490  haz              
6 months    CMC-V-BCS-2002   INDIA                          1                  9       9  haz              
6 months    CMC-V-BCS-2002   INDIA                          0                  0       9  haz              
6 months    EE               PAKISTAN                       1                  4       9  haz              
6 months    EE               PAKISTAN                       0                  5       9  haz              
6 months    GMS-Nepal        NEPAL                          1                422     527  haz              
6 months    GMS-Nepal        NEPAL                          0                105     527  haz              
6 months    IRC              INDIA                          1                  0       4  haz              
6 months    IRC              INDIA                          0                  4       4  haz              
6 months    JiVitA-3         BANGLADESH                     1               6578    8552  haz              
6 months    JiVitA-3         BANGLADESH                     0               1974    8552  haz              
6 months    JiVitA-4         BANGLADESH                     1               3241    4185  haz              
6 months    JiVitA-4         BANGLADESH                     0                944    4185  haz              
6 months    Keneba           GAMBIA                         1                507    1790  haz              
6 months    Keneba           GAMBIA                         0               1283    1790  haz              
6 months    LCNI-5           MALAWI                         1                 47     272  haz              
6 months    LCNI-5           MALAWI                         0                225     272  haz              
6 months    MAL-ED           BANGLADESH                     1                 30     240  haz              
6 months    MAL-ED           BANGLADESH                     0                210     240  haz              
6 months    MAL-ED           BRAZIL                         1                 12     209  haz              
6 months    MAL-ED           BRAZIL                         0                197     209  haz              
6 months    MAL-ED           INDIA                          1                  9     233  haz              
6 months    MAL-ED           INDIA                          0                224     233  haz              
6 months    MAL-ED           NEPAL                          1                  4     235  haz              
6 months    MAL-ED           NEPAL                          0                231     235  haz              
6 months    MAL-ED           PERU                           1                  6     272  haz              
6 months    MAL-ED           PERU                           0                266     272  haz              
6 months    MAL-ED           SOUTH AFRICA                   1                  1     250  haz              
6 months    MAL-ED           SOUTH AFRICA                   0                249     250  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  4     243  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                239     243  haz              
6 months    PROVIDE          BANGLADESH                     1                145     603  haz              
6 months    PROVIDE          BANGLADESH                     0                458     603  haz              
6 months    SAS-FoodSuppl    INDIA                          1                  0     168  haz              
6 months    SAS-FoodSuppl    INDIA                          0                168     168  haz              
24 months   CMC-V-BCS-2002   INDIA                          1                  9       9  haz              
24 months   CMC-V-BCS-2002   INDIA                          0                  0       9  haz              
24 months   EE               PAKISTAN                       1                  0       3  haz              
24 months   EE               PAKISTAN                       0                  3       3  haz              
24 months   GMS-Nepal        NEPAL                          1                363     446  haz              
24 months   GMS-Nepal        NEPAL                          0                 83     446  haz              
24 months   IRC              INDIA                          1                  0       4  haz              
24 months   IRC              INDIA                          0                  4       4  haz              
24 months   JiVitA-3         BANGLADESH                     1               3325    4334  haz              
24 months   JiVitA-3         BANGLADESH                     0               1009    4334  haz              
24 months   JiVitA-4         BANGLADESH                     1               3145    4049  haz              
24 months   JiVitA-4         BANGLADESH                     0                904    4049  haz              
24 months   Keneba           GAMBIA                         1                424    1394  haz              
24 months   Keneba           GAMBIA                         0                970    1394  haz              
24 months   LCNI-5           MALAWI                         1                 34     189  haz              
24 months   LCNI-5           MALAWI                         0                155     189  haz              
24 months   MAL-ED           BANGLADESH                     1                 25     212  haz              
24 months   MAL-ED           BANGLADESH                     0                187     212  haz              
24 months   MAL-ED           BRAZIL                         1                 11     169  haz              
24 months   MAL-ED           BRAZIL                         0                158     169  haz              
24 months   MAL-ED           INDIA                          1                  9     224  haz              
24 months   MAL-ED           INDIA                          0                215     224  haz              
24 months   MAL-ED           NEPAL                          1                  4     227  haz              
24 months   MAL-ED           NEPAL                          0                223     227  haz              
24 months   MAL-ED           PERU                           1                  4     201  haz              
24 months   MAL-ED           PERU                           0                197     201  haz              
24 months   MAL-ED           SOUTH AFRICA                   1                  1     235  haz              
24 months   MAL-ED           SOUTH AFRICA                   0                234     235  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  3     213  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                210     213  haz              
24 months   PROVIDE          BANGLADESH                     1                141     577  haz              
24 months   PROVIDE          BANGLADESH                     0                436     577  haz              


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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

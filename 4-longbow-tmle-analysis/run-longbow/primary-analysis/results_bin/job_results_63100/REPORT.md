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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
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

agecat      studyid          country                        hdlvry    stunted   n_cell      n  outcome_variable 
----------  ---------------  -----------------------------  -------  --------  -------  -----  -----------------
Birth       CMC-V-BCS-2002   INDIA                          0               0       75     92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          0               1       17     92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          1               0        0     92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          1               1        0     92  stunted          
Birth       COHORTS          INDIA                          0               0     2613   4694  stunted          
Birth       COHORTS          INDIA                          0               1      325   4694  stunted          
Birth       COHORTS          INDIA                          1               0     1534   4694  stunted          
Birth       COHORTS          INDIA                          1               1      222   4694  stunted          
Birth       EE               PAKISTAN                       0               0       93    238  stunted          
Birth       EE               PAKISTAN                       0               1       68    238  stunted          
Birth       EE               PAKISTAN                       1               0       46    238  stunted          
Birth       EE               PAKISTAN                       1               1       31    238  stunted          
Birth       GMS-Nepal        NEPAL                          0               0      125    646  stunted          
Birth       GMS-Nepal        NEPAL                          0               1       32    646  stunted          
Birth       GMS-Nepal        NEPAL                          1               0      408    646  stunted          
Birth       GMS-Nepal        NEPAL                          1               1       81    646  stunted          
Birth       IRC              INDIA                          0               0      337    388  stunted          
Birth       IRC              INDIA                          0               1       44    388  stunted          
Birth       IRC              INDIA                          1               0        6    388  stunted          
Birth       IRC              INDIA                          1               1        1    388  stunted          
Birth       JiVitA-3         BANGLADESH                     0               0       23    334  stunted          
Birth       JiVitA-3         BANGLADESH                     0               1        7    334  stunted          
Birth       JiVitA-3         BANGLADESH                     1               0      220    334  stunted          
Birth       JiVitA-3         BANGLADESH                     1               1       84    334  stunted          
Birth       JiVitA-4         BANGLADESH                     0               0      420   2808  stunted          
Birth       JiVitA-4         BANGLADESH                     0               1      134   2808  stunted          
Birth       JiVitA-4         BANGLADESH                     1               0     1535   2808  stunted          
Birth       JiVitA-4         BANGLADESH                     1               1      719   2808  stunted          
Birth       NIH-Crypto       BANGLADESH                     0               0      495    732  stunted          
Birth       NIH-Crypto       BANGLADESH                     0               1       72    732  stunted          
Birth       NIH-Crypto       BANGLADESH                     1               0      136    732  stunted          
Birth       NIH-Crypto       BANGLADESH                     1               1       29    732  stunted          
Birth       PROVIDE          BANGLADESH                     0               0      355    539  stunted          
Birth       PROVIDE          BANGLADESH                     0               1       36    539  stunted          
Birth       PROVIDE          BANGLADESH                     1               0      136    539  stunted          
Birth       PROVIDE          BANGLADESH                     1               1       12    539  stunted          
Birth       SAS-CompFeed     INDIA                          0               0       85   1085  stunted          
Birth       SAS-CompFeed     INDIA                          0               1       39   1085  stunted          
Birth       SAS-CompFeed     INDIA                          1               0      692   1085  stunted          
Birth       SAS-CompFeed     INDIA                          1               1      269   1085  stunted          
6 months    CMC-V-BCS-2002   INDIA                          0               0      249    366  stunted          
6 months    CMC-V-BCS-2002   INDIA                          0               1      109    366  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1               0        7    366  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1               1        1    366  stunted          
6 months    COHORTS          INDIA                          0               0     2457   4699  stunted          
6 months    COHORTS          INDIA                          0               1      443   4699  stunted          
6 months    COHORTS          INDIA                          1               0     1323   4699  stunted          
6 months    COHORTS          INDIA                          1               1      476   4699  stunted          
6 months    EE               PAKISTAN                       0               0      131    371  stunted          
6 months    EE               PAKISTAN                       0               1      119    371  stunted          
6 months    EE               PAKISTAN                       1               0       58    371  stunted          
6 months    EE               PAKISTAN                       1               1       63    371  stunted          
6 months    GMS-Nepal        NEPAL                          0               0      110    528  stunted          
6 months    GMS-Nepal        NEPAL                          0               1       19    528  stunted          
6 months    GMS-Nepal        NEPAL                          1               0      311    528  stunted          
6 months    GMS-Nepal        NEPAL                          1               1       88    528  stunted          
6 months    IRC              INDIA                          0               0      303    407  stunted          
6 months    IRC              INDIA                          0               1       96    407  stunted          
6 months    IRC              INDIA                          1               0        4    407  stunted          
6 months    IRC              INDIA                          1               1        4    407  stunted          
6 months    JiVitA-3         BANGLADESH                     0               0       34    332  stunted          
6 months    JiVitA-3         BANGLADESH                     0               1        5    332  stunted          
6 months    JiVitA-3         BANGLADESH                     1               0      220    332  stunted          
6 months    JiVitA-3         BANGLADESH                     1               1       73    332  stunted          
6 months    JiVitA-4         BANGLADESH                     0               0      860   4038  stunted          
6 months    JiVitA-4         BANGLADESH                     0               1      221   4038  stunted          
6 months    JiVitA-4         BANGLADESH                     1               0     2173   4038  stunted          
6 months    JiVitA-4         BANGLADESH                     1               1      784   4038  stunted          
6 months    NIH-Crypto       BANGLADESH                     0               0      449    715  stunted          
6 months    NIH-Crypto       BANGLADESH                     0               1      105    715  stunted          
6 months    NIH-Crypto       BANGLADESH                     1               0      116    715  stunted          
6 months    NIH-Crypto       BANGLADESH                     1               1       45    715  stunted          
6 months    PROVIDE          BANGLADESH                     0               0      379    604  stunted          
6 months    PROVIDE          BANGLADESH                     0               1       71    604  stunted          
6 months    PROVIDE          BANGLADESH                     1               0      129    604  stunted          
6 months    PROVIDE          BANGLADESH                     1               1       25    604  stunted          
6 months    SAS-CompFeed     INDIA                          0               0      109   1091  stunted          
6 months    SAS-CompFeed     INDIA                          0               1       38   1091  stunted          
6 months    SAS-CompFeed     INDIA                          1               0      655   1091  stunted          
6 months    SAS-CompFeed     INDIA                          1               1      289   1091  stunted          
6 months    SAS-FoodSuppl    INDIA                          0               0       45    380  stunted          
6 months    SAS-FoodSuppl    INDIA                          0               1       31    380  stunted          
6 months    SAS-FoodSuppl    INDIA                          1               0      172    380  stunted          
6 months    SAS-FoodSuppl    INDIA                          1               1      132    380  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1707   1921  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      182   1921  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       27   1921  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        5   1921  stunted          
24 months   CMC-V-BCS-2002   INDIA                          0               0      101    368  stunted          
24 months   CMC-V-BCS-2002   INDIA                          0               1      259    368  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1               0        3    368  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1               1        5    368  stunted          
24 months   COHORTS          INDIA                          0               0     1155   3556  stunted          
24 months   COHORTS          INDIA                          0               1     1078   3556  stunted          
24 months   COHORTS          INDIA                          1               0      377   3556  stunted          
24 months   COHORTS          INDIA                          1               1      946   3556  stunted          
24 months   EE               PAKISTAN                       0               0       34    166  stunted          
24 months   EE               PAKISTAN                       0               1       78    166  stunted          
24 months   EE               PAKISTAN                       1               0       14    166  stunted          
24 months   EE               PAKISTAN                       1               1       40    166  stunted          
24 months   GMS-Nepal        NEPAL                          0               0       71    456  stunted          
24 months   GMS-Nepal        NEPAL                          0               1       47    456  stunted          
24 months   GMS-Nepal        NEPAL                          1               0      181    456  stunted          
24 months   GMS-Nepal        NEPAL                          1               1      157    456  stunted          
24 months   IRC              INDIA                          0               0      234    409  stunted          
24 months   IRC              INDIA                          0               1      167    409  stunted          
24 months   IRC              INDIA                          1               0        3    409  stunted          
24 months   IRC              INDIA                          1               1        5    409  stunted          
24 months   JiVitA-3         BANGLADESH                     0               0       21    291  stunted          
24 months   JiVitA-3         BANGLADESH                     0               1       14    291  stunted          
24 months   JiVitA-3         BANGLADESH                     1               0      115    291  stunted          
24 months   JiVitA-3         BANGLADESH                     1               1      141    291  stunted          
24 months   JiVitA-4         BANGLADESH                     0               0      689   4005  stunted          
24 months   JiVitA-4         BANGLADESH                     0               1      344   4005  stunted          
24 months   JiVitA-4         BANGLADESH                     1               0     1717   4005  stunted          
24 months   JiVitA-4         BANGLADESH                     1               1     1255   4005  stunted          
24 months   NIH-Crypto       BANGLADESH                     0               0      302    514  stunted          
24 months   NIH-Crypto       BANGLADESH                     0               1       89    514  stunted          
24 months   NIH-Crypto       BANGLADESH                     1               0       80    514  stunted          
24 months   NIH-Crypto       BANGLADESH                     1               1       43    514  stunted          
24 months   PROVIDE          BANGLADESH                     0               0      295    578  stunted          
24 months   PROVIDE          BANGLADESH                     0               1      138    578  stunted          
24 months   PROVIDE          BANGLADESH                     1               0       93    578  stunted          
24 months   PROVIDE          BANGLADESH                     1               1       52    578  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        5      6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        1      6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        0      6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0      6  stunted          


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: IRC, country: INDIA
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

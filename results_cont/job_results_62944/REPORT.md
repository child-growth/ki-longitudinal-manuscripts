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

**Intervention Variable:** earlybf

**Adjustment Set:**

* arm
* sex
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
* brthmon
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
* delta_brthmon
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

agecat      studyid        country                        earlybf    n_cell       n  outcome_variable 
----------  -------------  -----------------------------  --------  -------  ------  -----------------
Birth       EE             PAKISTAN                       1              44     229  haz              
Birth       EE             PAKISTAN                       0             185     229  haz              
Birth       GMS-Nepal      NEPAL                          1             180     632  haz              
Birth       GMS-Nepal      NEPAL                          0             452     632  haz              
Birth       JiVitA-3       BANGLADESH                     1             236   22370  haz              
Birth       JiVitA-3       BANGLADESH                     0           22134   22370  haz              
Birth       JiVitA-4       BANGLADESH                     1            1912    2823  haz              
Birth       JiVitA-4       BANGLADESH                     0             911    2823  haz              
Birth       MAL-ED         BANGLADESH                     1             147     230  haz              
Birth       MAL-ED         BANGLADESH                     0              83     230  haz              
Birth       MAL-ED         BRAZIL                         1              28      65  haz              
Birth       MAL-ED         BRAZIL                         0              37      65  haz              
Birth       MAL-ED         INDIA                          1              32      46  haz              
Birth       MAL-ED         INDIA                          0              14      46  haz              
Birth       MAL-ED         NEPAL                          1              14      27  haz              
Birth       MAL-ED         NEPAL                          0              13      27  haz              
Birth       MAL-ED         PERU                           1             175     233  haz              
Birth       MAL-ED         PERU                           0              58     233  haz              
Birth       MAL-ED         SOUTH AFRICA                   1              69     111  haz              
Birth       MAL-ED         SOUTH AFRICA                   0              42     111  haz              
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             111     125  haz              
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              14     125  haz              
Birth       NIH-Crypto     BANGLADESH                     1             634     732  haz              
Birth       NIH-Crypto     BANGLADESH                     0              98     732  haz              
Birth       SAS-CompFeed   INDIA                          1              86    1207  haz              
Birth       SAS-CompFeed   INDIA                          0            1121    1207  haz              
Birth       ZVITAMBO       ZIMBABWE                       1            6556   12354  haz              
Birth       ZVITAMBO       ZIMBABWE                       0            5798   12354  haz              
6 months    EE             PAKISTAN                       1              68     362  haz              
6 months    EE             PAKISTAN                       0             294     362  haz              
6 months    GMS-Nepal      NEPAL                          1             151     511  haz              
6 months    GMS-Nepal      NEPAL                          0             360     511  haz              
6 months    JiVitA-3       BANGLADESH                     1              35   16811  haz              
6 months    JiVitA-3       BANGLADESH                     0           16776   16811  haz              
6 months    JiVitA-4       BANGLADESH                     1            3094    4831  haz              
6 months    JiVitA-4       BANGLADESH                     0            1737    4831  haz              
6 months    MAL-ED         BANGLADESH                     1             147     240  haz              
6 months    MAL-ED         BANGLADESH                     0              93     240  haz              
6 months    MAL-ED         BRAZIL                         1              95     209  haz              
6 months    MAL-ED         BRAZIL                         0             114     209  haz              
6 months    MAL-ED         INDIA                          1             140     236  haz              
6 months    MAL-ED         INDIA                          0              96     236  haz              
6 months    MAL-ED         NEPAL                          1              96     236  haz              
6 months    MAL-ED         NEPAL                          0             140     236  haz              
6 months    MAL-ED         PERU                           1             202     273  haz              
6 months    MAL-ED         PERU                           0              71     273  haz              
6 months    MAL-ED         SOUTH AFRICA                   1             156     250  haz              
6 months    MAL-ED         SOUTH AFRICA                   0              94     250  haz              
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             205     247  haz              
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              42     247  haz              
6 months    NIH-Crypto     BANGLADESH                     1             619     715  haz              
6 months    NIH-Crypto     BANGLADESH                     0              96     715  haz              
6 months    SAS-CompFeed   INDIA                          1              98    1336  haz              
6 months    SAS-CompFeed   INDIA                          0            1238    1336  haz              
6 months    ZVITAMBO       ZIMBABWE                       1            4146    7698  haz              
6 months    ZVITAMBO       ZIMBABWE                       0            3552    7698  haz              
24 months   EE             PAKISTAN                       1              32     164  haz              
24 months   EE             PAKISTAN                       0             132     164  haz              
24 months   GMS-Nepal      NEPAL                          1             131     445  haz              
24 months   GMS-Nepal      NEPAL                          0             314     445  haz              
24 months   JiVitA-3       BANGLADESH                     1               1    8632  haz              
24 months   JiVitA-3       BANGLADESH                     0            8631    8632  haz              
24 months   JiVitA-4       BANGLADESH                     1            3042    4752  haz              
24 months   JiVitA-4       BANGLADESH                     0            1710    4752  haz              
24 months   MAL-ED         BANGLADESH                     1             128     211  haz              
24 months   MAL-ED         BANGLADESH                     0              83     211  haz              
24 months   MAL-ED         BRAZIL                         1              80     169  haz              
24 months   MAL-ED         BRAZIL                         0              89     169  haz              
24 months   MAL-ED         INDIA                          1             134     227  haz              
24 months   MAL-ED         INDIA                          0              93     227  haz              
24 months   MAL-ED         NEPAL                          1              95     228  haz              
24 months   MAL-ED         NEPAL                          0             133     228  haz              
24 months   MAL-ED         PERU                           1             149     201  haz              
24 months   MAL-ED         PERU                           0              52     201  haz              
24 months   MAL-ED         SOUTH AFRICA                   1             144     235  haz              
24 months   MAL-ED         SOUTH AFRICA                   0              91     235  haz              
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             180     214  haz              
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              34     214  haz              
24 months   NIH-Crypto     BANGLADESH                     1             443     514  haz              
24 months   NIH-Crypto     BANGLADESH                     0              71     514  haz              
24 months   ZVITAMBO       ZIMBABWE                       1             717    1406  haz              
24 months   ZVITAMBO       ZIMBABWE                       0             689    1406  haz              


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_gam_NULL_NULL_GCV.Cp
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

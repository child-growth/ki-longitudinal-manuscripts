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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** predfeed3

**Adjustment Set:**

* arm
* sex
* month
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

agecat      studyid     country                        predfeed3    sstunted   n_cell       n  outcome_variable 
----------  ----------  -----------------------------  ----------  ---------  -------  ------  -----------------
Birth       EE          PAKISTAN                       1                   0       28      35  sstunted         
Birth       EE          PAKISTAN                       1                   1        7      35  sstunted         
Birth       EE          PAKISTAN                       0                   0        0      35  sstunted         
Birth       EE          PAKISTAN                       0                   1        0      35  sstunted         
Birth       GMS-Nepal   NEPAL                          1                   0      367     458  sstunted         
Birth       GMS-Nepal   NEPAL                          1                   1       13     458  sstunted         
Birth       GMS-Nepal   NEPAL                          0                   0       73     458  sstunted         
Birth       GMS-Nepal   NEPAL                          0                   1        5     458  sstunted         
Birth       JiVitA-3    BANGLADESH                     1                   0    10708   13276  sstunted         
Birth       JiVitA-3    BANGLADESH                     1                   1     1309   13276  sstunted         
Birth       JiVitA-3    BANGLADESH                     0                   0     1116   13276  sstunted         
Birth       JiVitA-3    BANGLADESH                     0                   1      143   13276  sstunted         
Birth       JiVitA-4    BANGLADESH                     1                   0       97     116  sstunted         
Birth       JiVitA-4    BANGLADESH                     1                   1        8     116  sstunted         
Birth       JiVitA-4    BANGLADESH                     0                   0        9     116  sstunted         
Birth       JiVitA-4    BANGLADESH                     0                   1        2     116  sstunted         
Birth       MAL-ED      BANGLADESH                     1                   0      169     215  sstunted         
Birth       MAL-ED      BANGLADESH                     1                   1        7     215  sstunted         
Birth       MAL-ED      BANGLADESH                     0                   0       39     215  sstunted         
Birth       MAL-ED      BANGLADESH                     0                   1        0     215  sstunted         
Birth       MAL-ED      BRAZIL                         1                   0       23      57  sstunted         
Birth       MAL-ED      BRAZIL                         1                   1        1      57  sstunted         
Birth       MAL-ED      BRAZIL                         0                   0       32      57  sstunted         
Birth       MAL-ED      BRAZIL                         0                   1        1      57  sstunted         
Birth       MAL-ED      INDIA                          1                   0       27      41  sstunted         
Birth       MAL-ED      INDIA                          1                   1        2      41  sstunted         
Birth       MAL-ED      INDIA                          0                   0       12      41  sstunted         
Birth       MAL-ED      INDIA                          0                   1        0      41  sstunted         
Birth       MAL-ED      NEPAL                          1                   0       14      26  sstunted         
Birth       MAL-ED      NEPAL                          1                   1        0      26  sstunted         
Birth       MAL-ED      NEPAL                          0                   0       11      26  sstunted         
Birth       MAL-ED      NEPAL                          0                   1        1      26  sstunted         
Birth       MAL-ED      PERU                           1                   0      147     223  sstunted         
Birth       MAL-ED      PERU                           1                   1        3     223  sstunted         
Birth       MAL-ED      PERU                           0                   0       73     223  sstunted         
Birth       MAL-ED      PERU                           0                   1        0     223  sstunted         
Birth       MAL-ED      SOUTH AFRICA                   1                   0       33     100  sstunted         
Birth       MAL-ED      SOUTH AFRICA                   1                   1        0     100  sstunted         
Birth       MAL-ED      SOUTH AFRICA                   0                   0       66     100  sstunted         
Birth       MAL-ED      SOUTH AFRICA                   0                   1        1     100  sstunted         
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                   0       24     102  sstunted         
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                   1        2     102  sstunted         
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                   0       71     102  sstunted         
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                   1        5     102  sstunted         
6 months    EE          PAKISTAN                       1                   0       28      39  sstunted         
6 months    EE          PAKISTAN                       1                   1       11      39  sstunted         
6 months    EE          PAKISTAN                       0                   0        0      39  sstunted         
6 months    EE          PAKISTAN                       0                   1        0      39  sstunted         
6 months    GMS-Nepal   NEPAL                          1                   0      356     441  sstunted         
6 months    GMS-Nepal   NEPAL                          1                   1       11     441  sstunted         
6 months    GMS-Nepal   NEPAL                          0                   0       69     441  sstunted         
6 months    GMS-Nepal   NEPAL                          0                   1        5     441  sstunted         
6 months    JiVitA-3    BANGLADESH                     1                   0     7997    9328  sstunted         
6 months    JiVitA-3    BANGLADESH                     1                   1      519    9328  sstunted         
6 months    JiVitA-3    BANGLADESH                     0                   0      757    9328  sstunted         
6 months    JiVitA-3    BANGLADESH                     0                   1       55    9328  sstunted         
6 months    JiVitA-4    BANGLADESH                     1                   0       76      88  sstunted         
6 months    JiVitA-4    BANGLADESH                     1                   1        0      88  sstunted         
6 months    JiVitA-4    BANGLADESH                     0                   0       11      88  sstunted         
6 months    JiVitA-4    BANGLADESH                     0                   1        1      88  sstunted         
6 months    MAL-ED      BANGLADESH                     1                   0      185     233  sstunted         
6 months    MAL-ED      BANGLADESH                     1                   1        6     233  sstunted         
6 months    MAL-ED      BANGLADESH                     0                   0       40     233  sstunted         
6 months    MAL-ED      BANGLADESH                     0                   1        2     233  sstunted         
6 months    MAL-ED      BRAZIL                         1                   0       93     187  sstunted         
6 months    MAL-ED      BRAZIL                         1                   1        0     187  sstunted         
6 months    MAL-ED      BRAZIL                         0                   0       94     187  sstunted         
6 months    MAL-ED      BRAZIL                         0                   1        0     187  sstunted         
6 months    MAL-ED      INDIA                          1                   0      142     210  sstunted         
6 months    MAL-ED      INDIA                          1                   1        5     210  sstunted         
6 months    MAL-ED      INDIA                          0                   0       59     210  sstunted         
6 months    MAL-ED      INDIA                          0                   1        4     210  sstunted         
6 months    MAL-ED      NEPAL                          1                   0      112     227  sstunted         
6 months    MAL-ED      NEPAL                          1                   1        1     227  sstunted         
6 months    MAL-ED      NEPAL                          0                   0      114     227  sstunted         
6 months    MAL-ED      NEPAL                          0                   1        0     227  sstunted         
6 months    MAL-ED      PERU                           1                   0      170     270  sstunted         
6 months    MAL-ED      PERU                           1                   1        6     270  sstunted         
6 months    MAL-ED      PERU                           0                   0       91     270  sstunted         
6 months    MAL-ED      PERU                           0                   1        3     270  sstunted         
6 months    MAL-ED      SOUTH AFRICA                   1                   0       62     244  sstunted         
6 months    MAL-ED      SOUTH AFRICA                   1                   1        1     244  sstunted         
6 months    MAL-ED      SOUTH AFRICA                   0                   0      176     244  sstunted         
6 months    MAL-ED      SOUTH AFRICA                   0                   1        5     244  sstunted         
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                   0       61     212  sstunted         
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                   1        3     212  sstunted         
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                   0      140     212  sstunted         
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                   1        8     212  sstunted         
24 months   EE          PAKISTAN                       1                   0       12      20  sstunted         
24 months   EE          PAKISTAN                       1                   1        8      20  sstunted         
24 months   EE          PAKISTAN                       0                   0        0      20  sstunted         
24 months   EE          PAKISTAN                       0                   1        0      20  sstunted         
24 months   GMS-Nepal   NEPAL                          1                   0      289     384  sstunted         
24 months   GMS-Nepal   NEPAL                          1                   1       33     384  sstunted         
24 months   GMS-Nepal   NEPAL                          0                   0       56     384  sstunted         
24 months   GMS-Nepal   NEPAL                          0                   1        6     384  sstunted         
24 months   JiVitA-3    BANGLADESH                     1                   0     3764    4852  sstunted         
24 months   JiVitA-3    BANGLADESH                     1                   1      670    4852  sstunted         
24 months   JiVitA-3    BANGLADESH                     0                   0      345    4852  sstunted         
24 months   JiVitA-3    BANGLADESH                     0                   1       73    4852  sstunted         
24 months   JiVitA-4    BANGLADESH                     1                   0      130     151  sstunted         
24 months   JiVitA-4    BANGLADESH                     1                   1        6     151  sstunted         
24 months   JiVitA-4    BANGLADESH                     0                   0       13     151  sstunted         
24 months   JiVitA-4    BANGLADESH                     0                   1        2     151  sstunted         
24 months   MAL-ED      BANGLADESH                     1                   0      144     205  sstunted         
24 months   MAL-ED      BANGLADESH                     1                   1       24     205  sstunted         
24 months   MAL-ED      BANGLADESH                     0                   0       33     205  sstunted         
24 months   MAL-ED      BANGLADESH                     0                   1        4     205  sstunted         
24 months   MAL-ED      BRAZIL                         1                   0       78     152  sstunted         
24 months   MAL-ED      BRAZIL                         1                   1        1     152  sstunted         
24 months   MAL-ED      BRAZIL                         0                   0       73     152  sstunted         
24 months   MAL-ED      BRAZIL                         0                   1        0     152  sstunted         
24 months   MAL-ED      INDIA                          1                   0      118     202  sstunted         
24 months   MAL-ED      INDIA                          1                   1       21     202  sstunted         
24 months   MAL-ED      INDIA                          0                   0       55     202  sstunted         
24 months   MAL-ED      INDIA                          0                   1        8     202  sstunted         
24 months   MAL-ED      NEPAL                          1                   0      106     220  sstunted         
24 months   MAL-ED      NEPAL                          1                   1        4     220  sstunted         
24 months   MAL-ED      NEPAL                          0                   0      108     220  sstunted         
24 months   MAL-ED      NEPAL                          0                   1        2     220  sstunted         
24 months   MAL-ED      PERU                           1                   0      123     198  sstunted         
24 months   MAL-ED      PERU                           1                   1        8     198  sstunted         
24 months   MAL-ED      PERU                           0                   0       61     198  sstunted         
24 months   MAL-ED      PERU                           0                   1        6     198  sstunted         
24 months   MAL-ED      SOUTH AFRICA                   1                   0       56     228  sstunted         
24 months   MAL-ED      SOUTH AFRICA                   1                   1        4     228  sstunted         
24 months   MAL-ED      SOUTH AFRICA                   0                   0      146     228  sstunted         
24 months   MAL-ED      SOUTH AFRICA                   0                   1       22     228  sstunted         
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                   0       40     184  sstunted         
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                   1       14     184  sstunted         
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                   0       80     184  sstunted         
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                   1       50     184  sstunted         


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA

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

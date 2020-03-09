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

**Intervention Variable:** impsan

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
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid      country                        impsan    stunted   n_cell       n
----------  -----------  -----------------------------  -------  --------  -------  ------
Birth       COHORTS      GUATEMALA                      1               0       42     491
Birth       COHORTS      GUATEMALA                      1               1        3     491
Birth       COHORTS      GUATEMALA                      0               0      416     491
Birth       COHORTS      GUATEMALA                      0               1       30     491
Birth       COHORTS      INDIA                          1               0     1593    4776
Birth       COHORTS      INDIA                          1               1      174    4776
Birth       COHORTS      INDIA                          0               0     2618    4776
Birth       COHORTS      INDIA                          0               1      391    4776
Birth       COHORTS      PHILIPPINES                    1               0      176    1191
Birth       COHORTS      PHILIPPINES                    1               1        2    1191
Birth       COHORTS      PHILIPPINES                    0               0      936    1191
Birth       COHORTS      PHILIPPINES                    0               1       77    1191
Birth       CONTENT      PERU                           1               0        1       2
Birth       CONTENT      PERU                           1               1        0       2
Birth       CONTENT      PERU                           0               0        1       2
Birth       CONTENT      PERU                           0               1        0       2
Birth       JiVitA-3     BANGLADESH                     1               0    10471   22431
Birth       JiVitA-3     BANGLADESH                     1               1     4749   22431
Birth       JiVitA-3     BANGLADESH                     0               0     4577   22431
Birth       JiVitA-3     BANGLADESH                     0               1     2634   22431
Birth       JiVitA-4     BANGLADESH                     1               0     1541    2820
Birth       JiVitA-4     BANGLADESH                     1               1      640    2820
Birth       JiVitA-4     BANGLADESH                     0               0      423    2820
Birth       JiVitA-4     BANGLADESH                     0               1      216    2820
Birth       MAL-ED       BANGLADESH                     1               0      147     213
Birth       MAL-ED       BANGLADESH                     1               1       32     213
Birth       MAL-ED       BANGLADESH                     0               0       29     213
Birth       MAL-ED       BANGLADESH                     0               1        5     213
Birth       MAL-ED       BRAZIL                         1               0       50      60
Birth       MAL-ED       BRAZIL                         1               1        9      60
Birth       MAL-ED       BRAZIL                         0               0        1      60
Birth       MAL-ED       BRAZIL                         0               1        0      60
Birth       MAL-ED       INDIA                          1               0       13      40
Birth       MAL-ED       INDIA                          1               1        2      40
Birth       MAL-ED       INDIA                          0               0       20      40
Birth       MAL-ED       INDIA                          0               1        5      40
Birth       MAL-ED       NEPAL                          1               0       23      26
Birth       MAL-ED       NEPAL                          1               1        2      26
Birth       MAL-ED       NEPAL                          0               0        1      26
Birth       MAL-ED       NEPAL                          0               1        0      26
Birth       MAL-ED       PERU                           1               0       44     208
Birth       MAL-ED       PERU                           1               1        8     208
Birth       MAL-ED       PERU                           0               0      140     208
Birth       MAL-ED       PERU                           0               1       16     208
Birth       MAL-ED       SOUTH AFRICA                   1               0        0      95
Birth       MAL-ED       SOUTH AFRICA                   1               1        0      95
Birth       MAL-ED       SOUTH AFRICA                   0               0       87      95
Birth       MAL-ED       SOUTH AFRICA                   0               1        8      95
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     118
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     118
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0       97     118
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1       21     118
Birth       NIH-Birth    BANGLADESH                     1               0      193     608
Birth       NIH-Birth    BANGLADESH                     1               1       38     608
Birth       NIH-Birth    BANGLADESH                     0               0      318     608
Birth       NIH-Birth    BANGLADESH                     0               1       59     608
Birth       NIH-Crypto   BANGLADESH                     1               0      550     721
Birth       NIH-Crypto   BANGLADESH                     1               1       82     721
Birth       NIH-Crypto   BANGLADESH                     0               0       71     721
Birth       NIH-Crypto   BANGLADESH                     0               1       18     721
Birth       PROVIDE      BANGLADESH                     1               0       41      45
Birth       PROVIDE      BANGLADESH                     1               1        2      45
Birth       PROVIDE      BANGLADESH                     0               0        2      45
Birth       PROVIDE      BANGLADESH                     0               1        0      45
6 months    COHORTS      GUATEMALA                      1               0       41     658
6 months    COHORTS      GUATEMALA                      1               1       26     658
6 months    COHORTS      GUATEMALA                      0               0      328     658
6 months    COHORTS      GUATEMALA                      0               1      263     658
6 months    COHORTS      INDIA                          1               0     1643    4971
6 months    COHORTS      INDIA                          1               1      238    4971
6 months    COHORTS      INDIA                          0               0     2355    4971
6 months    COHORTS      INDIA                          0               1      735    4971
6 months    COHORTS      PHILIPPINES                    1               0      132    1083
6 months    COHORTS      PHILIPPINES                    1               1       11    1083
6 months    COHORTS      PHILIPPINES                    0               0      718    1083
6 months    COHORTS      PHILIPPINES                    0               1      222    1083
6 months    CONTENT      PERU                           1               0      193     215
6 months    CONTENT      PERU                           1               1        8     215
6 months    CONTENT      PERU                           0               0       13     215
6 months    CONTENT      PERU                           0               1        1     215
6 months    JiVitA-3     BANGLADESH                     1               0     9239   16800
6 months    JiVitA-3     BANGLADESH                     1               1     2799   16800
6 months    JiVitA-3     BANGLADESH                     0               0     3337   16800
6 months    JiVitA-3     BANGLADESH                     0               1     1425   16800
6 months    JiVitA-4     BANGLADESH                     1               0     2843    4825
6 months    JiVitA-4     BANGLADESH                     1               1      891    4825
6 months    JiVitA-4     BANGLADESH                     0               0      764    4825
6 months    JiVitA-4     BANGLADESH                     0               1      327    4825
6 months    LCNI-5       MALAWI                         1               0        2     812
6 months    LCNI-5       MALAWI                         1               1        1     812
6 months    LCNI-5       MALAWI                         0               0      515     812
6 months    LCNI-5       MALAWI                         0               1      294     812
6 months    MAL-ED       BANGLADESH                     1               0      163     240
6 months    MAL-ED       BANGLADESH                     1               1       39     240
6 months    MAL-ED       BANGLADESH                     0               0       33     240
6 months    MAL-ED       BANGLADESH                     0               1        5     240
6 months    MAL-ED       BRAZIL                         1               0      199     209
6 months    MAL-ED       BRAZIL                         1               1        6     209
6 months    MAL-ED       BRAZIL                         0               0        4     209
6 months    MAL-ED       BRAZIL                         0               1        0     209
6 months    MAL-ED       INDIA                          1               0       91     233
6 months    MAL-ED       INDIA                          1               1       17     233
6 months    MAL-ED       INDIA                          0               0       98     233
6 months    MAL-ED       INDIA                          0               1       27     233
6 months    MAL-ED       NEPAL                          1               0      223     236
6 months    MAL-ED       NEPAL                          1               1       12     236
6 months    MAL-ED       NEPAL                          0               0        1     236
6 months    MAL-ED       NEPAL                          0               1        0     236
6 months    MAL-ED       PERU                           1               0       47     263
6 months    MAL-ED       PERU                           1               1       18     263
6 months    MAL-ED       PERU                           0               0      159     263
6 months    MAL-ED       PERU                           0               1       39     263
6 months    MAL-ED       SOUTH AFRICA                   1               0        3     244
6 months    MAL-ED       SOUTH AFRICA                   1               1        1     244
6 months    MAL-ED       SOUTH AFRICA                   0               0      193     244
6 months    MAL-ED       SOUTH AFRICA                   0               1       47     244
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     238
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     238
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      180     238
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1       58     238
6 months    NIH-Birth    BANGLADESH                     1               0      153     537
6 months    NIH-Birth    BANGLADESH                     1               1       52     537
6 months    NIH-Birth    BANGLADESH                     0               0      240     537
6 months    NIH-Birth    BANGLADESH                     0               1       92     537
6 months    NIH-Crypto   BANGLADESH                     1               0      483     704
6 months    NIH-Crypto   BANGLADESH                     1               1      132     704
6 months    NIH-Crypto   BANGLADESH                     0               0       73     704
6 months    NIH-Crypto   BANGLADESH                     0               1       16     704
6 months    PROVIDE      BANGLADESH                     1               0       10      11
6 months    PROVIDE      BANGLADESH                     1               1        1      11
6 months    PROVIDE      BANGLADESH                     0               0        0      11
6 months    PROVIDE      BANGLADESH                     0               1        0      11
24 months   COHORTS      GUATEMALA                      1               0       19     893
24 months   COHORTS      GUATEMALA                      1               1       58     893
24 months   COHORTS      GUATEMALA                      0               0      146     893
24 months   COHORTS      GUATEMALA                      0               1      670     893
24 months   COHORTS      INDIA                          1               0      853    3751
24 months   COHORTS      INDIA                          1               1      618    3751
24 months   COHORTS      INDIA                          0               0      772    3751
24 months   COHORTS      INDIA                          0               1     1508    3751
24 months   COHORTS      PHILIPPINES                    1               0       82     990
24 months   COHORTS      PHILIPPINES                    1               1       44     990
24 months   COHORTS      PHILIPPINES                    0               0      226     990
24 months   COHORTS      PHILIPPINES                    0               1      638     990
24 months   CONTENT      PERU                           1               0      140     164
24 months   CONTENT      PERU                           1               1       11     164
24 months   CONTENT      PERU                           0               0       11     164
24 months   CONTENT      PERU                           0               1        2     164
24 months   JiVitA-3     BANGLADESH                     1               0     3341    8622
24 months   JiVitA-3     BANGLADESH                     1               1     2770    8622
24 months   JiVitA-3     BANGLADESH                     0               0     1046    8622
24 months   JiVitA-3     BANGLADESH                     0               1     1465    8622
24 months   JiVitA-4     BANGLADESH                     1               0     2276    4747
24 months   JiVitA-4     BANGLADESH                     1               1     1407    4747
24 months   JiVitA-4     BANGLADESH                     0               0      568    4747
24 months   JiVitA-4     BANGLADESH                     0               1      496    4747
24 months   LCNI-5       MALAWI                         1               0        1     572
24 months   LCNI-5       MALAWI                         1               1        1     572
24 months   LCNI-5       MALAWI                         0               0      317     572
24 months   LCNI-5       MALAWI                         0               1      253     572
24 months   MAL-ED       BANGLADESH                     1               0       95     212
24 months   MAL-ED       BANGLADESH                     1               1       86     212
24 months   MAL-ED       BANGLADESH                     0               0       16     212
24 months   MAL-ED       BANGLADESH                     0               1       15     212
24 months   MAL-ED       BRAZIL                         1               0      159     169
24 months   MAL-ED       BRAZIL                         1               1        7     169
24 months   MAL-ED       BRAZIL                         0               0        3     169
24 months   MAL-ED       BRAZIL                         0               1        0     169
24 months   MAL-ED       INDIA                          1               0       67     225
24 months   MAL-ED       INDIA                          1               1       37     225
24 months   MAL-ED       INDIA                          0               0       63     225
24 months   MAL-ED       INDIA                          0               1       58     225
24 months   MAL-ED       NEPAL                          1               0      177     228
24 months   MAL-ED       NEPAL                          1               1       50     228
24 months   MAL-ED       NEPAL                          0               0        1     228
24 months   MAL-ED       NEPAL                          0               1        0     228
24 months   MAL-ED       PERU                           1               0       31     196
24 months   MAL-ED       PERU                           1               1       16     196
24 months   MAL-ED       PERU                           0               0       93     196
24 months   MAL-ED       PERU                           0               1       56     196
24 months   MAL-ED       SOUTH AFRICA                   1               0        3     235
24 months   MAL-ED       SOUTH AFRICA                   1               1        1     235
24 months   MAL-ED       SOUTH AFRICA                   0               0      149     235
24 months   MAL-ED       SOUTH AFRICA                   0               1       82     235
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     207
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     207
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0       56     207
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1      151     207
24 months   NIH-Birth    BANGLADESH                     1               0       83     429
24 months   NIH-Birth    BANGLADESH                     1               1       87     429
24 months   NIH-Birth    BANGLADESH                     0               0      102     429
24 months   NIH-Birth    BANGLADESH                     0               1      157     429
24 months   NIH-Crypto   BANGLADESH                     1               0      321     503
24 months   NIH-Crypto   BANGLADESH                     1               1      112     503
24 months   NIH-Crypto   BANGLADESH                     0               0       53     503
24 months   NIH-Crypto   BANGLADESH                     0               1       17     503
24 months   PROVIDE      BANGLADESH                     1               0        5       9
24 months   PROVIDE      BANGLADESH                     1               1        4       9
24 months   PROVIDE      BANGLADESH                     0               0        0       9
24 months   PROVIDE      BANGLADESH                     0               1        0       9


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/2b23a989-3478-45dc-9491-a91f8f7fb063/ef8bddb2-5b88-4aaf-9a75-b0855d637635/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2b23a989-3478-45dc-9491-a91f8f7fb063/ef8bddb2-5b88-4aaf-9a75-b0855d637635/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2b23a989-3478-45dc-9491-a91f8f7fb063/ef8bddb2-5b88-4aaf-9a75-b0855d637635/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2b23a989-3478-45dc-9491-a91f8f7fb063/ef8bddb2-5b88-4aaf-9a75-b0855d637635/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS      INDIA         1                    NA                0.1070754   0.0910452   0.1231055
Birth       COHORTS      INDIA         0                    NA                0.1232732   0.1113547   0.1351917
Birth       JiVitA-3     BANGLADESH    1                    NA                0.3232362   0.3139383   0.3325342
Birth       JiVitA-3     BANGLADESH    0                    NA                0.3326435   0.3175389   0.3477481
Birth       JiVitA-4     BANGLADESH    1                    NA                0.2961943   0.2732924   0.3190961
Birth       JiVitA-4     BANGLADESH    0                    NA                0.3391711   0.2905612   0.3877810
Birth       MAL-ED       BANGLADESH    1                    NA                0.1787709   0.1225078   0.2350341
Birth       MAL-ED       BANGLADESH    0                    NA                0.1470588   0.0277327   0.2663850
Birth       MAL-ED       PERU          1                    NA                0.1538462   0.0555445   0.2521478
Birth       MAL-ED       PERU          0                    NA                0.1025641   0.0548407   0.1502875
Birth       NIH-Birth    BANGLADESH    1                    NA                0.1647040   0.1157274   0.2136805
Birth       NIH-Birth    BANGLADESH    0                    NA                0.1559567   0.1189246   0.1929888
Birth       NIH-Crypto   BANGLADESH    1                    NA                0.1299645   0.1037373   0.1561917
Birth       NIH-Crypto   BANGLADESH    0                    NA                0.2089801   0.1249772   0.2929830
6 months    COHORTS      GUATEMALA     1                    NA                0.4203999   0.2947582   0.5460416
6 months    COHORTS      GUATEMALA     0                    NA                0.4412212   0.4010653   0.4813772
6 months    COHORTS      INDIA         1                    NA                0.1557043   0.1362941   0.1751144
6 months    COHORTS      INDIA         0                    NA                0.2186089   0.2039869   0.2332309
6 months    COHORTS      PHILIPPINES   1                    NA                0.0779593   0.0337211   0.1221975
6 months    COHORTS      PHILIPPINES   0                    NA                0.2360631   0.2088973   0.2632289
6 months    JiVitA-3     BANGLADESH    1                    NA                0.2446183   0.2347245   0.2545122
6 months    JiVitA-3     BANGLADESH    0                    NA                0.2600251   0.2442240   0.2758261
6 months    JiVitA-4     BANGLADESH    1                    NA                0.2487755   0.2320541   0.2654969
6 months    JiVitA-4     BANGLADESH    0                    NA                0.2629638   0.2251659   0.3007616
6 months    MAL-ED       BANGLADESH    1                    NA                0.1930693   0.1385244   0.2476142
6 months    MAL-ED       BANGLADESH    0                    NA                0.1315789   0.0238775   0.2392803
6 months    MAL-ED       INDIA         1                    NA                0.1566857   0.0876748   0.2256967
6 months    MAL-ED       INDIA         0                    NA                0.2117632   0.1392163   0.2843102
6 months    MAL-ED       PERU          1                    NA                0.2735315   0.1611848   0.3858781
6 months    MAL-ED       PERU          0                    NA                0.1986307   0.1428096   0.2544517
6 months    NIH-Birth    BANGLADESH    1                    NA                0.2672358   0.2051784   0.3292933
6 months    NIH-Birth    BANGLADESH    0                    NA                0.2689502   0.2216526   0.3162477
6 months    NIH-Crypto   BANGLADESH    1                    NA                0.2149741   0.1825275   0.2474206
6 months    NIH-Crypto   BANGLADESH    0                    NA                0.1873605   0.1063780   0.2683430
24 months   COHORTS      GUATEMALA     1                    NA                0.7539571   0.6478587   0.8600554
24 months   COHORTS      GUATEMALA     0                    NA                0.8160746   0.7893132   0.8428361
24 months   COHORTS      INDIA         1                    NA                0.4970811   0.4705761   0.5235861
24 months   COHORTS      INDIA         0                    NA                0.6193388   0.5992237   0.6394540
24 months   COHORTS      PHILIPPINES   1                    NA                0.4981137   0.3930835   0.6031439
24 months   COHORTS      PHILIPPINES   0                    NA                0.7204480   0.6900801   0.7508159
24 months   JiVitA-3     BANGLADESH    1                    NA                0.4792271   0.4635674   0.4948869
24 months   JiVitA-3     BANGLADESH    0                    NA                0.5145854   0.4862491   0.5429217
24 months   JiVitA-4     BANGLADESH    1                    NA                0.3957093   0.3755196   0.4158990
24 months   JiVitA-4     BANGLADESH    0                    NA                0.4269068   0.3859562   0.4678574
24 months   MAL-ED       BANGLADESH    1                    NA                0.4768514   0.4045977   0.5491051
24 months   MAL-ED       BANGLADESH    0                    NA                0.5272704   0.3464208   0.7081200
24 months   MAL-ED       INDIA         1                    NA                0.3642538   0.2723908   0.4561169
24 months   MAL-ED       INDIA         0                    NA                0.4774808   0.3892872   0.5656743
24 months   MAL-ED       PERU          1                    NA                0.3520312   0.2158347   0.4882278
24 months   MAL-ED       PERU          0                    NA                0.3760228   0.2977278   0.4543177
24 months   NIH-Birth    BANGLADESH    1                    NA                0.5511979   0.4781884   0.6242074
24 months   NIH-Birth    BANGLADESH    0                    NA                0.5780598   0.5193540   0.6367656
24 months   NIH-Crypto   BANGLADESH    1                    NA                0.2593396   0.2180044   0.3006749
24 months   NIH-Crypto   BANGLADESH    0                    NA                0.2491426   0.1457249   0.3525604


### Parameter: E(Y)


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS      INDIA         NA                   NA                0.1182998   0.1091394   0.1274602
Birth       JiVitA-3     BANGLADESH    NA                   NA                0.3291427   0.3217640   0.3365214
Birth       JiVitA-4     BANGLADESH    NA                   NA                0.3035461   0.2835868   0.3235054
Birth       MAL-ED       BANGLADESH    NA                   NA                0.1737089   0.1227104   0.2247075
Birth       MAL-ED       PERU          NA                   NA                0.1153846   0.0718621   0.1589071
Birth       NIH-Birth    BANGLADESH    NA                   NA                0.1595395   0.1304091   0.1886699
Birth       NIH-Crypto   BANGLADESH    NA                   NA                0.1386963   0.1134503   0.1639422
6 months    COHORTS      GUATEMALA     NA                   NA                0.4392097   0.4012606   0.4771588
6 months    COHORTS      INDIA         NA                   NA                0.1957353   0.1847045   0.2067660
6 months    COHORTS      PHILIPPINES   NA                   NA                0.2151431   0.1906585   0.2396277
6 months    JiVitA-3     BANGLADESH    NA                   NA                0.2514286   0.2432891   0.2595681
6 months    JiVitA-4     BANGLADESH    NA                   NA                0.2524352   0.2383740   0.2664965
6 months    MAL-ED       BANGLADESH    NA                   NA                0.1833333   0.1342773   0.2323893
6 months    MAL-ED       INDIA         NA                   NA                0.1888412   0.1384789   0.2392035
6 months    MAL-ED       PERU          NA                   NA                0.2167300   0.1668401   0.2666199
6 months    NIH-Birth    BANGLADESH    NA                   NA                0.2681564   0.2306532   0.3056597
6 months    NIH-Crypto   BANGLADESH    NA                   NA                0.2102273   0.1801065   0.2403480
24 months   COHORTS      GUATEMALA     NA                   NA                0.8152296   0.7897600   0.8406991
24 months   COHORTS      INDIA         NA                   NA                0.5667822   0.5509225   0.5826418
24 months   COHORTS      PHILIPPINES   NA                   NA                0.6888889   0.6600365   0.7177413
24 months   JiVitA-3     BANGLADESH    NA                   NA                0.4911853   0.4780778   0.5042929
24 months   JiVitA-4     BANGLADESH    NA                   NA                0.4008848   0.3839144   0.4178552
24 months   MAL-ED       BANGLADESH    NA                   NA                0.4764151   0.4090254   0.5438047
24 months   MAL-ED       INDIA         NA                   NA                0.4222222   0.3575415   0.4869030
24 months   MAL-ED       PERU          NA                   NA                0.3673469   0.2996839   0.4350100
24 months   NIH-Birth    BANGLADESH    NA                   NA                0.5687646   0.5218455   0.6156837
24 months   NIH-Crypto   BANGLADESH    NA                   NA                0.2564612   0.2182616   0.2946608


### Parameter: RR


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ---------
Birth       COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
Birth       COHORTS      INDIA         0                    1                 1.1512749   0.9636654   1.375409
Birth       JiVitA-3     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3     BANGLADESH    0                    1                 1.0291034   0.9775619   1.083363
Birth       JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4     BANGLADESH    0                    1                 1.1450968   0.9735085   1.346929
Birth       MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       MAL-ED       BANGLADESH    0                    1                 0.8226103   0.3445252   1.964117
Birth       MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
Birth       MAL-ED       PERU          0                    1                 0.6666667   0.3024334   1.469562
Birth       NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       NIH-Birth    BANGLADESH    0                    1                 0.9468910   0.6476807   1.384328
Birth       NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       NIH-Crypto   BANGLADESH    0                    1                 1.6079786   1.0258908   2.520341
6 months    COHORTS      GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
6 months    COHORTS      GUATEMALA     0                    1                 1.0495275   0.7697615   1.430973
6 months    COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
6 months    COHORTS      INDIA         0                    1                 1.4040004   1.2198879   1.615900
6 months    COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
6 months    COHORTS      PHILIPPINES   0                    1                 3.0280313   1.6969382   5.403245
6 months    JiVitA-3     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3     BANGLADESH    0                    1                 1.0629828   0.9930685   1.137819
6 months    JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4     BANGLADESH    0                    1                 1.0570325   0.8992922   1.242441
6 months    MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    MAL-ED       BANGLADESH    0                    1                 0.6815115   0.2866894   1.620074
6 months    MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6 months    MAL-ED       INDIA         0                    1                 1.3515157   0.7726802   2.363972
6 months    MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
6 months    MAL-ED       PERU          0                    1                 0.7261711   0.4424376   1.191862
6 months    NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    NIH-Birth    BANGLADESH    0                    1                 1.0064152   0.7562282   1.339373
6 months    NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    NIH-Crypto   BANGLADESH    0                    1                 0.8715492   0.5519775   1.376139
24 months   COHORTS      GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
24 months   COHORTS      GUATEMALA     0                    1                 1.0823888   0.9373035   1.249932
24 months   COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
24 months   COHORTS      INDIA         0                    1                 1.2459512   1.1726008   1.323890
24 months   COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
24 months   COHORTS      PHILIPPINES   0                    1                 1.4463526   1.1677771   1.791383
24 months   JiVitA-3     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3     BANGLADESH    0                    1                 1.0737818   1.0113169   1.140105
24 months   JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4     BANGLADESH    0                    1                 1.0788395   0.9676749   1.202775
24 months   MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED       BANGLADESH    0                    1                 1.1057332   0.7623378   1.603811
24 months   MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED       INDIA         0                    1                 1.3108462   0.9618125   1.786541
24 months   MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED       PERU          0                    1                 1.0681517   0.6923960   1.647826
24 months   NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   NIH-Birth    BANGLADESH    0                    1                 1.0487336   0.8918857   1.233165
24 months   NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   NIH-Crypto   BANGLADESH    0                    1                 0.9606810   0.6159623   1.498319


### Parameter: PAR


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS      INDIA         1                    NA                 0.0112245   -0.0024910   0.0249400
Birth       JiVitA-3     BANGLADESH    1                    NA                 0.0059065    0.0005242   0.0112887
Birth       JiVitA-4     BANGLADESH    1                    NA                 0.0073518   -0.0039628   0.0186665
Birth       MAL-ED       BANGLADESH    1                    NA                -0.0050620   -0.0261785   0.0160544
Birth       MAL-ED       PERU          1                    NA                -0.0384615   -0.1204726   0.0435496
Birth       NIH-Birth    BANGLADESH    1                    NA                -0.0051645   -0.0437946   0.0334656
Birth       NIH-Crypto   BANGLADESH    1                    NA                 0.0087318   -0.0021914   0.0196549
6 months    COHORTS      GUATEMALA     1                    NA                 0.0188098   -0.1011045   0.1387242
6 months    COHORTS      INDIA         1                    NA                 0.0400310    0.0228627   0.0571993
6 months    COHORTS      PHILIPPINES   1                    NA                 0.1371839    0.0919497   0.1824181
6 months    JiVitA-3     BANGLADESH    1                    NA                 0.0068103    0.0016574   0.0119631
6 months    JiVitA-4     BANGLADESH    1                    NA                 0.0036598   -0.0053164   0.0126359
6 months    MAL-ED       BANGLADESH    1                    NA                -0.0097360   -0.0290616   0.0095896
6 months    MAL-ED       INDIA         1                    NA                 0.0321555   -0.0216106   0.0859215
6 months    MAL-ED       PERU          1                    NA                -0.0568014   -0.1522663   0.0386635
6 months    NIH-Birth    BANGLADESH    1                    NA                 0.0009206   -0.0486420   0.0504832
6 months    NIH-Crypto   BANGLADESH    1                    NA                -0.0047468   -0.0156050   0.0061114
24 months   COHORTS      GUATEMALA     1                    NA                 0.0612725   -0.0405305   0.1630755
24 months   COHORTS      INDIA         1                    NA                 0.0697011    0.0487308   0.0906714
24 months   COHORTS      PHILIPPINES   1                    NA                 0.1907752    0.0909243   0.2906262
24 months   JiVitA-3     BANGLADESH    1                    NA                 0.0119582    0.0036350   0.0202814
24 months   JiVitA-4     BANGLADESH    1                    NA                 0.0051755   -0.0042598   0.0146107
24 months   MAL-ED       BANGLADESH    1                    NA                -0.0004363   -0.0274825   0.0266099
24 months   MAL-ED       INDIA         1                    NA                 0.0579684   -0.0098416   0.1257783
24 months   MAL-ED       PERU          1                    NA                 0.0153157   -0.1039918   0.1346232
24 months   NIH-Birth    BANGLADESH    1                    NA                 0.0175666   -0.0375768   0.0727101
24 months   NIH-Crypto   BANGLADESH    1                    NA                -0.0028784   -0.0180512   0.0122944


### Parameter: PAF


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS      INDIA         1                    NA                 0.0948816   -0.0285738   0.2035191
Birth       JiVitA-3     BANGLADESH    1                    NA                 0.0179450    0.0014352   0.0341818
Birth       JiVitA-4     BANGLADESH    1                    NA                 0.0242198   -0.0138046   0.0608181
Birth       MAL-ED       BANGLADESH    1                    NA                -0.0291409   -0.1579815   0.0853646
Birth       MAL-ED       PERU          1                    NA                -0.3333333   -1.2598233   0.2133112
Birth       NIH-Birth    BANGLADESH    1                    NA                -0.0323712   -0.3051573   0.1834009
Birth       NIH-Crypto   BANGLADESH    1                    NA                 0.0629561   -0.0185539   0.1379432
6 months    COHORTS      GUATEMALA     1                    NA                 0.0428265   -0.2731320   0.2803723
6 months    COHORTS      INDIA         1                    NA                 0.2045160    0.1122894   0.2871608
6 months    COHORTS      PHILIPPINES   1                    NA                 0.6376400    0.3707833   0.7913203
6 months    JiVitA-3     BANGLADESH    1                    NA                 0.0270862    0.0063011   0.0474366
6 months    JiVitA-4     BANGLADESH    1                    NA                 0.0144978   -0.0217236   0.0494352
6 months    MAL-ED       BANGLADESH    1                    NA                -0.0531053   -0.1634147   0.0467451
6 months    MAL-ED       INDIA         1                    NA                 0.1702778   -0.1666319   0.4098919
6 months    MAL-ED       PERU          1                    NA                -0.2620837   -0.7859079   0.1080977
6 months    NIH-Birth    BANGLADESH    1                    NA                 0.0034331   -0.1996431   0.1721324
6 months    NIH-Crypto   BANGLADESH    1                    NA                -0.0225793   -0.0755186   0.0277541
24 months   COHORTS      GUATEMALA     1                    NA                 0.0751598   -0.0586919   0.1920885
24 months   COHORTS      INDIA         1                    NA                 0.1229768    0.0849595   0.1594147
24 months   COHORTS      PHILIPPINES   1                    NA                 0.2769318    0.1153111   0.4090266
24 months   JiVitA-3     BANGLADESH    1                    NA                 0.0243456    0.0072273   0.0411687
24 months   JiVitA-4     BANGLADESH    1                    NA                 0.0129101   -0.0109687   0.0362249
24 months   MAL-ED       BANGLADESH    1                    NA                -0.0009158   -0.0593289   0.0542763
24 months   MAL-ED       INDIA         1                    NA                 0.1372935   -0.0398979   0.2842927
24 months   MAL-ED       PERU          1                    NA                 0.0416927   -0.3448588   0.3171381
24 months   NIH-Birth    BANGLADESH    1                    NA                 0.0308856   -0.0711680   0.1232162
24 months   NIH-Crypto   BANGLADESH    1                    NA                -0.0112234   -0.0721462   0.0462375

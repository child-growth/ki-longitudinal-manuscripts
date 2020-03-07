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

agecat      studyid          country                        exclfeed36    stunted   n_cell       n
----------  ---------------  -----------------------------  -----------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                   0        3       3
Birth       CMC-V-BCS-2002   INDIA                          1                   1        0       3
Birth       CMC-V-BCS-2002   INDIA                          0                   0        0       3
Birth       CMC-V-BCS-2002   INDIA                          0                   1        0       3
Birth       EE               PAKISTAN                       1                   0        2       7
Birth       EE               PAKISTAN                       1                   1        1       7
Birth       EE               PAKISTAN                       0                   0        3       7
Birth       EE               PAKISTAN                       0                   1        1       7
Birth       GMS-Nepal        NEPAL                          1                   0      356     526
Birth       GMS-Nepal        NEPAL                          1                   1       66     526
Birth       GMS-Nepal        NEPAL                          0                   0       85     526
Birth       GMS-Nepal        NEPAL                          0                   1       19     526
Birth       IRC              INDIA                          1                   0        0       4
Birth       IRC              INDIA                          1                   1        0       4
Birth       IRC              INDIA                          0                   0        3       4
Birth       IRC              INDIA                          0                   1        1       4
Birth       JiVitA-3         BANGLADESH                     1                   0     5638   10681
Birth       JiVitA-3         BANGLADESH                     1                   1     2684   10681
Birth       JiVitA-3         BANGLADESH                     0                   0     1588   10681
Birth       JiVitA-3         BANGLADESH                     0                   1      771   10681
Birth       JiVitA-4         BANGLADESH                     1                   0     1406    2517
Birth       JiVitA-4         BANGLADESH                     1                   1      588    2517
Birth       JiVitA-4         BANGLADESH                     0                   0      350    2517
Birth       JiVitA-4         BANGLADESH                     0                   1      173    2517
Birth       Keneba           GAMBIA                         1                   0      347    1253
Birth       Keneba           GAMBIA                         1                   1       16    1253
Birth       Keneba           GAMBIA                         0                   0      839    1253
Birth       Keneba           GAMBIA                         0                   1       51    1253
Birth       MAL-ED           BANGLADESH                     1                   0       28     221
Birth       MAL-ED           BANGLADESH                     1                   1        4     221
Birth       MAL-ED           BANGLADESH                     0                   0      153     221
Birth       MAL-ED           BANGLADESH                     0                   1       36     221
Birth       MAL-ED           BRAZIL                         1                   0        3      65
Birth       MAL-ED           BRAZIL                         1                   1        2      65
Birth       MAL-ED           BRAZIL                         0                   0       53      65
Birth       MAL-ED           BRAZIL                         0                   1        7      65
Birth       MAL-ED           INDIA                          1                   0        0      42
Birth       MAL-ED           INDIA                          1                   1        1      42
Birth       MAL-ED           INDIA                          0                   0       33      42
Birth       MAL-ED           INDIA                          0                   1        8      42
Birth       MAL-ED           NEPAL                          1                   0        0      26
Birth       MAL-ED           NEPAL                          1                   1        0      26
Birth       MAL-ED           NEPAL                          0                   0       24      26
Birth       MAL-ED           NEPAL                          0                   1        2      26
Birth       MAL-ED           PERU                           1                   0        5     223
Birth       MAL-ED           PERU                           1                   1        0     223
Birth       MAL-ED           PERU                           0                   0      192     223
Birth       MAL-ED           PERU                           0                   1       26     223
Birth       MAL-ED           SOUTH AFRICA                   1                   0        1     105
Birth       MAL-ED           SOUTH AFRICA                   1                   1        0     105
Birth       MAL-ED           SOUTH AFRICA                   0                   0       95     105
Birth       MAL-ED           SOUTH AFRICA                   0                   1        9     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        0     119
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     119
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0       98     119
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1       21     119
Birth       PROVIDE          BANGLADESH                     1                   0      111     490
Birth       PROVIDE          BANGLADESH                     1                   1        8     490
Birth       PROVIDE          BANGLADESH                     0                   0      335     490
Birth       PROVIDE          BANGLADESH                     0                   1       36     490
6 months    CMC-V-BCS-2002   INDIA                          1                   0        5       9
6 months    CMC-V-BCS-2002   INDIA                          1                   1        4       9
6 months    CMC-V-BCS-2002   INDIA                          0                   0        0       9
6 months    CMC-V-BCS-2002   INDIA                          0                   1        0       9
6 months    EE               PAKISTAN                       1                   0        3       9
6 months    EE               PAKISTAN                       1                   1        1       9
6 months    EE               PAKISTAN                       0                   0        4       9
6 months    EE               PAKISTAN                       0                   1        1       9
6 months    GMS-Nepal        NEPAL                          1                   0      339     527
6 months    GMS-Nepal        NEPAL                          1                   1       83     527
6 months    GMS-Nepal        NEPAL                          0                   0       76     527
6 months    GMS-Nepal        NEPAL                          0                   1       29     527
6 months    IRC              INDIA                          1                   0        0       4
6 months    IRC              INDIA                          1                   1        0       4
6 months    IRC              INDIA                          0                   0        3       4
6 months    IRC              INDIA                          0                   1        1       4
6 months    JiVitA-3         BANGLADESH                     1                   0     4971    8552
6 months    JiVitA-3         BANGLADESH                     1                   1     1607    8552
6 months    JiVitA-3         BANGLADESH                     0                   0     1467    8552
6 months    JiVitA-3         BANGLADESH                     0                   1      507    8552
6 months    JiVitA-4         BANGLADESH                     1                   0     2471    4185
6 months    JiVitA-4         BANGLADESH                     1                   1      770    4185
6 months    JiVitA-4         BANGLADESH                     0                   0      657    4185
6 months    JiVitA-4         BANGLADESH                     0                   1      287    4185
6 months    Keneba           GAMBIA                         1                   0      435    1790
6 months    Keneba           GAMBIA                         1                   1       72    1790
6 months    Keneba           GAMBIA                         0                   0     1091    1790
6 months    Keneba           GAMBIA                         0                   1      192    1790
6 months    LCNI-5           MALAWI                         1                   0       30     272
6 months    LCNI-5           MALAWI                         1                   1       17     272
6 months    LCNI-5           MALAWI                         0                   0      145     272
6 months    LCNI-5           MALAWI                         0                   1       80     272
6 months    MAL-ED           BANGLADESH                     1                   0       24     240
6 months    MAL-ED           BANGLADESH                     1                   1        6     240
6 months    MAL-ED           BANGLADESH                     0                   0      172     240
6 months    MAL-ED           BANGLADESH                     0                   1       38     240
6 months    MAL-ED           BRAZIL                         1                   0       12     209
6 months    MAL-ED           BRAZIL                         1                   1        0     209
6 months    MAL-ED           BRAZIL                         0                   0      191     209
6 months    MAL-ED           BRAZIL                         0                   1        6     209
6 months    MAL-ED           INDIA                          1                   0        8     233
6 months    MAL-ED           INDIA                          1                   1        1     233
6 months    MAL-ED           INDIA                          0                   0      181     233
6 months    MAL-ED           INDIA                          0                   1       43     233
6 months    MAL-ED           NEPAL                          1                   0        4     235
6 months    MAL-ED           NEPAL                          1                   1        0     235
6 months    MAL-ED           NEPAL                          0                   0      219     235
6 months    MAL-ED           NEPAL                          0                   1       12     235
6 months    MAL-ED           PERU                           1                   0        4     272
6 months    MAL-ED           PERU                           1                   1        2     272
6 months    MAL-ED           PERU                           0                   0      208     272
6 months    MAL-ED           PERU                           0                   1       58     272
6 months    MAL-ED           SOUTH AFRICA                   1                   0        1     250
6 months    MAL-ED           SOUTH AFRICA                   1                   1        0     250
6 months    MAL-ED           SOUTH AFRICA                   0                   0      201     250
6 months    MAL-ED           SOUTH AFRICA                   0                   1       48     250
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        3     243
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        1     243
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      181     243
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1       58     243
6 months    PROVIDE          BANGLADESH                     1                   0      126     603
6 months    PROVIDE          BANGLADESH                     1                   1       19     603
6 months    PROVIDE          BANGLADESH                     0                   0      382     603
6 months    PROVIDE          BANGLADESH                     0                   1       76     603
6 months    SAS-FoodSuppl    INDIA                          1                   0        0     168
6 months    SAS-FoodSuppl    INDIA                          1                   1        0     168
6 months    SAS-FoodSuppl    INDIA                          0                   0       87     168
6 months    SAS-FoodSuppl    INDIA                          0                   1       81     168
24 months   CMC-V-BCS-2002   INDIA                          1                   0        4       9
24 months   CMC-V-BCS-2002   INDIA                          1                   1        5       9
24 months   CMC-V-BCS-2002   INDIA                          0                   0        0       9
24 months   CMC-V-BCS-2002   INDIA                          0                   1        0       9
24 months   EE               PAKISTAN                       1                   0        0       3
24 months   EE               PAKISTAN                       1                   1        0       3
24 months   EE               PAKISTAN                       0                   0        2       3
24 months   EE               PAKISTAN                       0                   1        1       3
24 months   GMS-Nepal        NEPAL                          1                   0      208     446
24 months   GMS-Nepal        NEPAL                          1                   1      155     446
24 months   GMS-Nepal        NEPAL                          0                   0       40     446
24 months   GMS-Nepal        NEPAL                          0                   1       43     446
24 months   IRC              INDIA                          1                   0        0       4
24 months   IRC              INDIA                          1                   1        0       4
24 months   IRC              INDIA                          0                   0        1       4
24 months   IRC              INDIA                          0                   1        3       4
24 months   JiVitA-3         BANGLADESH                     1                   0     1703    4334
24 months   JiVitA-3         BANGLADESH                     1                   1     1622    4334
24 months   JiVitA-3         BANGLADESH                     0                   0      509    4334
24 months   JiVitA-3         BANGLADESH                     0                   1      500    4334
24 months   JiVitA-4         BANGLADESH                     1                   0     1900    4049
24 months   JiVitA-4         BANGLADESH                     1                   1     1245    4049
24 months   JiVitA-4         BANGLADESH                     0                   0      508    4049
24 months   JiVitA-4         BANGLADESH                     0                   1      396    4049
24 months   Keneba           GAMBIA                         1                   0      297    1394
24 months   Keneba           GAMBIA                         1                   1      127    1394
24 months   Keneba           GAMBIA                         0                   0      620    1394
24 months   Keneba           GAMBIA                         0                   1      350    1394
24 months   LCNI-5           MALAWI                         1                   0       17     189
24 months   LCNI-5           MALAWI                         1                   1       17     189
24 months   LCNI-5           MALAWI                         0                   0       80     189
24 months   LCNI-5           MALAWI                         0                   1       75     189
24 months   MAL-ED           BANGLADESH                     1                   0       12     212
24 months   MAL-ED           BANGLADESH                     1                   1       13     212
24 months   MAL-ED           BANGLADESH                     0                   0       99     212
24 months   MAL-ED           BANGLADESH                     0                   1       88     212
24 months   MAL-ED           BRAZIL                         1                   0       11     169
24 months   MAL-ED           BRAZIL                         1                   1        0     169
24 months   MAL-ED           BRAZIL                         0                   0      151     169
24 months   MAL-ED           BRAZIL                         0                   1        7     169
24 months   MAL-ED           INDIA                          1                   0        4     224
24 months   MAL-ED           INDIA                          1                   1        5     224
24 months   MAL-ED           INDIA                          0                   0      124     224
24 months   MAL-ED           INDIA                          0                   1       91     224
24 months   MAL-ED           NEPAL                          1                   0        4     227
24 months   MAL-ED           NEPAL                          1                   1        0     227
24 months   MAL-ED           NEPAL                          0                   0      173     227
24 months   MAL-ED           NEPAL                          0                   1       50     227
24 months   MAL-ED           PERU                           1                   0        2     201
24 months   MAL-ED           PERU                           1                   1        2     201
24 months   MAL-ED           PERU                           0                   0      125     201
24 months   MAL-ED           PERU                           0                   1       72     201
24 months   MAL-ED           SOUTH AFRICA                   1                   0        1     235
24 months   MAL-ED           SOUTH AFRICA                   1                   1        0     235
24 months   MAL-ED           SOUTH AFRICA                   0                   0      152     235
24 months   MAL-ED           SOUTH AFRICA                   0                   1       82     235
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        1     213
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        2     213
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0       58     213
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1      152     213
24 months   PROVIDE          BANGLADESH                     1                   0       91     577
24 months   PROVIDE          BANGLADESH                     1                   1       50     577
24 months   PROVIDE          BANGLADESH                     0                   0      296     577
24 months   PROVIDE          BANGLADESH                     0                   1      140     577


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
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/5aa28ac6-5d2c-4403-922b-765382203234/52c9cfa2-b3be-4264-8c2e-016a25691590/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5aa28ac6-5d2c-4403-922b-765382203234/52c9cfa2-b3be-4264-8c2e-016a25691590/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5aa28ac6-5d2c-4403-922b-765382203234/52c9cfa2-b3be-4264-8c2e-016a25691590/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5aa28ac6-5d2c-4403-922b-765382203234/52c9cfa2-b3be-4264-8c2e-016a25691590/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                0.1562334   0.1215665   0.1909002
Birth       GMS-Nepal   NEPAL        0                    NA                0.1840102   0.1085191   0.2595013
Birth       JiVitA-3    BANGLADESH   1                    NA                0.3233557   0.3129636   0.3337478
Birth       JiVitA-3    BANGLADESH   0                    NA                0.3239711   0.3130725   0.3348696
Birth       JiVitA-4    BANGLADESH   1                    NA                0.3030659   0.2809453   0.3251866
Birth       JiVitA-4    BANGLADESH   0                    NA                0.2994661   0.2744982   0.3244340
Birth       Keneba      GAMBIA       1                    NA                0.0441890   0.0228286   0.0655494
Birth       Keneba      GAMBIA       0                    NA                0.0574508   0.0420901   0.0728116
Birth       PROVIDE     BANGLADESH   1                    NA                0.0672269   0.0221890   0.1122648
Birth       PROVIDE     BANGLADESH   0                    NA                0.0970350   0.0668838   0.1271862
6 months    GMS-Nepal   NEPAL        1                    NA                0.1960536   0.1579921   0.2341150
6 months    GMS-Nepal   NEPAL        0                    NA                0.2759704   0.1904083   0.3615324
6 months    JiVitA-3    BANGLADESH   1                    NA                0.2447171   0.2332299   0.2562042
6 months    JiVitA-3    BANGLADESH   0                    NA                0.2549047   0.2358627   0.2739468
6 months    JiVitA-4    BANGLADESH   1                    NA                0.2440232   0.2278999   0.2601466
6 months    JiVitA-4    BANGLADESH   0                    NA                0.2832185   0.2507823   0.3156547
6 months    Keneba      GAMBIA       1                    NA                0.1377759   0.1074178   0.1681340
6 months    Keneba      GAMBIA       0                    NA                0.1509297   0.1315505   0.1703090
6 months    LCNI-5      MALAWI       1                    NA                0.3823347   0.2441190   0.5205504
6 months    LCNI-5      MALAWI       0                    NA                0.3563528   0.2937024   0.4190032
6 months    MAL-ED      BANGLADESH   1                    NA                0.2000000   0.0565653   0.3434347
6 months    MAL-ED      BANGLADESH   0                    NA                0.1809524   0.1287751   0.2331297
6 months    PROVIDE     BANGLADESH   1                    NA                0.1240072   0.0685368   0.1794776
6 months    PROVIDE     BANGLADESH   0                    NA                0.1670001   0.1328997   0.2011006
24 months   GMS-Nepal   NEPAL        1                    NA                0.4285968   0.3777641   0.4794295
24 months   GMS-Nepal   NEPAL        0                    NA                0.5197009   0.4144208   0.6249811
24 months   JiVitA-3    BANGLADESH   1                    NA                0.4865510   0.4664346   0.5066673
24 months   JiVitA-3    BANGLADESH   0                    NA                0.5004617   0.4654450   0.5354784
24 months   JiVitA-4    BANGLADESH   1                    NA                0.4009351   0.3807150   0.4211552
24 months   JiVitA-4    BANGLADESH   0                    NA                0.4189006   0.3823991   0.4554022
24 months   Keneba      GAMBIA       1                    NA                0.3021135   0.2590208   0.3452061
24 months   Keneba      GAMBIA       0                    NA                0.3595197   0.3296887   0.3893508
24 months   LCNI-5      MALAWI       1                    NA                0.4924246   0.3198172   0.6650320
24 months   LCNI-5      MALAWI       0                    NA                0.4830086   0.4039898   0.5620275
24 months   MAL-ED      BANGLADESH   1                    NA                0.5472572   0.2985931   0.7959212
24 months   MAL-ED      BANGLADESH   0                    NA                0.4688129   0.3967880   0.5408379
24 months   PROVIDE     BANGLADESH   1                    NA                0.3464369   0.2700907   0.4227831
24 months   PROVIDE     BANGLADESH   0                    NA                0.3239897   0.2803949   0.3675845


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        NA                   NA                0.1615970   0.1301114   0.1930825
Birth       JiVitA-3    BANGLADESH   NA                   NA                0.3234716   0.3131402   0.3338029
Birth       JiVitA-4    BANGLADESH   NA                   NA                0.3023441   0.2806174   0.3240708
Birth       Keneba      GAMBIA       NA                   NA                0.0534717   0.0410100   0.0659333
Birth       PROVIDE     BANGLADESH   NA                   NA                0.0897959   0.0644568   0.1151350
6 months    GMS-Nepal   NEPAL        NA                   NA                0.2125237   0.1775632   0.2474842
6 months    JiVitA-3    BANGLADESH   NA                   NA                0.2471936   0.2366536   0.2577336
6 months    JiVitA-4    BANGLADESH   NA                   NA                0.2525687   0.2374550   0.2676823
6 months    Keneba      GAMBIA       NA                   NA                0.1474860   0.1310548   0.1639172
6 months    LCNI-5      MALAWI       NA                   NA                0.3566176   0.2995882   0.4136471
6 months    MAL-ED      BANGLADESH   NA                   NA                0.1833333   0.1342773   0.2323893
6 months    PROVIDE     BANGLADESH   NA                   NA                0.1575456   0.1284434   0.1866478
24 months   GMS-Nepal   NEPAL        NA                   NA                0.4439462   0.3977834   0.4901089
24 months   JiVitA-3    BANGLADESH   NA                   NA                0.4896170   0.4715168   0.5077172
24 months   JiVitA-4    BANGLADESH   NA                   NA                0.4052853   0.3865623   0.4240082
24 months   Keneba      GAMBIA       NA                   NA                0.3421808   0.3172662   0.3670954
24 months   LCNI-5      MALAWI       NA                   NA                0.4867725   0.4153250   0.5582200
24 months   MAL-ED      BANGLADESH   NA                   NA                0.4764151   0.4090254   0.5438047
24 months   PROVIDE     BANGLADESH   NA                   NA                0.3292894   0.2909105   0.3676684


### Parameter: RR


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal   NEPAL        0                    1                 1.1777907   0.7391156   1.876825
Birth       JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3    BANGLADESH   0                    1                 1.0019032   0.9879740   1.016029
Birth       JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4    BANGLADESH   0                    1                 0.9881220   0.9354730   1.043734
Birth       Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       Keneba      GAMBIA       0                    1                 1.3001158   0.7479904   2.259790
Birth       PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       PROVIDE     BANGLADESH   0                    1                 1.4433962   0.6897053   3.020700
6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    GMS-Nepal   NEPAL        0                    1                 1.4076273   0.9759234   2.030297
6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3    BANGLADESH   0                    1                 1.0416304   0.9608074   1.129252
6 months    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4    BANGLADESH   0                    1                 1.1606209   1.0249947   1.314193
6 months    Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    Keneba      GAMBIA       0                    1                 1.0954728   0.8501616   1.411568
6 months    LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6 months    LCNI-5      MALAWI       0                    1                 0.9320443   0.6226054   1.395276
6 months    MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    MAL-ED      BANGLADESH   0                    1                 0.9047619   0.4176743   1.959886
6 months    PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    PROVIDE     BANGLADESH   0                    1                 1.3466974   0.8237312   2.201682
24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   GMS-Nepal   NEPAL        0                    1                 1.2125637   0.9606003   1.530617
24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3    BANGLADESH   0                    1                 1.0285905   0.9515593   1.111858
24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4    BANGLADESH   0                    1                 1.0448091   0.9513935   1.147397
24 months   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   Keneba      GAMBIA       0                    1                 1.1900156   1.0111554   1.400514
24 months   LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
24 months   LCNI-5      MALAWI       0                    1                 0.9808784   0.6663782   1.443808
24 months   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED      BANGLADESH   0                    1                 0.8566593   0.5303555   1.383723
24 months   PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   PROVIDE     BANGLADESH   0                    1                 0.9352056   0.7256709   1.205243


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                 0.0053636   -0.0108581   0.0215853
Birth       JiVitA-3    BANGLADESH   1                    NA                 0.0001159   -0.0008875   0.0011194
Birth       JiVitA-4    BANGLADESH   1                    NA                -0.0007219   -0.0039535   0.0025097
Birth       Keneba      GAMBIA       1                    NA                 0.0092827   -0.0094692   0.0280345
Birth       PROVIDE     BANGLADESH   1                    NA                 0.0225690   -0.0184828   0.0636209
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0164701   -0.0025054   0.0354457
6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0024766   -0.0022287   0.0071818
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.0085455    0.0009356   0.0161553
6 months    Keneba      GAMBIA       1                    NA                 0.0097101   -0.0160004   0.0354207
6 months    LCNI-5      MALAWI       1                    NA                -0.0257170   -0.1522386   0.1008046
6 months    MAL-ED      BANGLADESH   1                    NA                -0.0166667   -0.1502205   0.1168871
6 months    PROVIDE     BANGLADESH   1                    NA                 0.0335384   -0.0160304   0.0831073
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0153494   -0.0065068   0.0372055
24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0030660   -0.0059196   0.0120516
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0043502   -0.0043549   0.0130552
24 months   Keneba      GAMBIA       1                    NA                 0.0400673    0.0040189   0.0761157
24 months   LCNI-5      MALAWI       1                    NA                -0.0056521   -0.1620794   0.1507752
24 months   MAL-ED      BANGLADESH   1                    NA                -0.0708421   -0.3099664   0.1682822
24 months   PROVIDE     BANGLADESH   1                    NA                -0.0171475   -0.0825700   0.0482751


### Parameter: PAF


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                 0.0331912   -0.0724502   0.1284264
Birth       JiVitA-3    BANGLADESH   1                    NA                 0.0003584   -0.0027487   0.0034559
Birth       JiVitA-4    BANGLADESH   1                    NA                -0.0023876   -0.0131262   0.0082371
Birth       Keneba      GAMBIA       1                    NA                 0.1735994   -0.2600991   0.4580284
Birth       PROVIDE     BANGLADESH   1                    NA                 0.2513369   -0.3701009   0.5909086
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0774979   -0.0158400   0.1622597
6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0100187   -0.0091994   0.0288710
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.0338342    0.0033995   0.0633395
6 months    Keneba      GAMBIA       1                    NA                 0.0658377   -0.1259014   0.2249239
6 months    LCNI-5      MALAWI       1                    NA                -0.0721137   -0.4930813   0.2301639
6 months    MAL-ED      BANGLADESH   1                    NA                -0.0909091   -1.1267403   0.4404194
6 months    PROVIDE     BANGLADESH   1                    NA                 0.2128809   -0.1729710   0.4718058
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0345749   -0.0160252   0.0826550
24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0062621   -0.0122596   0.0244448
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0107336   -0.0109589   0.0319606
24 months   Keneba      GAMBIA       1                    NA                 0.1170939    0.0051517   0.2164403
24 months   LCNI-5      MALAWI       1                    NA                -0.0116114   -0.3898557   0.2636951
24 months   MAL-ED      BANGLADESH   1                    NA                -0.1486982   -0.7787302   0.2581744
24 months   PROVIDE     BANGLADESH   1                    NA                -0.0520741   -0.2707520   0.1289725

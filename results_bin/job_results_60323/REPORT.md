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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** predexfd6

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

agecat      studyid          country                        predexfd6    wasted   n_cell       n
----------  ---------------  -----------------------------  ----------  -------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                 0        7       7
Birth       CMC-V-BCS-2002   INDIA                          1                 1        0       7
Birth       CMC-V-BCS-2002   INDIA                          0                 0        0       7
Birth       CMC-V-BCS-2002   INDIA                          0                 1        0       7
Birth       EE               PAKISTAN                       1                 0       20      28
Birth       EE               PAKISTAN                       1                 1        4      28
Birth       EE               PAKISTAN                       0                 0        3      28
Birth       EE               PAKISTAN                       0                 1        1      28
Birth       GMS-Nepal        NEPAL                          1                 0      309     522
Birth       GMS-Nepal        NEPAL                          1                 1       81     522
Birth       GMS-Nepal        NEPAL                          0                 0      111     522
Birth       GMS-Nepal        NEPAL                          0                 1       21     522
Birth       IRC              INDIA                          1                 0        0      12
Birth       IRC              INDIA                          1                 1        0      12
Birth       IRC              INDIA                          0                 0        8      12
Birth       IRC              INDIA                          0                 1        4      12
Birth       JiVitA-3         BANGLADESH                     1                 0     7437   10744
Birth       JiVitA-3         BANGLADESH                     1                 1      955   10744
Birth       JiVitA-3         BANGLADESH                     0                 0     2112   10744
Birth       JiVitA-3         BANGLADESH                     0                 1      240   10744
Birth       JiVitA-4         BANGLADESH                     1                 0     1626    2224
Birth       JiVitA-4         BANGLADESH                     1                 1      176    2224
Birth       JiVitA-4         BANGLADESH                     0                 0      375    2224
Birth       JiVitA-4         BANGLADESH                     0                 1       47    2224
Birth       Keneba           GAMBIA                         1                 0      351    1327
Birth       Keneba           GAMBIA                         1                 1       99    1327
Birth       Keneba           GAMBIA                         0                 0      645    1327
Birth       Keneba           GAMBIA                         0                 1      232    1327
Birth       MAL-ED           BANGLADESH                     1                 0       58     194
Birth       MAL-ED           BANGLADESH                     1                 1       10     194
Birth       MAL-ED           BANGLADESH                     0                 0      102     194
Birth       MAL-ED           BANGLADESH                     0                 1       24     194
Birth       MAL-ED           BRAZIL                         1                 0        5      57
Birth       MAL-ED           BRAZIL                         1                 1        0      57
Birth       MAL-ED           BRAZIL                         0                 0       50      57
Birth       MAL-ED           BRAZIL                         0                 1        2      57
Birth       MAL-ED           INDIA                          1                 0        4      37
Birth       MAL-ED           INDIA                          1                 1        0      37
Birth       MAL-ED           INDIA                          0                 0       28      37
Birth       MAL-ED           INDIA                          0                 1        5      37
Birth       MAL-ED           NEPAL                          1                 0        3      23
Birth       MAL-ED           NEPAL                          1                 1        0      23
Birth       MAL-ED           NEPAL                          0                 0       19      23
Birth       MAL-ED           NEPAL                          0                 1        1      23
Birth       MAL-ED           PERU                           1                 0       71     208
Birth       MAL-ED           PERU                           1                 1        1     208
Birth       MAL-ED           PERU                           0                 0      132     208
Birth       MAL-ED           PERU                           0                 1        4     208
Birth       MAL-ED           SOUTH AFRICA                   1                 0        1      90
Birth       MAL-ED           SOUTH AFRICA                   1                 1        0      90
Birth       MAL-ED           SOUTH AFRICA                   0                 0       80      90
Birth       MAL-ED           SOUTH AFRICA                   0                 1        9      90
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0        0     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        0     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0      104     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        1     105
Birth       PROVIDE          BANGLADESH                     1                 0      116     532
Birth       PROVIDE          BANGLADESH                     1                 1       39     532
Birth       PROVIDE          BANGLADESH                     0                 0      299     532
Birth       PROVIDE          BANGLADESH                     0                 1       78     532
Birth       SAS-CompFeed     INDIA                          1                 0      283     325
Birth       SAS-CompFeed     INDIA                          1                 1       27     325
Birth       SAS-CompFeed     INDIA                          0                 0       14     325
Birth       SAS-CompFeed     INDIA                          0                 1        1     325
6 months    CMC-V-BCS-2002   INDIA                          1                 0       17      19
6 months    CMC-V-BCS-2002   INDIA                          1                 1        2      19
6 months    CMC-V-BCS-2002   INDIA                          0                 0        0      19
6 months    CMC-V-BCS-2002   INDIA                          0                 1        0      19
6 months    EE               PAKISTAN                       1                 0       39      48
6 months    EE               PAKISTAN                       1                 1        4      48
6 months    EE               PAKISTAN                       0                 0        5      48
6 months    EE               PAKISTAN                       0                 1        0      48
6 months    GMS-Nepal        NEPAL                          1                 0      370     547
6 months    GMS-Nepal        NEPAL                          1                 1       36     547
6 months    GMS-Nepal        NEPAL                          0                 0      127     547
6 months    GMS-Nepal        NEPAL                          0                 1       14     547
6 months    IRC              INDIA                          1                 0        0      14
6 months    IRC              INDIA                          1                 1        0      14
6 months    IRC              INDIA                          0                 0       11      14
6 months    IRC              INDIA                          0                 1        3      14
6 months    JiVitA-3         BANGLADESH                     1                 0     6962    9882
6 months    JiVitA-3         BANGLADESH                     1                 1      663    9882
6 months    JiVitA-3         BANGLADESH                     0                 0     2066    9882
6 months    JiVitA-3         BANGLADESH                     0                 1      191    9882
6 months    JiVitA-4         BANGLADESH                     1                 0     3164    4275
6 months    JiVitA-4         BANGLADESH                     1                 1      163    4275
6 months    JiVitA-4         BANGLADESH                     0                 0      870    4275
6 months    JiVitA-4         BANGLADESH                     0                 1       78    4275
6 months    Keneba           GAMBIA                         1                 0      562    1908
6 months    Keneba           GAMBIA                         1                 1       24    1908
6 months    Keneba           GAMBIA                         0                 0     1232    1908
6 months    Keneba           GAMBIA                         0                 1       90    1908
6 months    LCNI-5           MALAWI                         1                 0       47     272
6 months    LCNI-5           MALAWI                         1                 1        0     272
6 months    LCNI-5           MALAWI                         0                 0      221     272
6 months    LCNI-5           MALAWI                         0                 1        4     272
6 months    MAL-ED           BANGLADESH                     1                 0       80     231
6 months    MAL-ED           BANGLADESH                     1                 1        4     231
6 months    MAL-ED           BANGLADESH                     0                 0      143     231
6 months    MAL-ED           BANGLADESH                     0                 1        4     231
6 months    MAL-ED           BRAZIL                         1                 0       29     209
6 months    MAL-ED           BRAZIL                         1                 1        1     209
6 months    MAL-ED           BRAZIL                         0                 0      179     209
6 months    MAL-ED           BRAZIL                         0                 1        0     209
6 months    MAL-ED           INDIA                          1                 0       11     218
6 months    MAL-ED           INDIA                          1                 1        0     218
6 months    MAL-ED           INDIA                          0                 0      191     218
6 months    MAL-ED           INDIA                          0                 1       16     218
6 months    MAL-ED           NEPAL                          1                 0       12     225
6 months    MAL-ED           NEPAL                          1                 1        0     225
6 months    MAL-ED           NEPAL                          0                 0      209     225
6 months    MAL-ED           NEPAL                          0                 1        4     225
6 months    MAL-ED           PERU                           1                 0       92     271
6 months    MAL-ED           PERU                           1                 1        0     271
6 months    MAL-ED           PERU                           0                 0      179     271
6 months    MAL-ED           PERU                           0                 1        0     271
6 months    MAL-ED           SOUTH AFRICA                   1                 0        3     233
6 months    MAL-ED           SOUTH AFRICA                   1                 1        0     233
6 months    MAL-ED           SOUTH AFRICA                   0                 0      223     233
6 months    MAL-ED           SOUTH AFRICA                   0                 1        7     233
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0        1     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        0     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0      230     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        1     232
6 months    PROVIDE          BANGLADESH                     1                 0      138     603
6 months    PROVIDE          BANGLADESH                     1                 1        3     603
6 months    PROVIDE          BANGLADESH                     0                 0      440     603
6 months    PROVIDE          BANGLADESH                     0                 1       22     603
6 months    SAS-CompFeed     INDIA                          1                 0      330     395
6 months    SAS-CompFeed     INDIA                          1                 1       46     395
6 months    SAS-CompFeed     INDIA                          0                 0       17     395
6 months    SAS-CompFeed     INDIA                          0                 1        2     395
6 months    SAS-FoodSuppl    INDIA                          1                 0        0     168
6 months    SAS-FoodSuppl    INDIA                          1                 1        0     168
6 months    SAS-FoodSuppl    INDIA                          0                 0      127     168
6 months    SAS-FoodSuppl    INDIA                          0                 1       41     168
24 months   CMC-V-BCS-2002   INDIA                          1                 0       18      19
24 months   CMC-V-BCS-2002   INDIA                          1                 1        1      19
24 months   CMC-V-BCS-2002   INDIA                          0                 0        0      19
24 months   CMC-V-BCS-2002   INDIA                          0                 1        0      19
24 months   EE               PAKISTAN                       1                 0       17      23
24 months   EE               PAKISTAN                       1                 1        3      23
24 months   EE               PAKISTAN                       0                 0        3      23
24 months   EE               PAKISTAN                       0                 1        0      23
24 months   GMS-Nepal        NEPAL                          1                 0      294     469
24 months   GMS-Nepal        NEPAL                          1                 1       61     469
24 months   GMS-Nepal        NEPAL                          0                 0       85     469
24 months   GMS-Nepal        NEPAL                          0                 1       29     469
24 months   IRC              INDIA                          1                 0        0      14
24 months   IRC              INDIA                          1                 1        0      14
24 months   IRC              INDIA                          0                 0       14      14
24 months   IRC              INDIA                          0                 1        0      14
24 months   JiVitA-3         BANGLADESH                     1                 0     3046    5067
24 months   JiVitA-3         BANGLADESH                     1                 1      863    5067
24 months   JiVitA-3         BANGLADESH                     0                 0      909    5067
24 months   JiVitA-3         BANGLADESH                     0                 1      249    5067
24 months   JiVitA-4         BANGLADESH                     1                 0     2663    4184
24 months   JiVitA-4         BANGLADESH                     1                 1      615    4184
24 months   JiVitA-4         BANGLADESH                     0                 0      704    4184
24 months   JiVitA-4         BANGLADESH                     0                 1      202    4184
24 months   Keneba           GAMBIA                         1                 0      463    1514
24 months   Keneba           GAMBIA                         1                 1       51    1514
24 months   Keneba           GAMBIA                         0                 0      891    1514
24 months   Keneba           GAMBIA                         0                 1      109    1514
24 months   LCNI-5           MALAWI                         1                 0       33     184
24 months   LCNI-5           MALAWI                         1                 1        1     184
24 months   LCNI-5           MALAWI                         0                 0      147     184
24 months   LCNI-5           MALAWI                         0                 1        3     184
24 months   MAL-ED           BANGLADESH                     1                 0       69     205
24 months   MAL-ED           BANGLADESH                     1                 1        7     205
24 months   MAL-ED           BANGLADESH                     0                 0      116     205
24 months   MAL-ED           BANGLADESH                     0                 1       13     205
24 months   MAL-ED           BRAZIL                         1                 0       24     169
24 months   MAL-ED           BRAZIL                         1                 1        1     169
24 months   MAL-ED           BRAZIL                         0                 0      142     169
24 months   MAL-ED           BRAZIL                         0                 1        2     169
24 months   MAL-ED           INDIA                          1                 0       11     209
24 months   MAL-ED           INDIA                          1                 1        0     209
24 months   MAL-ED           INDIA                          0                 0      174     209
24 months   MAL-ED           INDIA                          0                 1       24     209
24 months   MAL-ED           NEPAL                          1                 0       12     219
24 months   MAL-ED           NEPAL                          1                 1        0     219
24 months   MAL-ED           NEPAL                          0                 0      202     219
24 months   MAL-ED           NEPAL                          0                 1        5     219
24 months   MAL-ED           PERU                           1                 0       66     201
24 months   MAL-ED           PERU                           1                 1        2     201
24 months   MAL-ED           PERU                           0                 0      131     201
24 months   MAL-ED           PERU                           0                 1        2     201
24 months   MAL-ED           SOUTH AFRICA                   1                 0        3     216
24 months   MAL-ED           SOUTH AFRICA                   1                 1        0     216
24 months   MAL-ED           SOUTH AFRICA                   0                 0      212     216
24 months   MAL-ED           SOUTH AFRICA                   0                 1        1     216
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0        1     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        0     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0      197     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        4     202
24 months   PROVIDE          BANGLADESH                     1                 0      127     579
24 months   PROVIDE          BANGLADESH                     1                 1       10     579
24 months   PROVIDE          BANGLADESH                     0                 0      390     579
24 months   PROVIDE          BANGLADESH                     0                 1       52     579


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
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
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
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
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




# Results Detail

## Results Plots
![](/tmp/9cf93f6a-c161-4ee0-95f1-600074a5f5c7/e37ce27c-0691-48d6-93b9-5c5e927de419/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9cf93f6a-c161-4ee0-95f1-600074a5f5c7/e37ce27c-0691-48d6-93b9-5c5e927de419/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9cf93f6a-c161-4ee0-95f1-600074a5f5c7/e37ce27c-0691-48d6-93b9-5c5e927de419/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9cf93f6a-c161-4ee0-95f1-600074a5f5c7/e37ce27c-0691-48d6-93b9-5c5e927de419/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                0.2063152   0.1659446   0.2466857
Birth       GMS-Nepal   NEPAL        0                    NA                0.1501828   0.0870477   0.2133180
Birth       JiVitA-3    BANGLADESH   1                    NA                0.1111165   0.1047317   0.1175012
Birth       JiVitA-3    BANGLADESH   0                    NA                0.1115339   0.1047019   0.1183659
Birth       JiVitA-4    BANGLADESH   1                    NA                0.0979033   0.0809014   0.1149051
Birth       JiVitA-4    BANGLADESH   0                    NA                0.1115385   0.0745660   0.1485110
Birth       Keneba      GAMBIA       1                    NA                0.2428124   0.2192919   0.2663329
Birth       Keneba      GAMBIA       0                    NA                0.2516193   0.2277839   0.2754546
Birth       MAL-ED      BANGLADESH   1                    NA                0.1392432   0.0566889   0.2217976
Birth       MAL-ED      BANGLADESH   0                    NA                0.1967688   0.1252500   0.2682876
Birth       PROVIDE     BANGLADESH   1                    NA                0.2448124   0.1753720   0.3142528
Birth       PROVIDE     BANGLADESH   0                    NA                0.2102464   0.1692650   0.2512278
6 months    GMS-Nepal   NEPAL        1                    NA                0.0881713   0.0604846   0.1158580
6 months    GMS-Nepal   NEPAL        0                    NA                0.0959935   0.0457995   0.1461875
6 months    JiVitA-3    BANGLADESH   1                    NA                0.0869839   0.0797012   0.0942665
6 months    JiVitA-3    BANGLADESH   0                    NA                0.0850888   0.0728503   0.0973273
6 months    JiVitA-4    BANGLADESH   1                    NA                0.0493401   0.0392242   0.0594559
6 months    JiVitA-4    BANGLADESH   0                    NA                0.0813738   0.0623430   0.1004045
6 months    Keneba      GAMBIA       1                    NA                0.0415210   0.0254821   0.0575598
6 months    Keneba      GAMBIA       0                    NA                0.0677492   0.0541786   0.0813199
24 months   GMS-Nepal   NEPAL        1                    NA                0.1717002   0.1323464   0.2110540
24 months   GMS-Nepal   NEPAL        0                    NA                0.2553008   0.1745681   0.3360335
24 months   JiVitA-3    BANGLADESH   1                    NA                0.2203337   0.2046892   0.2359781
24 months   JiVitA-3    BANGLADESH   0                    NA                0.2161798   0.1873599   0.2449998
24 months   JiVitA-4    BANGLADESH   1                    NA                0.1908939   0.1755225   0.2062653
24 months   JiVitA-4    BANGLADESH   0                    NA                0.2095270   0.1749163   0.2441377
24 months   Keneba      GAMBIA       1                    NA                0.0955444   0.0698268   0.1212620
24 months   Keneba      GAMBIA       0                    NA                0.1102973   0.0910627   0.1295318
24 months   MAL-ED      BANGLADESH   1                    NA                0.0921053   0.0269330   0.1572776
24 months   MAL-ED      BANGLADESH   0                    NA                0.1007752   0.0487006   0.1528498
24 months   PROVIDE     BANGLADESH   1                    NA                0.0770604   0.0336887   0.1204321
24 months   PROVIDE     BANGLADESH   0                    NA                0.1174740   0.0874000   0.1475481


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        NA                   NA                0.1954023   0.1613549   0.2294497
Birth       JiVitA-3    BANGLADESH   NA                   NA                0.1112249   0.1049045   0.1175452
Birth       JiVitA-4    BANGLADESH   NA                   NA                0.1002698   0.0846581   0.1158815
Birth       Keneba      GAMBIA       NA                   NA                0.2494348   0.2261459   0.2727237
Birth       MAL-ED      BANGLADESH   NA                   NA                0.1752577   0.1216204   0.2288951
Birth       PROVIDE     BANGLADESH   NA                   NA                0.2199248   0.1846953   0.2551543
6 months    GMS-Nepal   NEPAL        NA                   NA                0.0914077   0.0672348   0.1155805
6 months    JiVitA-3    BANGLADESH   NA                   NA                0.0864198   0.0802086   0.0926309
6 months    JiVitA-4    BANGLADESH   NA                   NA                0.0563743   0.0475411   0.0652074
6 months    Keneba      GAMBIA       NA                   NA                0.0597484   0.0491105   0.0703864
24 months   GMS-Nepal   NEPAL        NA                   NA                0.1918977   0.1562203   0.2275751
24 months   JiVitA-3    BANGLADESH   NA                   NA                0.2194592   0.2057462   0.2331723
24 months   JiVitA-4    BANGLADESH   NA                   NA                0.1952677   0.1809764   0.2095589
24 months   Keneba      GAMBIA       NA                   NA                0.1056803   0.0901896   0.1211711
24 months   MAL-ED      BANGLADESH   NA                   NA                0.0975610   0.0568436   0.1382784
24 months   PROVIDE     BANGLADESH   NA                   NA                0.1070812   0.0818727   0.1322897


### Parameter: RR


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal   NEPAL        0                    1                 0.7279291   0.4575496   1.158084
Birth       JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3    BANGLADESH   0                    1                 1.0037566   0.9724419   1.036080
Birth       JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4    BANGLADESH   0                    1                 1.1392726   0.7861050   1.651105
Birth       Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       Keneba      GAMBIA       0                    1                 1.0362703   0.9946440   1.079639
Birth       MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       MAL-ED      BANGLADESH   0                    1                 1.4131300   0.7040843   2.836218
Birth       PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       PROVIDE     BANGLADESH   0                    1                 0.8588063   0.6097143   1.209662
6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    GMS-Nepal   NEPAL        0                    1                 1.0887160   0.5911058   2.005229
6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3    BANGLADESH   0                    1                 0.9782140   0.8266395   1.157581
6 months    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4    BANGLADESH   0                    1                 1.6492427   1.2084737   2.250774
6 months    Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    Keneba      GAMBIA       0                    1                 1.6316876   1.0561582   2.520839
24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   GMS-Nepal   NEPAL        0                    1                 1.4868987   1.0069642   2.195578
24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3    BANGLADESH   0                    1                 0.9811477   0.8434312   1.141351
24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4    BANGLADESH   0                    1                 1.0976099   0.9161967   1.314944
24 months   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   Keneba      GAMBIA       0                    1                 1.1544088   0.8386975   1.588963
24 months   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED      BANGLADESH   0                    1                 1.0941307   0.4555621   2.627791
24 months   PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   PROVIDE     BANGLADESH   0                    1                 1.5244417   0.8216206   2.828462


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0109129   -0.0299063   0.0080806
Birth       JiVitA-3    BANGLADESH   1                    NA                 0.0001084   -0.0006627   0.0008794
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.0023665   -0.0053112   0.0100442
Birth       Keneba      GAMBIA       1                    NA                 0.0066224   -0.0002398   0.0134846
Birth       MAL-ED      BANGLADESH   1                    NA                 0.0360145   -0.0341421   0.1061711
Birth       PROVIDE     BANGLADESH   1                    NA                -0.0248876   -0.0823543   0.0325791
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0032364   -0.0114552   0.0179280
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0005641   -0.0038596   0.0027314
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.0070342    0.0023699   0.0116985
6 months    Keneba      GAMBIA       1                    NA                 0.0182275    0.0036650   0.0327899
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0201975   -0.0016644   0.0420594
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0008744   -0.0083144   0.0065656
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0043738   -0.0035281   0.0122757
24 months   Keneba      GAMBIA       1                    NA                 0.0101359   -0.0110736   0.0313455
24 months   MAL-ED      BANGLADESH   1                    NA                 0.0054557   -0.0470421   0.0579535
24 months   PROVIDE     BANGLADESH   1                    NA                 0.0300208   -0.0102393   0.0702809


### Parameter: PAF


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0558482   -0.1572922   0.0367036
Birth       JiVitA-3    BANGLADESH   1                    NA                 0.0009745   -0.0059836   0.0078844
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.0236013   -0.0559215   0.0971352
Birth       Keneba      GAMBIA       1                    NA                 0.0265497   -0.0011790   0.0535104
Birth       MAL-ED      BANGLADESH   1                    NA                 0.2054945   -0.3095212   0.5179620
Birth       PROVIDE     BANGLADESH   1                    NA                -0.1131641   -0.4069000   0.1192450
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0354060   -0.1392849   0.1833108
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0065275   -0.0453532   0.0308561
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.1247768    0.0348466   0.2063276
6 months    Keneba      GAMBIA       1                    NA                 0.3050704    0.0215296   0.5064469
24 months   GMS-Nepal   NEPAL        1                    NA                 0.1052513   -0.0152704   0.2114660
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0039844   -0.0384641   0.0293505
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0223990   -0.0187214   0.0618596
24 months   Keneba      GAMBIA       1                    NA                 0.0959113   -0.1286597   0.2757990
24 months   MAL-ED      BANGLADESH   1                    NA                 0.0559211   -0.6686320   0.4658588
24 months   PROVIDE     BANGLADESH   1                    NA                 0.2803557   -0.2025792   0.5693524

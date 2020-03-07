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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** exclfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        exclfeed36    pers_wast   n_cell      n
------------  ---------------  -----------------------------  -----------  ----------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          1                     0        9      9
0-24 months   CMC-V-BCS-2002   INDIA                          1                     1        0      9
0-24 months   CMC-V-BCS-2002   INDIA                          0                     0        0      9
0-24 months   CMC-V-BCS-2002   INDIA                          0                     1        0      9
0-24 months   EE               PAKISTAN                       1                     0        4      9
0-24 months   EE               PAKISTAN                       1                     1        0      9
0-24 months   EE               PAKISTAN                       0                     0        5      9
0-24 months   EE               PAKISTAN                       0                     1        0      9
0-24 months   GMS-Nepal        NEPAL                          1                     0      369    528
0-24 months   GMS-Nepal        NEPAL                          1                     1       54    528
0-24 months   GMS-Nepal        NEPAL                          0                     0       90    528
0-24 months   GMS-Nepal        NEPAL                          0                     1       15    528
0-24 months   IRC              INDIA                          1                     0        0      4
0-24 months   IRC              INDIA                          1                     1        0      4
0-24 months   IRC              INDIA                          0                     0        3      4
0-24 months   IRC              INDIA                          0                     1        1      4
0-24 months   JiVitA-3         BANGLADESH                     1                     0     5957   8221
0-24 months   JiVitA-3         BANGLADESH                     1                     1      363   8221
0-24 months   JiVitA-3         BANGLADESH                     0                     0     1788   8221
0-24 months   JiVitA-3         BANGLADESH                     0                     1      113   8221
0-24 months   JiVitA-4         BANGLADESH                     1                     0     3231   4495
0-24 months   JiVitA-4         BANGLADESH                     1                     1      251   4495
0-24 months   JiVitA-4         BANGLADESH                     0                     0      908   4495
0-24 months   JiVitA-4         BANGLADESH                     0                     1      105   4495
0-24 months   Keneba           GAMBIA                         1                     0      572   1927
0-24 months   Keneba           GAMBIA                         1                     1       21   1927
0-24 months   Keneba           GAMBIA                         0                     0     1250   1927
0-24 months   Keneba           GAMBIA                         0                     1       84   1927
0-24 months   LCNI-5           MALAWI                         1                     0       42    240
0-24 months   LCNI-5           MALAWI                         1                     1        0    240
0-24 months   LCNI-5           MALAWI                         0                     0      195    240
0-24 months   LCNI-5           MALAWI                         0                     1        3    240
0-24 months   MAL-ED           BANGLADESH                     1                     0       32    247
0-24 months   MAL-ED           BANGLADESH                     1                     1        0    247
0-24 months   MAL-ED           BANGLADESH                     0                     0      202    247
0-24 months   MAL-ED           BANGLADESH                     0                     1       13    247
0-24 months   MAL-ED           BRAZIL                         1                     0       14    217
0-24 months   MAL-ED           BRAZIL                         1                     1        0    217
0-24 months   MAL-ED           BRAZIL                         0                     0      201    217
0-24 months   MAL-ED           BRAZIL                         0                     1        2    217
0-24 months   MAL-ED           INDIA                          1                     0        8    238
0-24 months   MAL-ED           INDIA                          1                     1        1    238
0-24 months   MAL-ED           INDIA                          0                     0      209    238
0-24 months   MAL-ED           INDIA                          0                     1       20    238
0-24 months   MAL-ED           NEPAL                          1                     0        4    236
0-24 months   MAL-ED           NEPAL                          1                     1        1    236
0-24 months   MAL-ED           NEPAL                          0                     0      228    236
0-24 months   MAL-ED           NEPAL                          0                     1        3    236
0-24 months   MAL-ED           PERU                           1                     0        7    282
0-24 months   MAL-ED           PERU                           1                     1        0    282
0-24 months   MAL-ED           PERU                           0                     0      274    282
0-24 months   MAL-ED           PERU                           0                     1        1    282
0-24 months   MAL-ED           SOUTH AFRICA                   1                     0        3    271
0-24 months   MAL-ED           SOUTH AFRICA                   1                     1        0    271
0-24 months   MAL-ED           SOUTH AFRICA                   0                     0      266    271
0-24 months   MAL-ED           SOUTH AFRICA                   0                     1        2    271
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        4    249
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        0    249
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      245    249
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        0    249
0-24 months   PROVIDE          BANGLADESH                     1                     0      160    639
0-24 months   PROVIDE          BANGLADESH                     1                     1        2    639
0-24 months   PROVIDE          BANGLADESH                     0                     0      464    639
0-24 months   PROVIDE          BANGLADESH                     0                     1       13    639
0-24 months   SAS-FoodSuppl    INDIA                          1                     0        0    166
0-24 months   SAS-FoodSuppl    INDIA                          1                     1        0    166
0-24 months   SAS-FoodSuppl    INDIA                          0                     0      136    166
0-24 months   SAS-FoodSuppl    INDIA                          0                     1       30    166
0-6 months    CMC-V-BCS-2002   INDIA                          1                     0        8      9
0-6 months    CMC-V-BCS-2002   INDIA                          1                     1        1      9
0-6 months    CMC-V-BCS-2002   INDIA                          0                     0        0      9
0-6 months    CMC-V-BCS-2002   INDIA                          0                     1        0      9
0-6 months    EE               PAKISTAN                       1                     0        4      9
0-6 months    EE               PAKISTAN                       1                     1        0      9
0-6 months    EE               PAKISTAN                       0                     0        5      9
0-6 months    EE               PAKISTAN                       0                     1        0      9
0-6 months    GMS-Nepal        NEPAL                          1                     0      380    520
0-6 months    GMS-Nepal        NEPAL                          1                     1       37    520
0-6 months    GMS-Nepal        NEPAL                          0                     0       86    520
0-6 months    GMS-Nepal        NEPAL                          0                     1       17    520
0-6 months    IRC              INDIA                          1                     0        0      4
0-6 months    IRC              INDIA                          1                     1        0      4
0-6 months    IRC              INDIA                          0                     0        4      4
0-6 months    IRC              INDIA                          0                     1        0      4
0-6 months    JiVitA-3         BANGLADESH                     1                     0       11     19
0-6 months    JiVitA-3         BANGLADESH                     1                     1        2     19
0-6 months    JiVitA-3         BANGLADESH                     0                     0        6     19
0-6 months    JiVitA-3         BANGLADESH                     0                     1        0     19
0-6 months    Keneba           GAMBIA                         1                     0      527   1793
0-6 months    Keneba           GAMBIA                         1                     1       12   1793
0-6 months    Keneba           GAMBIA                         0                     0     1210   1793
0-6 months    Keneba           GAMBIA                         0                     1       44   1793
0-6 months    MAL-ED           BANGLADESH                     1                     0       31    247
0-6 months    MAL-ED           BANGLADESH                     1                     1        1    247
0-6 months    MAL-ED           BANGLADESH                     0                     0      209    247
0-6 months    MAL-ED           BANGLADESH                     0                     1        6    247
0-6 months    MAL-ED           BRAZIL                         1                     0       14    217
0-6 months    MAL-ED           BRAZIL                         1                     1        0    217
0-6 months    MAL-ED           BRAZIL                         0                     0      202    217
0-6 months    MAL-ED           BRAZIL                         0                     1        1    217
0-6 months    MAL-ED           INDIA                          1                     0        8    237
0-6 months    MAL-ED           INDIA                          1                     1        1    237
0-6 months    MAL-ED           INDIA                          0                     0      210    237
0-6 months    MAL-ED           INDIA                          0                     1       18    237
0-6 months    MAL-ED           NEPAL                          1                     0        4    236
0-6 months    MAL-ED           NEPAL                          1                     1        1    236
0-6 months    MAL-ED           NEPAL                          0                     0      225    236
0-6 months    MAL-ED           NEPAL                          0                     1        6    236
0-6 months    MAL-ED           PERU                           1                     0        7    282
0-6 months    MAL-ED           PERU                           1                     1        0    282
0-6 months    MAL-ED           PERU                           0                     0      275    282
0-6 months    MAL-ED           PERU                           0                     1        0    282
0-6 months    MAL-ED           SOUTH AFRICA                   1                     0        3    270
0-6 months    MAL-ED           SOUTH AFRICA                   1                     1        0    270
0-6 months    MAL-ED           SOUTH AFRICA                   0                     0      265    270
0-6 months    MAL-ED           SOUTH AFRICA                   0                     1        2    270
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        4    249
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        0    249
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      245    249
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        0    249
0-6 months    PROVIDE          BANGLADESH                     1                     0      160    637
0-6 months    PROVIDE          BANGLADESH                     1                     1        1    637
0-6 months    PROVIDE          BANGLADESH                     0                     0      463    637
0-6 months    PROVIDE          BANGLADESH                     0                     1       13    637
6-24 months   CMC-V-BCS-2002   INDIA                          1                     0        9      9
6-24 months   CMC-V-BCS-2002   INDIA                          1                     1        0      9
6-24 months   CMC-V-BCS-2002   INDIA                          0                     0        0      9
6-24 months   CMC-V-BCS-2002   INDIA                          0                     1        0      9
6-24 months   EE               PAKISTAN                       1                     0        4      9
6-24 months   EE               PAKISTAN                       1                     1        0      9
6-24 months   EE               PAKISTAN                       0                     0        5      9
6-24 months   EE               PAKISTAN                       0                     1        0      9
6-24 months   GMS-Nepal        NEPAL                          1                     0      369    528
6-24 months   GMS-Nepal        NEPAL                          1                     1       54    528
6-24 months   GMS-Nepal        NEPAL                          0                     0       90    528
6-24 months   GMS-Nepal        NEPAL                          0                     1       15    528
6-24 months   IRC              INDIA                          1                     0        0      4
6-24 months   IRC              INDIA                          1                     1        0      4
6-24 months   IRC              INDIA                          0                     0        3      4
6-24 months   IRC              INDIA                          0                     1        1      4
6-24 months   JiVitA-3         BANGLADESH                     1                     0     5957   8221
6-24 months   JiVitA-3         BANGLADESH                     1                     1      363   8221
6-24 months   JiVitA-3         BANGLADESH                     0                     0     1788   8221
6-24 months   JiVitA-3         BANGLADESH                     0                     1      113   8221
6-24 months   JiVitA-4         BANGLADESH                     1                     0     3231   4495
6-24 months   JiVitA-4         BANGLADESH                     1                     1      251   4495
6-24 months   JiVitA-4         BANGLADESH                     0                     0      908   4495
6-24 months   JiVitA-4         BANGLADESH                     0                     1      105   4495
6-24 months   Keneba           GAMBIA                         1                     0      572   1927
6-24 months   Keneba           GAMBIA                         1                     1       21   1927
6-24 months   Keneba           GAMBIA                         0                     0     1250   1927
6-24 months   Keneba           GAMBIA                         0                     1       84   1927
6-24 months   LCNI-5           MALAWI                         1                     0       42    240
6-24 months   LCNI-5           MALAWI                         1                     1        0    240
6-24 months   LCNI-5           MALAWI                         0                     0      195    240
6-24 months   LCNI-5           MALAWI                         0                     1        3    240
6-24 months   MAL-ED           BANGLADESH                     1                     0       32    247
6-24 months   MAL-ED           BANGLADESH                     1                     1        0    247
6-24 months   MAL-ED           BANGLADESH                     0                     0      202    247
6-24 months   MAL-ED           BANGLADESH                     0                     1       13    247
6-24 months   MAL-ED           BRAZIL                         1                     0       14    217
6-24 months   MAL-ED           BRAZIL                         1                     1        0    217
6-24 months   MAL-ED           BRAZIL                         0                     0      201    217
6-24 months   MAL-ED           BRAZIL                         0                     1        2    217
6-24 months   MAL-ED           INDIA                          1                     0        8    238
6-24 months   MAL-ED           INDIA                          1                     1        1    238
6-24 months   MAL-ED           INDIA                          0                     0      209    238
6-24 months   MAL-ED           INDIA                          0                     1       20    238
6-24 months   MAL-ED           NEPAL                          1                     0        4    236
6-24 months   MAL-ED           NEPAL                          1                     1        1    236
6-24 months   MAL-ED           NEPAL                          0                     0      228    236
6-24 months   MAL-ED           NEPAL                          0                     1        3    236
6-24 months   MAL-ED           PERU                           1                     0        7    282
6-24 months   MAL-ED           PERU                           1                     1        0    282
6-24 months   MAL-ED           PERU                           0                     0      274    282
6-24 months   MAL-ED           PERU                           0                     1        1    282
6-24 months   MAL-ED           SOUTH AFRICA                   1                     0        3    271
6-24 months   MAL-ED           SOUTH AFRICA                   1                     1        0    271
6-24 months   MAL-ED           SOUTH AFRICA                   0                     0      266    271
6-24 months   MAL-ED           SOUTH AFRICA                   0                     1        2    271
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        4    249
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        0    249
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      245    249
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        0    249
6-24 months   PROVIDE          BANGLADESH                     1                     0      160    639
6-24 months   PROVIDE          BANGLADESH                     1                     1        2    639
6-24 months   PROVIDE          BANGLADESH                     0                     0      464    639
6-24 months   PROVIDE          BANGLADESH                     0                     1       13    639
6-24 months   SAS-FoodSuppl    INDIA                          1                     0        0    166
6-24 months   SAS-FoodSuppl    INDIA                          1                     1        0    166
6-24 months   SAS-FoodSuppl    INDIA                          0                     0      136    166
6-24 months   SAS-FoodSuppl    INDIA                          0                     1       30    166


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/f99b820e-e44e-445d-a119-5e158db9c6d5/49a1fd1b-c7dc-44ac-b5ac-868b8e651b42/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f99b820e-e44e-445d-a119-5e158db9c6d5/49a1fd1b-c7dc-44ac-b5ac-868b8e651b42/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f99b820e-e44e-445d-a119-5e158db9c6d5/49a1fd1b-c7dc-44ac-b5ac-868b8e651b42/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f99b820e-e44e-445d-a119-5e158db9c6d5/49a1fd1b-c7dc-44ac-b5ac-868b8e651b42/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.1276596   0.0958279   0.1594912
0-24 months   GMS-Nepal   NEPAL        0                    NA                0.1428571   0.0758621   0.2098522
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0574367   0.0505524   0.0643211
0-24 months   JiVitA-3    BANGLADESH   0                    NA                0.0594424   0.0481373   0.0707475
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0720850   0.0617518   0.0824182
0-24 months   JiVitA-4    BANGLADESH   0                    NA                0.1036525   0.0844266   0.1228785
0-24 months   Keneba      GAMBIA       1                    NA                0.0354132   0.0205337   0.0502926
0-24 months   Keneba      GAMBIA       0                    NA                0.0629685   0.0499302   0.0760068
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.0887290   0.0614107   0.1160474
0-6 months    GMS-Nepal   NEPAL        0                    NA                0.1650485   0.0932883   0.2368088
0-6 months    Keneba      GAMBIA       1                    NA                0.0222635   0.0098045   0.0347224
0-6 months    Keneba      GAMBIA       0                    NA                0.0350877   0.0249008   0.0452746
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.1276596   0.0958279   0.1594912
6-24 months   GMS-Nepal   NEPAL        0                    NA                0.1428571   0.0758621   0.2098522
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0574367   0.0505524   0.0643211
6-24 months   JiVitA-3    BANGLADESH   0                    NA                0.0594424   0.0481373   0.0707475
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0720850   0.0617518   0.0824182
6-24 months   JiVitA-4    BANGLADESH   0                    NA                0.1036525   0.0844266   0.1228785
6-24 months   Keneba      GAMBIA       1                    NA                0.0354132   0.0205337   0.0502926
6-24 months   Keneba      GAMBIA       0                    NA                0.0629685   0.0499302   0.0760068


### Parameter: E(Y)


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        NA                   NA                0.1306818   0.1019052   0.1594584
0-24 months   JiVitA-3    BANGLADESH   NA                   NA                0.0579005   0.0521352   0.0636658
0-24 months   JiVitA-4    BANGLADESH   NA                   NA                0.0791991   0.0699871   0.0884111
0-24 months   Keneba      GAMBIA       NA                   NA                0.0544888   0.0443519   0.0646258
0-6 months    GMS-Nepal   NEPAL        NA                   NA                0.1038462   0.0776009   0.1300914
0-6 months    Keneba      GAMBIA       NA                   NA                0.0312326   0.0231789   0.0392862
6-24 months   GMS-Nepal   NEPAL        NA                   NA                0.1306818   0.1019052   0.1594584
6-24 months   JiVitA-3    BANGLADESH   NA                   NA                0.0579005   0.0521352   0.0636658
6-24 months   JiVitA-4    BANGLADESH   NA                   NA                0.0791991   0.0699871   0.0884111
6-24 months   Keneba      GAMBIA       NA                   NA                0.0544888   0.0443519   0.0646258


### Parameter: RR


agecat        studyid     country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  ----------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-24 months   GMS-Nepal   NEPAL        0                    1                 1.119048   0.6579307   1.903342
0-24 months   JiVitA-3    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   JiVitA-3    BANGLADESH   0                    1                 1.034920   0.8218387   1.303248
0-24 months   JiVitA-4    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   JiVitA-4    BANGLADESH   0                    1                 1.437921   1.1416283   1.811111
0-24 months   Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
0-24 months   Keneba      GAMBIA       0                    1                 1.778111   1.1130840   2.840467
0-6 months    GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-6 months    GMS-Nepal   NEPAL        0                    1                 1.860142   1.0918749   3.168978
0-6 months    Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
0-6 months    Keneba      GAMBIA       0                    1                 1.576023   0.8390051   2.960470
6-24 months   GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
6-24 months   GMS-Nepal   NEPAL        0                    1                 1.119048   0.6579307   1.903342
6-24 months   JiVitA-3    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   JiVitA-3    BANGLADESH   0                    1                 1.034920   0.8218387   1.303248
6-24 months   JiVitA-4    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   JiVitA-4    BANGLADESH   0                    1                 1.437921   1.1416283   1.811111
6-24 months   Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
6-24 months   Keneba      GAMBIA       0                    1                 1.778111   1.1130840   2.840467


### Parameter: PAR


agecat        studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.0030222   -0.0117371   0.0177816
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0004638   -0.0026732   0.0036008
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0071141    0.0022588   0.0119694
0-24 months   Keneba      GAMBIA       1                    NA                0.0190757    0.0053683   0.0327831
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.0151171   -0.0003155   0.0305498
0-6 months    Keneba      GAMBIA       1                    NA                0.0089691   -0.0022897   0.0202279
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.0030222   -0.0117371   0.0177816
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0004638   -0.0026732   0.0036008
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0071141    0.0022588   0.0119694
6-24 months   Keneba      GAMBIA       1                    NA                0.0190757    0.0053683   0.0327831


### Parameter: PAF


agecat        studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.0231267   -0.0965112   0.1297112
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0080101   -0.0477820   0.0608314
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0898255    0.0256676   0.1497587
0-24 months   Keneba      GAMBIA       1                    NA                0.3500843    0.0544931   0.5532657
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.1455724   -0.0123543   0.2788627
0-6 months    Keneba      GAMBIA       1                    NA                0.2871720   -0.1698902   0.5656654
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.0231267   -0.0965112   0.1297112
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0080101   -0.0477820   0.0608314
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0898255    0.0256676   0.1497587
6-24 months   Keneba      GAMBIA       1                    NA                0.3500843    0.0544931   0.5532657

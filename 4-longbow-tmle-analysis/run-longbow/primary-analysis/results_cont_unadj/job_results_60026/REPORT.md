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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** exclfeed6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        exclfeed6    n_cell       n
----------  ---------------  -----------------------------  ----------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                 7       7
Birth       CMC-V-BCS-2002   INDIA                          0                 0       7
Birth       EE               PAKISTAN                       1                24      28
Birth       EE               PAKISTAN                       0                 4      28
Birth       GMS-Nepal        NEPAL                          1               390     522
Birth       GMS-Nepal        NEPAL                          0               132     522
Birth       IRC              INDIA                          1                 0      12
Birth       IRC              INDIA                          0                12      12
Birth       JiVitA-3         BANGLADESH                     1              8381   10744
Birth       JiVitA-3         BANGLADESH                     0              2363   10744
Birth       JiVitA-4         BANGLADESH                     1              1799    2224
Birth       JiVitA-4         BANGLADESH                     0               425    2224
Birth       Keneba           GAMBIA                         1               450    1327
Birth       Keneba           GAMBIA                         0               877    1327
Birth       MAL-ED           BANGLADESH                     1                29     194
Birth       MAL-ED           BANGLADESH                     0               165     194
Birth       MAL-ED           BRAZIL                         1                 1      57
Birth       MAL-ED           BRAZIL                         0                56      57
Birth       MAL-ED           INDIA                          1                 1      37
Birth       MAL-ED           INDIA                          0                36      37
Birth       MAL-ED           NEPAL                          1                 2      23
Birth       MAL-ED           NEPAL                          0                21      23
Birth       MAL-ED           PERU                           1                 2     208
Birth       MAL-ED           PERU                           0               206     208
Birth       MAL-ED           SOUTH AFRICA                   1                 0      90
Birth       MAL-ED           SOUTH AFRICA                   0                90      90
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               105     105
Birth       PROVIDE          BANGLADESH                     1               155     532
Birth       PROVIDE          BANGLADESH                     0               377     532
Birth       SAS-CompFeed     INDIA                          1               310     325
Birth       SAS-CompFeed     INDIA                          0                15     325
6 months    CMC-V-BCS-2002   INDIA                          1                19      19
6 months    CMC-V-BCS-2002   INDIA                          0                 0      19
6 months    EE               PAKISTAN                       1                43      48
6 months    EE               PAKISTAN                       0                 5      48
6 months    GMS-Nepal        NEPAL                          1               406     547
6 months    GMS-Nepal        NEPAL                          0               141     547
6 months    IRC              INDIA                          1                 0      14
6 months    IRC              INDIA                          0                14      14
6 months    JiVitA-3         BANGLADESH                     1              7610    9882
6 months    JiVitA-3         BANGLADESH                     0              2272    9882
6 months    JiVitA-4         BANGLADESH                     1              3315    4275
6 months    JiVitA-4         BANGLADESH                     0               960    4275
6 months    Keneba           GAMBIA                         1               586    1908
6 months    Keneba           GAMBIA                         0              1322    1908
6 months    LCNI-5           MALAWI                         1                47     272
6 months    LCNI-5           MALAWI                         0               225     272
6 months    MAL-ED           BANGLADESH                     1                33     231
6 months    MAL-ED           BANGLADESH                     0               198     231
6 months    MAL-ED           BRAZIL                         1                12     209
6 months    MAL-ED           BRAZIL                         0               197     209
6 months    MAL-ED           INDIA                          1                 2     218
6 months    MAL-ED           INDIA                          0               216     218
6 months    MAL-ED           NEPAL                          1                 5     225
6 months    MAL-ED           NEPAL                          0               220     225
6 months    MAL-ED           PERU                           1                 5     271
6 months    MAL-ED           PERU                           0               266     271
6 months    MAL-ED           SOUTH AFRICA                   1                 0     233
6 months    MAL-ED           SOUTH AFRICA                   0               233     233
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               232     232
6 months    PROVIDE          BANGLADESH                     1               141     603
6 months    PROVIDE          BANGLADESH                     0               462     603
6 months    SAS-CompFeed     INDIA                          1               376     395
6 months    SAS-CompFeed     INDIA                          0                19     395
6 months    SAS-FoodSuppl    INDIA                          1                 0     168
6 months    SAS-FoodSuppl    INDIA                          0               168     168
24 months   CMC-V-BCS-2002   INDIA                          1                19      19
24 months   CMC-V-BCS-2002   INDIA                          0                 0      19
24 months   EE               PAKISTAN                       1                20      23
24 months   EE               PAKISTAN                       0                 3      23
24 months   GMS-Nepal        NEPAL                          1               355     469
24 months   GMS-Nepal        NEPAL                          0               114     469
24 months   IRC              INDIA                          1                 0      14
24 months   IRC              INDIA                          0                14      14
24 months   JiVitA-3         BANGLADESH                     1              3899    5067
24 months   JiVitA-3         BANGLADESH                     0              1168    5067
24 months   JiVitA-4         BANGLADESH                     1              3266    4184
24 months   JiVitA-4         BANGLADESH                     0               918    4184
24 months   Keneba           GAMBIA                         1               514    1514
24 months   Keneba           GAMBIA                         0              1000    1514
24 months   LCNI-5           MALAWI                         1                34     184
24 months   LCNI-5           MALAWI                         0               150     184
24 months   MAL-ED           BANGLADESH                     1                31     205
24 months   MAL-ED           BANGLADESH                     0               174     205
24 months   MAL-ED           BRAZIL                         1                11     169
24 months   MAL-ED           BRAZIL                         0               158     169
24 months   MAL-ED           INDIA                          1                 2     209
24 months   MAL-ED           INDIA                          0               207     209
24 months   MAL-ED           NEPAL                          1                 5     219
24 months   MAL-ED           NEPAL                          0               214     219
24 months   MAL-ED           PERU                           1                 3     201
24 months   MAL-ED           PERU                           0               198     201
24 months   MAL-ED           SOUTH AFRICA                   1                 0     216
24 months   MAL-ED           SOUTH AFRICA                   0               216     216
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               202     202
24 months   PROVIDE          BANGLADESH                     1               137     579
24 months   PROVIDE          BANGLADESH                     0               442     579


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
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: INDIA
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
![](/tmp/759f5f04-a5f5-4a24-88c0-db92b0a0f39f/beb81a20-da68-48da-878f-afdc16cce4b8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/759f5f04-a5f5-4a24-88c0-db92b0a0f39f/beb81a20-da68-48da-878f-afdc16cce4b8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/759f5f04-a5f5-4a24-88c0-db92b0a0f39f/beb81a20-da68-48da-878f-afdc16cce4b8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    NA                -1.1030000   -1.2190680   -0.9869320
Birth       GMS-Nepal      NEPAL        0                    NA                -1.1166667   -1.2888791   -0.9444543
Birth       JiVitA-3       BANGLADESH   1                    NA                -0.7871507   -0.8122916   -0.7620098
Birth       JiVitA-3       BANGLADESH   0                    NA                -0.7581887   -0.8035465   -0.7128309
Birth       JiVitA-4       BANGLADESH   1                    NA                -0.6735353   -0.7290093   -0.6180613
Birth       JiVitA-4       BANGLADESH   0                    NA                -0.7620941   -0.9029970   -0.6211912
Birth       Keneba         GAMBIA       1                    NA                -1.2386000   -1.3501230   -1.1270770
Birth       Keneba         GAMBIA       0                    NA                -1.2709692   -1.3512815   -1.1906569
Birth       MAL-ED         BANGLADESH   1                    NA                -0.8468966   -1.2072911   -0.4865020
Birth       MAL-ED         BANGLADESH   0                    NA                -0.9981818   -1.1664833   -0.8298803
Birth       PROVIDE        BANGLADESH   1                    NA                -1.3269677   -1.4749653   -1.1789702
Birth       PROVIDE        BANGLADESH   0                    NA                -1.2867374   -1.3764215   -1.1970533
Birth       SAS-CompFeed   INDIA        1                    NA                -0.6397097   -0.8621395   -0.4172798
Birth       SAS-CompFeed   INDIA        0                    NA                -1.0713333   -1.6580583   -0.4846084
6 months    EE             PAKISTAN     1                    NA                -0.6248062   -0.9715960   -0.2780164
6 months    EE             PAKISTAN     0                    NA                -0.4893333   -0.8590751   -0.1195916
6 months    GMS-Nepal      NEPAL        1                    NA                -0.5767365   -0.6790365   -0.4744364
6 months    GMS-Nepal      NEPAL        0                    NA                -0.6705437   -0.8404121   -0.5006754
6 months    JiVitA-3       BANGLADESH   1                    NA                -0.6026616   -0.6301559   -0.5751673
6 months    JiVitA-3       BANGLADESH   0                    NA                -0.5916505   -0.6377632   -0.5455378
6 months    JiVitA-4       BANGLADESH   1                    NA                -0.3415973   -0.3863900   -0.2968046
6 months    JiVitA-4       BANGLADESH   0                    NA                -0.5876250   -0.6698738   -0.5053762
6 months    Keneba         GAMBIA       1                    NA                -0.0152156   -0.1135250    0.0830938
6 months    Keneba         GAMBIA       0                    NA                -0.2815693   -0.3445913   -0.2185474
6 months    LCNI-5         MALAWI       1                    NA                 0.3642553    0.0371861    0.6913246
6 months    LCNI-5         MALAWI       0                    NA                 0.3984000    0.2718569    0.5249431
6 months    MAL-ED         BANGLADESH   1                    NA                -0.1191919   -0.4483694    0.2099856
6 months    MAL-ED         BANGLADESH   0                    NA                -0.1216751   -0.2663430    0.0229928
6 months    MAL-ED         BRAZIL       1                    NA                 1.3190278    0.7132153    1.9248402
6 months    MAL-ED         BRAZIL       0                    NA                 0.9509433    0.7810745    1.1208121
6 months    MAL-ED         NEPAL        1                    NA                -0.2760000   -0.9362767    0.3842767
6 months    MAL-ED         NEPAL        0                    NA                 0.1178939   -0.0200258    0.2558137
6 months    MAL-ED         PERU         1                    NA                 0.9290000    0.5350705    1.3229295
6 months    MAL-ED         PERU         0                    NA                 1.0529010    0.9277571    1.1780449
6 months    PROVIDE        BANGLADESH   1                    NA                 0.0081915   -0.1568998    0.1732827
6 months    PROVIDE        BANGLADESH   0                    NA                -0.2623521   -0.3570701   -0.1676341
6 months    SAS-CompFeed   INDIA        1                    NA                -0.6469149   -0.7835786   -0.5102511
6 months    SAS-CompFeed   INDIA        0                    NA                -0.3968421   -0.8495292    0.0558450
24 months   GMS-Nepal      NEPAL        1                    NA                -1.0898075   -1.1896297   -0.9899853
24 months   GMS-Nepal      NEPAL        0                    NA                -1.3059795   -1.5138227   -1.0981364
24 months   JiVitA-3       BANGLADESH   1                    NA                -1.3203206   -1.3555989   -1.2850423
24 months   JiVitA-3       BANGLADESH   0                    NA                -1.2770120   -1.3402658   -1.2137582
24 months   JiVitA-4       BANGLADESH   1                    NA                -1.2178720   -1.2573063   -1.1784378
24 months   JiVitA-4       BANGLADESH   0                    NA                -1.2573420   -1.3335957   -1.1810884
24 months   Keneba         GAMBIA       1                    NA                -0.7381832   -0.8224240   -0.6539424
24 months   Keneba         GAMBIA       0                    NA                -0.8366685   -0.8987548   -0.7745822
24 months   LCNI-5         MALAWI       1                    NA                -0.1641176   -0.4633222    0.1350870
24 months   LCNI-5         MALAWI       0                    NA                -0.0573333   -0.2194120    0.1047453
24 months   MAL-ED         BANGLADESH   1                    NA                -0.9537097   -1.2442696   -0.6631498
24 months   MAL-ED         BANGLADESH   0                    NA                -0.7926149   -0.9261594   -0.6590705
24 months   MAL-ED         BRAZIL       1                    NA                 0.2318182   -0.4600085    0.9236449
24 months   MAL-ED         BRAZIL       0                    NA                 0.4786920    0.2640431    0.6933408
24 months   MAL-ED         NEPAL        1                    NA                -0.4770000   -1.1267115    0.1727115
24 months   MAL-ED         NEPAL        0                    NA                -0.3648832   -0.4833183   -0.2464480
24 months   PROVIDE        BANGLADESH   1                    NA                -0.7967883   -0.9631693   -0.6304074
24 months   PROVIDE        BANGLADESH   0                    NA                -0.9226471   -1.0176695   -0.8276246


### Parameter: E(Y)


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        NA                   NA                -1.1064559   -1.2034951   -1.0094168
Birth       JiVitA-3       BANGLADESH   NA                   NA                -0.7807809   -0.8030521   -0.7585097
Birth       JiVitA-4       BANGLADESH   NA                   NA                -0.6904586   -0.7435822   -0.6373351
Birth       Keneba         GAMBIA       NA                   NA                -1.2599925   -1.3251703   -1.1948146
Birth       MAL-ED         BANGLADESH   NA                   NA                -0.9755670   -1.1287016   -0.8224325
Birth       PROVIDE        BANGLADESH   NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed   INDIA        NA                   NA                -0.6596308   -0.9005716   -0.4186900
6 months    EE             PAKISTAN     NA                   NA                -0.6106944   -0.9239621   -0.2974268
6 months    GMS-Nepal      NEPAL        NA                   NA                -0.6009171   -0.6886356   -0.5131986
6 months    JiVitA-3       BANGLADESH   NA                   NA                -0.6001300   -0.6240378   -0.5762223
6 months    JiVitA-4       BANGLADESH   NA                   NA                -0.3968456   -0.4358721   -0.3578192
6 months    Keneba         GAMBIA       NA                   NA                -0.1997647   -0.2531388   -0.1463906
6 months    LCNI-5         MALAWI       NA                   NA                 0.3925000    0.2735307    0.5114693
6 months    MAL-ED         BANGLADESH   NA                   NA                -0.1213203   -0.2539388    0.0112981
6 months    MAL-ED         BRAZIL       NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    MAL-ED         NEPAL        NA                   NA                 0.1091407   -0.0265536    0.2448351
6 months    MAL-ED         PERU         NA                   NA                 1.0506150    0.9281868    1.1730433
6 months    PROVIDE        BANGLADESH   NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    SAS-CompFeed   INDIA        NA                   NA                -0.6348861   -0.7630511   -0.5067211
24 months   GMS-Nepal      NEPAL        NA                   NA                -1.1423525   -1.2336321   -1.0510729
24 months   JiVitA-3       BANGLADESH   NA                   NA                -1.3103375   -1.3408810   -1.2797940
24 months   JiVitA-4       BANGLADESH   NA                   NA                -1.2265320   -1.2620508   -1.1910132
24 months   Keneba         GAMBIA       NA                   NA                -0.8032329   -0.8532842   -0.7531817
24 months   LCNI-5         MALAWI       NA                   NA                -0.0770652   -0.2204213    0.0662909
24 months   MAL-ED         BANGLADESH   NA                   NA                -0.8169756   -0.9388013   -0.6951499
24 months   MAL-ED         BRAZIL       NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   MAL-ED         NEPAL        NA                   NA                -0.3674429   -0.4840752   -0.2508107
24 months   PROVIDE        BANGLADESH   NA                   NA                -0.8928670   -0.9755153   -0.8102187


### Parameter: ATE


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal      NEPAL        0                    1                 -0.0136667   -0.2213416    0.1940083
Birth       JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3       BANGLADESH   0                    1                  0.0289620   -0.0221844    0.0801083
Birth       JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4       BANGLADESH   0                    1                 -0.0885588   -0.2379241    0.0608064
Birth       Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba         GAMBIA       0                    1                 -0.0323692   -0.1698008    0.1050623
Birth       MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH   0                    1                 -0.1512853   -0.5490410    0.2464705
Birth       PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE        BANGLADESH   0                    1                  0.0402303   -0.1328202    0.2132809
Birth       SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA        0                    1                 -0.4316237   -0.9347060    0.0714587
6 months    EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    EE             PAKISTAN     0                    1                  0.1354729   -0.3714513    0.6423970
6 months    GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL        0                    1                 -0.0938073   -0.2921014    0.1044868
6 months    JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3       BANGLADESH   0                    1                  0.0110111   -0.0421318    0.0641540
6 months    JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4       BANGLADESH   0                    1                 -0.2460277   -0.3404441   -0.1516113
6 months    Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba         GAMBIA       0                    1                 -0.2663537   -0.3831291   -0.1495783
6 months    LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5         MALAWI       0                    1                  0.0341447   -0.3165510    0.3848404
6 months    MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH   0                    1                 -0.0024832   -0.3620477    0.3570814
6 months    MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL       0                    1                 -0.3680845   -0.9972618    0.2610929
6 months    MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL        0                    1                  0.3938939   -0.2806334    1.0684213
6 months    MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU         0                    1                  0.1239010   -0.2894287    0.5372307
6 months    PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE        BANGLADESH   0                    1                 -0.2705436   -0.4608765   -0.0802107
6 months    SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA        0                    1                  0.2500728   -0.2551626    0.7553082
24 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL        0                    1                 -0.2161720   -0.4467436    0.0143996
24 months   JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3       BANGLADESH   0                    1                  0.0433086   -0.0296751    0.1162923
24 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4       BANGLADESH   0                    1                 -0.0394700   -0.1242148    0.0452747
24 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba         GAMBIA       0                    1                 -0.0984853   -0.2031334    0.0061628
24 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5         MALAWI       0                    1                  0.1067843   -0.2334992    0.4470678
24 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH   0                    1                  0.1610947   -0.1586851    0.4808746
24 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL       0                    1                  0.2468738   -0.4774868    0.9712344
24 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL        0                    1                  0.1121168   -0.5483011    0.7725348
24 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE        BANGLADESH   0                    1                 -0.1258587   -0.3174622    0.0657447


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    NA                -0.0034559   -0.0559739    0.0490620
Birth       JiVitA-3       BANGLADESH   1                    NA                 0.0063698   -0.0048767    0.0176163
Birth       JiVitA-4       BANGLADESH   1                    NA                -0.0169233   -0.0453721    0.0115254
Birth       Keneba         GAMBIA       1                    NA                -0.0213925   -0.1122232    0.0694383
Birth       MAL-ED         BANGLADESH   1                    NA                -0.1286705   -0.4670534    0.2097125
Birth       PROVIDE        BANGLADESH   1                    NA                 0.0285091   -0.0941325    0.1511507
Birth       SAS-CompFeed   INDIA        1                    NA                -0.0199211   -0.0507808    0.0109386
6 months    EE             PAKISTAN     1                    NA                 0.0141118   -0.0400020    0.0682256
6 months    GMS-Nepal      NEPAL        1                    NA                -0.0241807   -0.0754106    0.0270493
6 months    JiVitA-3       BANGLADESH   1                    NA                 0.0025316   -0.0096885    0.0147517
6 months    JiVitA-4       BANGLADESH   1                    NA                -0.0552483   -0.0770428   -0.0334539
6 months    Keneba         GAMBIA       1                    NA                -0.1845491   -0.2656472   -0.1034509
6 months    LCNI-5         MALAWI       1                    NA                 0.0282447   -0.2618569    0.3183463
6 months    MAL-ED         BANGLADESH   1                    NA                -0.0021284   -0.3103266    0.3060697
6 months    MAL-ED         BRAZIL       1                    NA                -0.3469504   -0.9401169    0.2462161
6 months    MAL-ED         NEPAL        1                    NA                 0.3851407   -0.2725674    1.0428489
6 months    MAL-ED         PERU         1                    NA                 0.1216150   -0.2813864    0.5246164
6 months    PROVIDE        BANGLADESH   1                    NA                -0.2072821   -0.3533960   -0.0611683
6 months    SAS-CompFeed   INDIA        1                    NA                 0.0120288   -0.0145556    0.0386132
24 months   GMS-Nepal      NEPAL        1                    NA                -0.0525450   -0.1092162    0.0041262
24 months   JiVitA-3       BANGLADESH   1                    NA                 0.0099831   -0.0068133    0.0267796
24 months   JiVitA-4       BANGLADESH   1                    NA                -0.0086600   -0.0273033    0.0099833
24 months   Keneba         GAMBIA       1                    NA                -0.0650497   -0.1342099    0.0041105
24 months   LCNI-5         MALAWI       1                    NA                 0.0870524   -0.1904176    0.3645225
24 months   MAL-ED         BANGLADESH   1                    NA                 0.1367341   -0.1348044    0.4082725
24 months   MAL-ED         BRAZIL       1                    NA                 0.2308051   -0.4464704    0.9080806
24 months   MAL-ED         NEPAL        1                    NA                 0.1095571   -0.5343543    0.7534684
24 months   PROVIDE        BANGLADESH   1                    NA                -0.0960787   -0.2424109    0.0502535

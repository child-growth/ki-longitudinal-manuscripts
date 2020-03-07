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
Birth       EE               PAKISTAN                       1                38      42
Birth       EE               PAKISTAN                       0                 4      42
Birth       GMS-Nepal        NEPAL                          1               419     563
Birth       GMS-Nepal        NEPAL                          0               144     563
Birth       IRC              INDIA                          1                 0      14
Birth       IRC              INDIA                          0                14      14
Birth       JiVitA-3         BANGLADESH                     1             10452   13423
Birth       JiVitA-3         BANGLADESH                     0              2971   13423
Birth       JiVitA-4         BANGLADESH                     1              2098    2632
Birth       JiVitA-4         BANGLADESH                     0               534    2632
Birth       Keneba           GAMBIA                         1               485    1403
Birth       Keneba           GAMBIA                         0               918    1403
Birth       MAL-ED           BANGLADESH                     1                31     205
Birth       MAL-ED           BANGLADESH                     0               174     205
Birth       MAL-ED           BRAZIL                         1                 2      60
Birth       MAL-ED           BRAZIL                         0                58      60
Birth       MAL-ED           INDIA                          1                 1      39
Birth       MAL-ED           INDIA                          0                38      39
Birth       MAL-ED           NEPAL                          1                 2      24
Birth       MAL-ED           NEPAL                          0                22      24
Birth       MAL-ED           PERU                           1                 2     213
Birth       MAL-ED           PERU                           0               211     213
Birth       MAL-ED           SOUTH AFRICA                   1                 0      91
Birth       MAL-ED           SOUTH AFRICA                   0                91      91
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               113     113
Birth       PROVIDE          BANGLADESH                     1               159     539
Birth       PROVIDE          BANGLADESH                     0               380     539
Birth       SAS-CompFeed     INDIA                          1               346     364
Birth       SAS-CompFeed     INDIA                          0                18     364
6 months    CMC-V-BCS-2002   INDIA                          1                19      19
6 months    CMC-V-BCS-2002   INDIA                          0                 0      19
6 months    EE               PAKISTAN                       1                43      48
6 months    EE               PAKISTAN                       0                 5      48
6 months    GMS-Nepal        NEPAL                          1               406     547
6 months    GMS-Nepal        NEPAL                          0               141     547
6 months    IRC              INDIA                          1                 0      14
6 months    IRC              INDIA                          0                14      14
6 months    JiVitA-3         BANGLADESH                     1              7628    9901
6 months    JiVitA-3         BANGLADESH                     0              2273    9901
6 months    JiVitA-4         BANGLADESH                     1              3316    4272
6 months    JiVitA-4         BANGLADESH                     0               956    4272
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
6 months    PROVIDE          BANGLADESH                     1               141     604
6 months    PROVIDE          BANGLADESH                     0               463     604
6 months    SAS-CompFeed     INDIA                          1               379     398
6 months    SAS-CompFeed     INDIA                          0                19     398
6 months    SAS-FoodSuppl    INDIA                          1                 0     168
6 months    SAS-FoodSuppl    INDIA                          0               168     168
24 months   CMC-V-BCS-2002   INDIA                          1                19      19
24 months   CMC-V-BCS-2002   INDIA                          0                 0      19
24 months   EE               PAKISTAN                       1                20      23
24 months   EE               PAKISTAN                       0                 3      23
24 months   GMS-Nepal        NEPAL                          1               356     470
24 months   GMS-Nepal        NEPAL                          0               114     470
24 months   IRC              INDIA                          1                 0      14
24 months   IRC              INDIA                          0                14      14
24 months   JiVitA-3         BANGLADESH                     1              3916    5088
24 months   JiVitA-3         BANGLADESH                     0              1172    5088
24 months   JiVitA-4         BANGLADESH                     1              3280    4199
24 months   JiVitA-4         BANGLADESH                     0               919    4199
24 months   Keneba           GAMBIA                         1               515    1513
24 months   Keneba           GAMBIA                         0               998    1513
24 months   LCNI-5           MALAWI                         1                34     189
24 months   LCNI-5           MALAWI                         0               155     189
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
24 months   PROVIDE          BANGLADESH                     1               137     578
24 months   PROVIDE          BANGLADESH                     0               441     578


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
![](/tmp/d57eb13c-1612-4505-b48c-d1a4b1d710de/e2b24f84-3f8b-4e56-b47b-c809951c2504/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d57eb13c-1612-4505-b48c-d1a4b1d710de/e2b24f84-3f8b-4e56-b47b-c809951c2504/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d57eb13c-1612-4505-b48c-d1a4b1d710de/e2b24f84-3f8b-4e56-b47b-c809951c2504/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    NA                -1.0491647   -1.1485493   -0.9497800
Birth       GMS-Nepal      NEPAL        0                    NA                -1.1076389   -1.2968501   -0.9184276
Birth       JiVitA-3       BANGLADESH   1                    NA                -1.5940490   -1.6194714   -1.5686265
Birth       JiVitA-3       BANGLADESH   0                    NA                -1.6007573   -1.6452412   -1.5562735
Birth       JiVitA-4       BANGLADESH   1                    NA                -1.5031935   -1.5547968   -1.4515902
Birth       JiVitA-4       BANGLADESH   0                    NA                -1.6220787   -1.7539654   -1.4901919
Birth       Keneba         GAMBIA       1                    NA                -0.0150722   -0.1336922    0.1035478
Birth       Keneba         GAMBIA       0                    NA                 0.0272876   -0.0557562    0.1103314
Birth       MAL-ED         BANGLADESH   1                    NA                -1.1293548   -1.4416912   -0.8170185
Birth       MAL-ED         BANGLADESH   0                    NA                -1.0394253   -1.1925435   -0.8863070
Birth       PROVIDE        BANGLADESH   1                    NA                -0.9760377   -1.1050691   -0.8470063
Birth       PROVIDE        BANGLADESH   0                    NA                -0.8470526   -0.9384959   -0.7556094
Birth       SAS-CompFeed   INDIA        1                    NA                -1.3813295   -1.4669649   -1.2956940
Birth       SAS-CompFeed   INDIA        0                    NA                -1.6316667   -2.4310586   -0.8322747
6 months    EE             PAKISTAN     1                    NA                -2.3121318   -2.6865239   -1.9377397
6 months    EE             PAKISTAN     0                    NA                -0.8473333   -1.8424880    0.1478213
6 months    GMS-Nepal      NEPAL        1                    NA                -1.3056486   -1.3947532   -1.2165440
6 months    GMS-Nepal      NEPAL        0                    NA                -1.4933333   -1.6620428   -1.3246238
6 months    JiVitA-3       BANGLADESH   1                    NA                -1.3072050   -1.3376533   -1.2767568
6 months    JiVitA-3       BANGLADESH   0                    NA                -1.3360449   -1.3857654   -1.2863244
6 months    JiVitA-4       BANGLADESH   1                    NA                -1.3048326   -1.3456820   -1.2639833
6 months    JiVitA-4       BANGLADESH   0                    NA                -1.4987605   -1.5883593   -1.4091616
6 months    Keneba         GAMBIA       1                    NA                -0.8984747   -0.9872128   -0.8097366
6 months    Keneba         GAMBIA       0                    NA                -0.9484639   -1.0075750   -0.8893528
6 months    LCNI-5         MALAWI       1                    NA                -1.7051064   -1.9955729   -1.4146399
6 months    LCNI-5         MALAWI       0                    NA                -1.6259111   -1.7571663   -1.4946560
6 months    MAL-ED         BANGLADESH   1                    NA                -1.2227273   -1.5131856   -0.9322689
6 months    MAL-ED         BANGLADESH   0                    NA                -1.1846380   -1.3154272   -1.0538489
6 months    MAL-ED         BRAZIL       1                    NA                 0.1629167   -0.6076951    0.9335285
6 months    MAL-ED         BRAZIL       0                    NA                 0.0405499   -0.1046915    0.1857913
6 months    MAL-ED         NEPAL        1                    NA                -0.4050000   -1.0737079    0.2637079
6 months    MAL-ED         NEPAL        0                    NA                -0.5658106   -0.6826403   -0.4489809
6 months    MAL-ED         PERU         1                    NA                -1.8680000   -2.2794681   -1.4565319
6 months    MAL-ED         PERU         0                    NA                -1.3117701   -1.4224656   -1.2010745
6 months    PROVIDE        BANGLADESH   1                    NA                -1.0912766   -1.2265269   -0.9560263
6 months    PROVIDE        BANGLADESH   0                    NA                -1.0918179   -1.1797398   -1.0038959
6 months    SAS-CompFeed   INDIA        1                    NA                -1.4578628   -1.6049871   -1.3107385
6 months    SAS-CompFeed   INDIA        0                    NA                -1.7063158   -2.4149433   -0.9976883
24 months   GMS-Nepal      NEPAL        1                    NA                -1.9043914   -2.0002013   -1.8085814
24 months   GMS-Nepal      NEPAL        0                    NA                -1.8871637   -2.0828171   -1.6915103
24 months   JiVitA-3       BANGLADESH   1                    NA                -2.0027451   -2.0430834   -1.9624069
24 months   JiVitA-3       BANGLADESH   0                    NA                -2.0420563   -2.1137193   -1.9703934
24 months   JiVitA-4       BANGLADESH   1                    NA                -1.7691159   -1.8111572   -1.7270745
24 months   JiVitA-4       BANGLADESH   0                    NA                -1.8712840   -1.9504385   -1.7921295
24 months   Keneba         GAMBIA       1                    NA                -1.5187317   -1.6046693   -1.4327942
24 months   Keneba         GAMBIA       0                    NA                -1.6231827   -1.6901634   -1.5562020
24 months   LCNI-5         MALAWI       1                    NA                -2.0273529   -2.3204751   -1.7342307
24 months   LCNI-5         MALAWI       0                    NA                -1.9514839   -2.1097913   -1.7931764
24 months   MAL-ED         BANGLADESH   1                    NA                -2.0319355   -2.4125437   -1.6513273
24 months   MAL-ED         BANGLADESH   0                    NA                -1.9443966   -2.0791660   -1.8096271
24 months   MAL-ED         BRAZIL       1                    NA                -0.1459091   -0.8952222    0.6034040
24 months   MAL-ED         BRAZIL       0                    NA                 0.0166983   -0.1559186    0.1893152
24 months   MAL-ED         NEPAL        1                    NA                -1.1950000   -1.7707330   -0.6192670
24 months   MAL-ED         NEPAL        0                    NA                -1.3216589   -1.4457846   -1.1975331
24 months   PROVIDE        BANGLADESH   1                    NA                -1.7119708   -1.8734594   -1.5504822
24 months   PROVIDE        BANGLADESH   0                    NA                -1.5683900   -1.6651684   -1.4716117


### Parameter: E(Y)


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        NA                   NA                -1.0641208   -1.1525364   -0.9757052
Birth       JiVitA-3       BANGLADESH   NA                   NA                -1.5955338   -1.6186322   -1.5724354
Birth       JiVitA-4       BANGLADESH   NA                   NA                -1.5273138   -1.5765339   -1.4780937
Birth       Keneba         GAMBIA       NA                   NA                 0.0126443   -0.0554367    0.0807254
Birth       MAL-ED         BANGLADESH   NA                   NA                -1.0530244   -1.1913751   -0.9146736
Birth       PROVIDE        BANGLADESH   NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       SAS-CompFeed   INDIA        NA                   NA                -1.3937088   -1.5095039   -1.2779137
6 months    EE             PAKISTAN     NA                   NA                -2.1595486   -2.5331781   -1.7859192
6 months    GMS-Nepal      NEPAL        NA                   NA                -1.3540280   -1.4334801   -1.2745760
6 months    JiVitA-3       BANGLADESH   NA                   NA                -1.3138259   -1.3418712   -1.2857806
6 months    JiVitA-4       BANGLADESH   NA                   NA                -1.3482303   -1.3866421   -1.3098185
6 months    Keneba         GAMBIA       NA                   NA                -0.9331108   -0.9823173   -0.8839043
6 months    LCNI-5         MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    MAL-ED         BANGLADESH   NA                   NA                -1.1900794   -1.3096296   -1.0705291
6 months    MAL-ED         BRAZIL       NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED         NEPAL        NA                   NA                -0.5622370   -0.6774081   -0.4470660
6 months    MAL-ED         PERU         NA                   NA                -1.3220326   -1.4308168   -1.2132484
6 months    PROVIDE        BANGLADESH   NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    SAS-CompFeed   INDIA        NA                   NA                -1.4697236   -1.6333919   -1.3060553
24 months   GMS-Nepal      NEPAL        NA                   NA                -1.9002128   -1.9869255   -1.8135001
24 months   JiVitA-3       BANGLADESH   NA                   NA                -2.0118003   -2.0479952   -1.9756055
24 months   JiVitA-4       BANGLADESH   NA                   NA                -1.7914765   -1.8297816   -1.7531715
24 months   Keneba         GAMBIA       NA                   NA                -1.5876293   -1.6406755   -1.5345831
24 months   LCNI-5         MALAWI       NA                   NA                -1.9651323   -2.1053230   -1.8249415
24 months   MAL-ED         BANGLADESH   NA                   NA                -1.9576341   -2.0857597   -1.8295086
24 months   MAL-ED         BRAZIL       NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED         NEPAL        NA                   NA                -1.3187671   -1.4406685   -1.1968657
24 months   PROVIDE        BANGLADESH   NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal      NEPAL        0                    1                 -0.0584742   -0.2721988    0.1552504
Birth       JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3       BANGLADESH   0                    1                 -0.0067083   -0.0553449    0.0419282
Birth       JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4       BANGLADESH   0                    1                 -0.1188851   -0.2597526    0.0219823
Birth       Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba         GAMBIA       0                    1                  0.0423597   -0.1024400    0.1871595
Birth       MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH   0                    1                  0.0899296   -0.2579198    0.4377789
Birth       PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE        BANGLADESH   0                    1                  0.1289851   -0.0291635    0.2871337
Birth       SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA        0                    1                 -0.2503372   -1.0066389    0.5059645
6 months    EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    EE             PAKISTAN     0                    1                  1.4647984    0.4015477    2.5280492
6 months    GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL        0                    1                 -0.1876847   -0.3784792    0.0031097
6 months    JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3       BANGLADESH   0                    1                 -0.0288398   -0.0817943    0.0241146
6 months    JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4       BANGLADESH   0                    1                 -0.1939278   -0.2904146   -0.0974411
6 months    Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba         GAMBIA       0                    1                 -0.0499892   -0.1566127    0.0566343
6 months    LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5         MALAWI       0                    1                  0.0791953   -0.2395502    0.3979408
6 months    MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH   0                    1                  0.0380892   -0.2804572    0.3566357
6 months    MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL       0                    1                 -0.1223668   -0.9065463    0.6618128
6 months    MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL        0                    1                 -0.1608106   -0.8396474    0.5180262
6 months    MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU         0                    1                  0.5562299    0.1301320    0.9823279
6 months    PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE        BANGLADESH   0                    1                 -0.0005413   -0.1618575    0.1607749
6 months    SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA        0                    1                 -0.2484530   -0.9061015    0.4091955
24 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL        0                    1                  0.0172276   -0.2006251    0.2350803
24 months   JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3       BANGLADESH   0                    1                 -0.0393112   -0.1190510    0.0404287
24 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4       BANGLADESH   0                    1                 -0.1021682   -0.1888390   -0.0154973
24 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba         GAMBIA       0                    1                 -0.1044510   -0.2134082    0.0045062
24 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5         MALAWI       0                    1                  0.0758691   -0.2572704    0.4090085
24 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH   0                    1                  0.0875389   -0.3162251    0.4913030
24 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL       0                    1                  0.1626074   -0.6063313    0.9315461
24 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL        0                    1                 -0.1266589   -0.7156204    0.4623026
24 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE        BANGLADESH   0                    1                  0.1435808   -0.0446866    0.3318482


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    NA                -0.0149561   -0.0696617    0.0397495
Birth       JiVitA-3       BANGLADESH   1                    NA                -0.0014848   -0.0122473    0.0092777
Birth       JiVitA-4       BANGLADESH   1                    NA                -0.0241203   -0.0524324    0.0041918
Birth       Keneba         GAMBIA       1                    NA                 0.0277165   -0.0670336    0.1224666
Birth       MAL-ED         BANGLADESH   1                    NA                 0.0763304   -0.2189504    0.3716113
Birth       PROVIDE        BANGLADESH   1                    NA                 0.0909357   -0.0206713    0.2025426
Birth       SAS-CompFeed   INDIA        1                    NA                -0.0123793   -0.0557043    0.0309456
6 months    EE             PAKISTAN     1                    NA                 0.1525832   -0.0166253    0.3217917
6 months    GMS-Nepal      NEPAL        1                    NA                -0.0483794   -0.0980402    0.0012813
6 months    JiVitA-3       BANGLADESH   1                    NA                -0.0066208   -0.0187664    0.0055247
6 months    JiVitA-4       BANGLADESH   1                    NA                -0.0433977   -0.0646542   -0.0221412
6 months    Keneba         GAMBIA       1                    NA                -0.0346361   -0.1085198    0.0392476
6 months    LCNI-5         MALAWI       1                    NA                 0.0655108   -0.1981815    0.3292031
6 months    MAL-ED         BANGLADESH   1                    NA                 0.0326479   -0.2403974    0.3056932
6 months    MAL-ED         BRAZIL       1                    NA                -0.1153409   -0.8545059    0.6238241
6 months    MAL-ED         NEPAL        1                    NA                -0.1572370   -0.8191102    0.5046361
6 months    MAL-ED         PERU         1                    NA                 0.5459674    0.1304259    0.9615089
6 months    PROVIDE        BANGLADESH   1                    NA                -0.0004149   -0.1240729    0.1232430
6 months    SAS-CompFeed   INDIA        1                    NA                -0.0118608   -0.0472806    0.0235590
24 months   GMS-Nepal      NEPAL        1                    NA                 0.0041786   -0.0486665    0.0570237
24 months   JiVitA-3       BANGLADESH   1                    NA                -0.0090552   -0.0274447    0.0093343
24 months   JiVitA-4       BANGLADESH   1                    NA                -0.0223607   -0.0411382   -0.0035832
24 months   Keneba         GAMBIA       1                    NA                -0.0688976   -0.1408109    0.0030157
24 months   LCNI-5         MALAWI       1                    NA                 0.0622207   -0.2110207    0.3354620
24 months   MAL-ED         BANGLADESH   1                    NA                 0.0743013   -0.2684328    0.4170354
24 months   MAL-ED         BRAZIL       1                    NA                 0.1520235   -0.5668915    0.8709385
24 months   MAL-ED         NEPAL        1                    NA                -0.1237671   -0.6980101    0.4504758
24 months   PROVIDE        BANGLADESH   1                    NA                 0.1095487   -0.0341812    0.2532785

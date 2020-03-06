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

**Intervention Variable:** perdiar24

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid         country                        perdiar24    n_cell     n
----------  --------------  -----------------------------  ----------  -------  ----
Birth       CMIN            BANGLADESH                     0%               12    26
Birth       CMIN            BANGLADESH                     (0%, 5%]          4    26
Birth       CMIN            BANGLADESH                     >5%              10    26
Birth       CONTENT         PERU                           0%                0     2
Birth       CONTENT         PERU                           (0%, 5%]          1     2
Birth       CONTENT         PERU                           >5%               1     2
Birth       EE              PAKISTAN                       0%              161   240
Birth       EE              PAKISTAN                       (0%, 5%]         79   240
Birth       EE              PAKISTAN                       >5%               0   240
Birth       MAL-ED          BANGLADESH                     0%               18   231
Birth       MAL-ED          BANGLADESH                     (0%, 5%]        131   231
Birth       MAL-ED          BANGLADESH                     >5%              82   231
Birth       MAL-ED          BRAZIL                         0%               34    65
Birth       MAL-ED          BRAZIL                         (0%, 5%]         29    65
Birth       MAL-ED          BRAZIL                         >5%               2    65
Birth       MAL-ED          INDIA                          0%                5    47
Birth       MAL-ED          INDIA                          (0%, 5%]         33    47
Birth       MAL-ED          INDIA                          >5%               9    47
Birth       MAL-ED          NEPAL                          0%                2    27
Birth       MAL-ED          NEPAL                          (0%, 5%]         19    27
Birth       MAL-ED          NEPAL                          >5%               6    27
Birth       MAL-ED          PERU                           0%               21   233
Birth       MAL-ED          PERU                           (0%, 5%]         89   233
Birth       MAL-ED          PERU                           >5%             123   233
Birth       MAL-ED          SOUTH AFRICA                   0%               42   113
Birth       MAL-ED          SOUTH AFRICA                   (0%, 5%]         70   113
Birth       MAL-ED          SOUTH AFRICA                   >5%               1   113
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9   125
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         85   125
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              31   125
Birth       NIH-Birth       BANGLADESH                     0%               51   605
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]        345   605
Birth       NIH-Birth       BANGLADESH                     >5%             209   605
Birth       NIH-Crypto      BANGLADESH                     0%              151   732
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]        386   732
Birth       NIH-Crypto      BANGLADESH                     >5%             195   732
Birth       PROVIDE         BANGLADESH                     0%               55   539
Birth       PROVIDE         BANGLADESH                     (0%, 5%]        327   539
Birth       PROVIDE         BANGLADESH                     >5%             157   539
6 months    CMIN            BANGLADESH                     0%                2   243
6 months    CMIN            BANGLADESH                     (0%, 5%]        112   243
6 months    CMIN            BANGLADESH                     >5%             129   243
6 months    CONTENT         PERU                           0%                6   215
6 months    CONTENT         PERU                           (0%, 5%]        142   215
6 months    CONTENT         PERU                           >5%              67   215
6 months    EE              PAKISTAN                       0%              256   373
6 months    EE              PAKISTAN                       (0%, 5%]        117   373
6 months    EE              PAKISTAN                       >5%               0   373
6 months    Guatemala BSC   GUATEMALA                      0%               29   299
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]         70   299
6 months    Guatemala BSC   GUATEMALA                      >5%             200   299
6 months    MAL-ED          BANGLADESH                     0%                6   241
6 months    MAL-ED          BANGLADESH                     (0%, 5%]        142   241
6 months    MAL-ED          BANGLADESH                     >5%              93   241
6 months    MAL-ED          BRAZIL                         0%              106   209
6 months    MAL-ED          BRAZIL                         (0%, 5%]        101   209
6 months    MAL-ED          BRAZIL                         >5%               2   209
6 months    MAL-ED          INDIA                          0%                3   236
6 months    MAL-ED          INDIA                          (0%, 5%]        191   236
6 months    MAL-ED          INDIA                          >5%              42   236
6 months    MAL-ED          NEPAL                          0%               14   236
6 months    MAL-ED          NEPAL                          (0%, 5%]        143   236
6 months    MAL-ED          NEPAL                          >5%              79   236
6 months    MAL-ED          PERU                           0%                7   273
6 months    MAL-ED          PERU                           (0%, 5%]        109   273
6 months    MAL-ED          PERU                           >5%             157   273
6 months    MAL-ED          SOUTH AFRICA                   0%               78   254
6 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]        174   254
6 months    MAL-ED          SOUTH AFRICA                   >5%               2   254
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9   247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        177   247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              61   247
6 months    NIH-Birth       BANGLADESH                     0%               15   537
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]        339   537
6 months    NIH-Birth       BANGLADESH                     >5%             183   537
6 months    NIH-Crypto      BANGLADESH                     0%              134   715
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]        386   715
6 months    NIH-Crypto      BANGLADESH                     >5%             195   715
6 months    PROVIDE         BANGLADESH                     0%               12   604
6 months    PROVIDE         BANGLADESH                     (0%, 5%]        409   604
6 months    PROVIDE         BANGLADESH                     >5%             183   604
6 months    SAS-FoodSuppl   INDIA                          0%               73   380
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]         46   380
6 months    SAS-FoodSuppl   INDIA                          >5%             261   380
24 months   CMIN            BANGLADESH                     0%                3   242
24 months   CMIN            BANGLADESH                     (0%, 5%]        114   242
24 months   CMIN            BANGLADESH                     >5%             125   242
24 months   CONTENT         PERU                           0%                4   164
24 months   CONTENT         PERU                           (0%, 5%]        108   164
24 months   CONTENT         PERU                           >5%              52   164
24 months   EE              PAKISTAN                       0%              115   167
24 months   EE              PAKISTAN                       (0%, 5%]         52   167
24 months   EE              PAKISTAN                       >5%               0   167
24 months   MAL-ED          BANGLADESH                     0%                6   212
24 months   MAL-ED          BANGLADESH                     (0%, 5%]        130   212
24 months   MAL-ED          BANGLADESH                     >5%              76   212
24 months   MAL-ED          BRAZIL                         0%               76   169
24 months   MAL-ED          BRAZIL                         (0%, 5%]         91   169
24 months   MAL-ED          BRAZIL                         >5%               2   169
24 months   MAL-ED          INDIA                          0%                3   227
24 months   MAL-ED          INDIA                          (0%, 5%]        183   227
24 months   MAL-ED          INDIA                          >5%              41   227
24 months   MAL-ED          NEPAL                          0%               12   228
24 months   MAL-ED          NEPAL                          (0%, 5%]        140   228
24 months   MAL-ED          NEPAL                          >5%              76   228
24 months   MAL-ED          PERU                           0%                1   201
24 months   MAL-ED          PERU                           (0%, 5%]         84   201
24 months   MAL-ED          PERU                           >5%             116   201
24 months   MAL-ED          SOUTH AFRICA                   0%               71   238
24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]        166   238
24 months   MAL-ED          SOUTH AFRICA                   >5%               1   238
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6   214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        156   214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              52   214
24 months   NIH-Birth       BANGLADESH                     0%                5   429
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]        279   429
24 months   NIH-Birth       BANGLADESH                     >5%             145   429
24 months   NIH-Crypto      BANGLADESH                     0%              123   514
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]        276   514
24 months   NIH-Crypto      BANGLADESH                     >5%             115   514
24 months   PROVIDE         BANGLADESH                     0%                9   578
24 months   PROVIDE         BANGLADESH                     (0%, 5%]        395   578
24 months   PROVIDE         BANGLADESH                     >5%             174   578


The following strata were considered:

* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
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
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
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
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
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

* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: PERU
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
![](/tmp/3694b32d-4981-4c56-b085-e4e423d13a70/2f5eebf3-36cc-4fa2-8854-ee7219fba0b2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3694b32d-4981-4c56-b085-e4e423d13a70/2f5eebf3-36cc-4fa2-8854-ee7219fba0b2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3694b32d-4981-4c56-b085-e4e423d13a70/2f5eebf3-36cc-4fa2-8854-ee7219fba0b2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED          BANGLADESH                     0%                   NA                -1.5172222   -2.0513134   -0.9831311
Birth       MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.9657252   -1.1345977   -0.7968527
Birth       MAL-ED          BANGLADESH                     >5%                  NA                -1.2739024   -1.5027804   -1.0450245
Birth       MAL-ED          INDIA                          0%                   NA                -0.9220000   -1.6509223   -0.1930777
Birth       MAL-ED          INDIA                          (0%, 5%]             NA                -1.2281818   -1.5833498   -0.8730139
Birth       MAL-ED          INDIA                          >5%                  NA                -1.2700000   -1.9601079   -0.5798921
Birth       MAL-ED          PERU                           0%                   NA                -0.6809524   -1.0395711   -0.3223337
Birth       MAL-ED          PERU                           (0%, 5%]             NA                -0.9094382   -1.0884347   -0.7304417
Birth       MAL-ED          PERU                           >5%                  NA                -0.8979675   -1.0671488   -0.7287862
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.5222222   -2.3091001   -0.7353443
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.2164706   -1.4939186   -0.9390226
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.8822581   -1.1471959   -0.6173203
Birth       NIH-Birth       BANGLADESH                     0%                   NA                -1.0513725   -1.3462846   -0.7564605
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -0.9249710   -1.0473535   -0.8025885
Birth       NIH-Birth       BANGLADESH                     >5%                  NA                -0.9127512   -1.0542792   -0.7712232
Birth       NIH-Crypto      BANGLADESH                     0%                   NA                -0.9038411   -1.0757728   -0.7319093
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.8786010   -0.9755415   -0.7816606
Birth       NIH-Crypto      BANGLADESH                     >5%                  NA                -0.9750256   -1.1063730   -0.8436783
Birth       PROVIDE         BANGLADESH                     0%                   NA                -0.9823636   -1.1851702   -0.7795571
Birth       PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.8845260   -0.9766933   -0.7923587
Birth       PROVIDE         BANGLADESH                     >5%                  NA                -0.8522293   -1.0082634   -0.6961952
6 months    CONTENT         PERU                           0%                   NA                -1.0567500   -1.4658384   -0.6476616
6 months    CONTENT         PERU                           (0%, 5%]             NA                -0.3029472   -0.4697708   -0.1361235
6 months    CONTENT         PERU                           >5%                  NA                -0.1570746   -0.3744579    0.0603086
6 months    Guatemala BSC   GUATEMALA                      0%                   NA                -1.4736782   -1.8824548   -1.0649015
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]             NA                -1.4497381   -1.6578705   -1.2416057
6 months    Guatemala BSC   GUATEMALA                      >5%                  NA                -1.6139500   -1.7499439   -1.4779561
6 months    MAL-ED          BANGLADESH                     0%                   NA                -0.9866667   -1.5612360   -0.4120973
6 months    MAL-ED          BANGLADESH                     (0%, 5%]             NA                -1.0936385   -1.2371707   -0.9501063
6 months    MAL-ED          BANGLADESH                     >5%                  NA                -1.3891039   -1.5904471   -1.1877608
6 months    MAL-ED          NEPAL                          0%                   NA                -0.3346429   -0.8209957    0.1517099
6 months    MAL-ED          NEPAL                          (0%, 5%]             NA                -0.6071096   -0.7434031   -0.4708160
6 months    MAL-ED          NEPAL                          >5%                  NA                -0.5193882   -0.7294856   -0.3092908
6 months    MAL-ED          PERU                           0%                   NA                -1.0700000   -1.6970711   -0.4429289
6 months    MAL-ED          PERU                           (0%, 5%]             NA                -1.3015443   -1.4624676   -1.1406211
6 months    MAL-ED          PERU                           >5%                  NA                -1.3503344   -1.4983707   -1.2022981
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.4750000   -2.4233687   -0.5266313
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.3915631   -1.5359143   -1.2472119
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -1.2868579   -1.5070055   -1.0667103
6 months    NIH-Birth       BANGLADESH                     0%                   NA                -1.7460000   -2.1223087   -1.3696913
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -1.3942232   -1.5087410   -1.2797054
6 months    NIH-Birth       BANGLADESH                     >5%                  NA                -1.4040027   -1.5508165   -1.2571890
6 months    NIH-Crypto      BANGLADESH                     0%                   NA                -1.1508209   -1.3220068   -0.9796350
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -1.1976036   -1.2948985   -1.1003088
6 months    NIH-Crypto      BANGLADESH                     >5%                  NA                -1.2336923   -1.3662930   -1.1010917
6 months    PROVIDE         BANGLADESH                     0%                   NA                -1.5808333   -2.0021611   -1.1595056
6 months    PROVIDE         BANGLADESH                     (0%, 5%]             NA                -1.0841483   -1.1720302   -0.9962664
6 months    PROVIDE         BANGLADESH                     >5%                  NA                -1.0764754   -1.2186655   -0.9342853
6 months    SAS-FoodSuppl   INDIA                          0%                   NA                -2.0310959   -2.2985455   -1.7636463
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                -1.7695652   -2.0730457   -1.4660847
6 months    SAS-FoodSuppl   INDIA                          >5%                  NA                -1.8844061   -2.0207523   -1.7480600
24 months   MAL-ED          BANGLADESH                     0%                   NA                -1.6983333   -2.1891875   -1.2074792
24 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                -1.9507308   -2.1166572   -1.7848043
24 months   MAL-ED          BANGLADESH                     >5%                  NA                -2.0478289   -2.2529623   -1.8426955
24 months   MAL-ED          NEPAL                          0%                   NA                -0.9850000   -1.4214027   -0.5485973
24 months   MAL-ED          NEPAL                          (0%, 5%]             NA                -1.3090000   -1.4569681   -1.1610319
24 months   MAL-ED          NEPAL                          >5%                  NA                -1.3559211   -1.5761279   -1.1357142
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -3.2400000   -4.2371443   -2.2428557
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -2.6175962   -2.7782509   -2.4569414
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -2.6608654   -2.9071887   -2.4145421
24 months   NIH-Birth       BANGLADESH                     0%                   NA                -1.6920000   -1.8179481   -1.5660519
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -2.2130914   -2.3480900   -2.0780928
24 months   NIH-Birth       BANGLADESH                     >5%                  NA                -2.2487126   -2.4051224   -2.0923029
24 months   NIH-Crypto      BANGLADESH                     0%                   NA                -1.4076423   -1.5742251   -1.2410595
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -1.4012681   -1.5135226   -1.2890137
24 months   NIH-Crypto      BANGLADESH                     >5%                  NA                -1.5732174   -1.7595245   -1.3869103
24 months   PROVIDE         BANGLADESH                     0%                   NA                -1.9750000   -2.3266294   -1.6233706
24 months   PROVIDE         BANGLADESH                     (0%, 5%]             NA                -1.5859747   -1.6839331   -1.4880162
24 months   PROVIDE         BANGLADESH                     >5%                  NA                -1.6204885   -1.7821075   -1.4588695


### Parameter: E(Y)


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED          BANGLADESH                     NA                   NA                -1.1180952   -1.2525408   -0.9836496
Birth       MAL-ED          INDIA                          NA                   NA                -1.2036170   -1.4976814   -0.9095527
Birth       MAL-ED          PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1556000   -1.3655361   -0.9456639
Birth       NIH-Birth       BANGLADESH                     NA                   NA                -0.9314050   -1.0202164   -0.8425936
Birth       NIH-Crypto      BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
6 months    CONTENT         PERU                           NA                   NA                -0.2785256   -0.4098735   -0.1471776
6 months    Guatemala BSC   GUATEMALA                      NA                   NA                -1.5619008   -1.6727702   -1.4510313
6 months    MAL-ED          BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED          NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED          PERU                           NA                   NA                -1.3236661   -1.4316775   -1.2156546
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Birth       BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
24 months   MAL-ED          BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED          NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Birth       BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.5514970   -0.0086559    1.1116500
Birth       MAL-ED          BANGLADESH                     >5%                  0%                 0.2433198   -0.3377469    0.8243865
Birth       MAL-ED          INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          INDIA                          (0%, 5%]             0%                -0.3061818   -1.1170283    0.5046647
Birth       MAL-ED          INDIA                          >5%                  0%                -0.3480000   -1.3517812    0.6557812
Birth       MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          PERU                           (0%, 5%]             0%                -0.2284858   -0.6292939    0.1723223
Birth       MAL-ED          PERU                           >5%                  0%                -0.2170151   -0.6135371    0.1795069
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.3057516   -0.5286070    1.1401102
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.6399642   -0.1903183    1.4702466
Birth       NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.1264015   -0.1928955    0.4456986
Birth       NIH-Birth       BANGLADESH                     >5%                  0%                 0.1386214   -0.1884922    0.4657350
Birth       NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.0252400   -0.1721377    0.2226178
Birth       NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0711846   -0.2875469    0.1451777
Birth       PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0978376   -0.1249298    0.3206051
Birth       PROVIDE         BANGLADESH                     >5%                  0%                 0.1301343   -0.1257507    0.3860194
6 months    CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    CONTENT         PERU                           (0%, 5%]             0%                 0.7538028    0.3120071    1.1955985
6 months    CONTENT         PERU                           >5%                  0%                 0.8996754    0.4364165    1.3629343
6 months    Guatemala BSC   GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]             0%                 0.0239401   -0.4347728    0.4826529
6 months    Guatemala BSC   GUATEMALA                      >5%                  0%                -0.1402718   -0.5710766    0.2905329
6 months    MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.1069718   -0.6991976    0.4852540
6 months    MAL-ED          BANGLADESH                     >5%                  0%                -0.4024373   -1.0112632    0.2063886
6 months    MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          NEPAL                          (0%, 5%]             0%                -0.2724667   -0.7775558    0.2326224
6 months    MAL-ED          NEPAL                          >5%                  0%                -0.1847453   -0.7145377    0.3450470
6 months    MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          PERU                           (0%, 5%]             0%                -0.2315443   -0.8789349    0.4158462
6 months    MAL-ED          PERU                           >5%                  0%                -0.2803344   -0.9246425    0.3639737
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0834369   -0.8758547    1.0427285
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1881421   -0.7854431    1.1617272
6 months    NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.3517768   -0.0415711    0.7451247
6 months    NIH-Birth       BANGLADESH                     >5%                  0%                 0.3419973   -0.0619365    0.7459310
6 months    NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0467827   -0.2436860    0.1501206
6 months    NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0828714   -0.2994067    0.1336639
6 months    PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.4966850    0.0662895    0.9270805
6 months    PROVIDE         BANGLADESH                     >5%                  0%                 0.5043579    0.0596838    0.9490321
6 months    SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                 0.2615307   -0.1429810    0.6660424
6 months    SAS-FoodSuppl   INDIA                          >5%                  0%                 0.1466898   -0.1535095    0.4468890
24 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.2523974   -0.7705377    0.2657429
24 months   MAL-ED          BANGLADESH                     >5%                  0%                -0.3494956   -0.8814895    0.1824983
24 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED          NEPAL                          (0%, 5%]             0%                -0.3240000   -0.7848057    0.1368057
24 months   MAL-ED          NEPAL                          >5%                  0%                -0.3709211   -0.8597343    0.1178922
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.6224038   -0.3875995    1.6324072
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.5791346   -0.4479836    1.6062529
24 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.5210914   -0.7057196   -0.3364632
24 months   NIH-Birth       BANGLADESH                     >5%                  0%                -0.5567126   -0.7575284   -0.3558969
24 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.0063742   -0.1945011    0.2072494
24 months   NIH-Crypto      BANGLADESH                     >5%                  0%                -0.1655751   -0.4154954    0.0843452
24 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.3890253    0.0240060    0.7540446
24 months   PROVIDE         BANGLADESH                     >5%                  0%                 0.3545115   -0.0324820    0.7415049


### Parameter: PAR


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED          BANGLADESH                     0%                   NA                 0.3991270   -0.1096696    0.9079235
Birth       MAL-ED          INDIA                          0%                   NA                -0.2816170   -0.9920768    0.4288428
Birth       MAL-ED          PERU                           0%                   NA                -0.2018373   -0.5470735    0.1433989
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.3666222   -0.3910641    1.1243085
Birth       NIH-Birth       BANGLADESH                     0%                   NA                 0.1199676   -0.1632238    0.4031590
Birth       NIH-Crypto      BANGLADESH                     0%                   NA                -0.0056535   -0.1555495    0.1442425
Birth       PROVIDE         BANGLADESH                     0%                   NA                 0.0972616   -0.0986113    0.2931345
6 months    CONTENT         PERU                           0%                   NA                 0.7782244    0.3595779    1.1968710
6 months    Guatemala BSC   GUATEMALA                      0%                   NA                -0.0882226   -0.4715980    0.2951527
6 months    MAL-ED          BANGLADESH                     0%                   NA                -0.2183264   -0.7904838    0.3538310
6 months    MAL-ED          NEPAL                          0%                   NA                -0.2269391   -0.6972093    0.2433312
6 months    MAL-ED          PERU                           0%                   NA                -0.2536661   -0.8739238    0.3665917
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.1062551   -0.8150201    1.0275302
6 months    NIH-Birth       BANGLADESH                     0%                   NA                 0.3386179   -0.0376278    0.7148637
6 months    NIH-Crypto      BANGLADESH                     0%                   NA                -0.0478574   -0.2008955    0.1051807
6 months    PROVIDE         BANGLADESH                     0%                   NA                 0.4891418    0.0717925    0.9064912
6 months    SAS-FoodSuppl   INDIA                          0%                   NA                 0.1324117   -0.1060466    0.3708700
24 months   MAL-ED          BANGLADESH                     0%                   NA                -0.2800629   -0.7733515    0.2132257
24 months   MAL-ED          NEPAL                          0%                   NA                -0.3225877   -0.7523279    0.1071525
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.5944393   -0.3837281    1.5726066
24 months   NIH-Birth       BANGLADESH                     0%                   NA                -0.5270579   -0.6871036   -0.3670122
24 months   NIH-Crypto      BANGLADESH                     0%                   NA                -0.0336223   -0.1801361    0.1128914
24 months   PROVIDE         BANGLADESH                     0%                   NA                 0.3725779    0.0198694    0.7252863

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

**Intervention Variable:** perdiar6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid      country                        perdiar6    n_cell     n
----------  -----------  -----------------------------  ---------  -------  ----
Birth       CMIN         BANGLADESH                     0%              10    19
Birth       CMIN         BANGLADESH                     (0%, 5%]         3    19
Birth       CMIN         BANGLADESH                     >5%              6    19
Birth       CONTENT      PERU                           0%               0     2
Birth       CONTENT      PERU                           (0%, 5%]         1     2
Birth       CONTENT      PERU                           >5%              1     2
Birth       EE           PAKISTAN                       0%             164   177
Birth       EE           PAKISTAN                       (0%, 5%]        11   177
Birth       EE           PAKISTAN                       >5%              2   177
Birth       MAL-ED       BANGLADESH                     0%              65   215
Birth       MAL-ED       BANGLADESH                     (0%, 5%]        86   215
Birth       MAL-ED       BANGLADESH                     >5%             64   215
Birth       MAL-ED       BRAZIL                         0%              54    62
Birth       MAL-ED       BRAZIL                         (0%, 5%]         6    62
Birth       MAL-ED       BRAZIL                         >5%              2    62
Birth       MAL-ED       INDIA                          0%              11    45
Birth       MAL-ED       INDIA                          (0%, 5%]        23    45
Birth       MAL-ED       INDIA                          >5%             11    45
Birth       MAL-ED       NEPAL                          0%               8    26
Birth       MAL-ED       NEPAL                          (0%, 5%]        10    26
Birth       MAL-ED       NEPAL                          >5%              8    26
Birth       MAL-ED       PERU                           0%              67   228
Birth       MAL-ED       PERU                           (0%, 5%]        69   228
Birth       MAL-ED       PERU                           >5%             92   228
Birth       MAL-ED       SOUTH AFRICA                   0%              85   112
Birth       MAL-ED       SOUTH AFRICA                   (0%, 5%]        23   112
Birth       MAL-ED       SOUTH AFRICA                   >5%              4   112
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              51   115
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        44   115
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             20   115
Birth       NIH-Birth    BANGLADESH                     0%             150   572
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]       171   572
Birth       NIH-Birth    BANGLADESH                     >5%            251   572
Birth       NIH-Crypto   BANGLADESH                     0%             345   707
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]       160   707
Birth       NIH-Crypto   BANGLADESH                     >5%            202   707
Birth       PROVIDE      BANGLADESH                     0%             160   532
Birth       PROVIDE      BANGLADESH                     (0%, 5%]       206   532
Birth       PROVIDE      BANGLADESH                     >5%            166   532
6 months    CMIN         BANGLADESH                     0%              81   243
6 months    CMIN         BANGLADESH                     (0%, 5%]        58   243
6 months    CMIN         BANGLADESH                     >5%            104   243
6 months    CONTENT      PERU                           0%             115   215
6 months    CONTENT      PERU                           (0%, 5%]        43   215
6 months    CONTENT      PERU                           >5%             57   215
6 months    EE           PAKISTAN                       0%             338   375
6 months    EE           PAKISTAN                       (0%, 5%]        35   375
6 months    EE           PAKISTAN                       >5%              2   375
6 months    MAL-ED       BANGLADESH                     0%              71   241
6 months    MAL-ED       BANGLADESH                     (0%, 5%]        92   241
6 months    MAL-ED       BANGLADESH                     >5%             78   241
6 months    MAL-ED       BRAZIL                         0%             192   209
6 months    MAL-ED       BRAZIL                         (0%, 5%]        15   209
6 months    MAL-ED       BRAZIL                         >5%              2   209
6 months    MAL-ED       INDIA                          0%              50   236
6 months    MAL-ED       INDIA                          (0%, 5%]       127   236
6 months    MAL-ED       INDIA                          >5%             59   236
6 months    MAL-ED       NEPAL                          0%              80   236
6 months    MAL-ED       NEPAL                          (0%, 5%]        76   236
6 months    MAL-ED       NEPAL                          >5%             80   236
6 months    MAL-ED       PERU                           0%              68   273
6 months    MAL-ED       PERU                           (0%, 5%]        89   273
6 months    MAL-ED       PERU                           >5%            116   273
6 months    MAL-ED       SOUTH AFRICA                   0%             190   254
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]        55   254
6 months    MAL-ED       SOUTH AFRICA                   >5%              9   254
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%             105   247
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        96   247
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             46   247
6 months    NIH-Birth    BANGLADESH                     0%             129   537
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]       169   537
6 months    NIH-Birth    BANGLADESH                     >5%            239   537
6 months    NIH-Crypto   BANGLADESH                     0%             341   715
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]       167   715
6 months    NIH-Crypto   BANGLADESH                     >5%            207   715
6 months    PROVIDE      BANGLADESH                     0%             157   603
6 months    PROVIDE      BANGLADESH                     (0%, 5%]       246   603
6 months    PROVIDE      BANGLADESH                     >5%            200   603
24 months   CMIN         BANGLADESH                     0%              85   243
24 months   CMIN         BANGLADESH                     (0%, 5%]        58   243
24 months   CMIN         BANGLADESH                     >5%            100   243
24 months   CONTENT      PERU                           0%              84   164
24 months   CONTENT      PERU                           (0%, 5%]        36   164
24 months   CONTENT      PERU                           >5%             44   164
24 months   EE           PAKISTAN                       0%             153   168
24 months   EE           PAKISTAN                       (0%, 5%]        14   168
24 months   EE           PAKISTAN                       >5%              1   168
24 months   MAL-ED       BANGLADESH                     0%              64   212
24 months   MAL-ED       BANGLADESH                     (0%, 5%]        83   212
24 months   MAL-ED       BANGLADESH                     >5%             65   212
24 months   MAL-ED       BRAZIL                         0%             154   169
24 months   MAL-ED       BRAZIL                         (0%, 5%]        13   169
24 months   MAL-ED       BRAZIL                         >5%              2   169
24 months   MAL-ED       INDIA                          0%              48   227
24 months   MAL-ED       INDIA                          (0%, 5%]       122   227
24 months   MAL-ED       INDIA                          >5%             57   227
24 months   MAL-ED       NEPAL                          0%              77   228
24 months   MAL-ED       NEPAL                          (0%, 5%]        75   228
24 months   MAL-ED       NEPAL                          >5%             76   228
24 months   MAL-ED       PERU                           0%              53   201
24 months   MAL-ED       PERU                           (0%, 5%]        64   201
24 months   MAL-ED       PERU                           >5%             84   201
24 months   MAL-ED       SOUTH AFRICA                   0%             177   238
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]        52   238
24 months   MAL-ED       SOUTH AFRICA                   >5%              9   238
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              92   214
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        83   214
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             39   214
24 months   NIH-Birth    BANGLADESH                     0%             107   428
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]       127   428
24 months   NIH-Birth    BANGLADESH                     >5%            194   428
24 months   NIH-Crypto   BANGLADESH                     0%             277   514
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]       106   514
24 months   NIH-Crypto   BANGLADESH                     >5%            131   514
24 months   PROVIDE      BANGLADESH                     0%             153   579
24 months   PROVIDE      BANGLADESH                     (0%, 5%]       232   579
24 months   PROVIDE      BANGLADESH                     >5%            194   579


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
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/507d89ac-8ec3-4c7d-8229-d1fc149a4563/b00e7045-7a8a-40b1-8ba0-b845e85fbf12/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/507d89ac-8ec3-4c7d-8229-d1fc149a4563/b00e7045-7a8a-40b1-8ba0-b845e85fbf12/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/507d89ac-8ec3-4c7d-8229-d1fc149a4563/b00e7045-7a8a-40b1-8ba0-b845e85fbf12/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     0%                   NA                -0.7463077   -1.0329570   -0.4596584
Birth       MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.0988953   -1.3139951   -0.8837956
Birth       MAL-ED       BANGLADESH                     >5%                  NA                -0.9294531   -1.1844604   -0.6744459
Birth       MAL-ED       INDIA                          0%                   NA                -0.7790909   -1.4191424   -0.1390394
Birth       MAL-ED       INDIA                          (0%, 5%]             NA                -1.2404348   -1.5310948   -0.9497747
Birth       MAL-ED       INDIA                          >5%                  NA                -0.4418182   -1.0034092    0.1197728
Birth       MAL-ED       NEPAL                          0%                   NA                -0.5662500   -1.1479485    0.0154485
Birth       MAL-ED       NEPAL                          (0%, 5%]             NA                -0.7310000   -1.3926378   -0.0693622
Birth       MAL-ED       NEPAL                          >5%                  NA                -1.0175000   -1.5408661   -0.4941339
Birth       MAL-ED       PERU                           0%                   NA                -0.1191045   -0.3254996    0.0872906
Birth       MAL-ED       PERU                           (0%, 5%]             NA                 0.1349275   -0.0967958    0.3666509
Birth       MAL-ED       PERU                           >5%                  NA                -0.1433696   -0.3299566    0.0432175
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 1.0260784    0.7788588    1.2732980
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.5700000    0.2205515    0.9194485
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.5135000    0.1132895    0.9137105
Birth       NIH-Birth    BANGLADESH                     0%                   NA                -1.3062667   -1.4818587   -1.1306746
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -1.2980702   -1.4741349   -1.1220054
Birth       NIH-Birth    BANGLADESH                     >5%                  NA                -1.4173108   -1.5629379   -1.2716836
Birth       NIH-Crypto   BANGLADESH                     0%                   NA                -1.2815362   -1.4059094   -1.1571630
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.2908125   -1.4484391   -1.1331859
Birth       NIH-Crypto   BANGLADESH                     >5%                  NA                -1.1433416   -1.3026371   -0.9840461
Birth       PROVIDE      BANGLADESH                     0%                   NA                -1.2441875   -1.3833716   -1.1050034
Birth       PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.2991262   -1.4200041   -1.1782484
Birth       PROVIDE      BANGLADESH                     >5%                  NA                -1.3499398   -1.4912945   -1.2085851
6 months    CMIN         BANGLADESH                     0%                   NA                -0.4256379   -0.6637716   -0.1875041
6 months    CMIN         BANGLADESH                     (0%, 5%]             NA                -0.4834483   -0.8149497   -0.1519469
6 months    CMIN         BANGLADESH                     >5%                  NA                -0.7495032   -0.9584404   -0.5405661
6 months    CONTENT      PERU                           0%                   NA                 1.0385522    0.8816859    1.1954184
6 months    CONTENT      PERU                           (0%, 5%]             NA                 1.1025698    0.8611466    1.3439930
6 months    CONTENT      PERU                           >5%                  NA                 1.0878596    0.8366786    1.3390407
6 months    MAL-ED       BANGLADESH                     0%                   NA                -0.0815728   -0.3215938    0.1584483
6 months    MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.2695833   -0.4791197   -0.0600469
6 months    MAL-ED       BANGLADESH                     >5%                  NA                -0.0331624   -0.2518627    0.1855379
6 months    MAL-ED       INDIA                          0%                   NA                -0.7594167   -1.0231419   -0.4956914
6 months    MAL-ED       INDIA                          (0%, 5%]             NA                -0.6963386   -0.8529904   -0.5396868
6 months    MAL-ED       INDIA                          >5%                  NA                -0.6895198   -0.9926181   -0.3864215
6 months    MAL-ED       NEPAL                          0%                   NA                -0.0001042   -0.2477639    0.2475555
6 months    MAL-ED       NEPAL                          (0%, 5%]             NA                 0.0741447   -0.1106181    0.2589076
6 months    MAL-ED       NEPAL                          >5%                  NA                 0.2554375    0.0183520    0.4925230
6 months    MAL-ED       PERU                           0%                   NA                 0.9214338    0.6894491    1.1534185
6 months    MAL-ED       PERU                           (0%, 5%]             NA                 1.0652622    0.8511851    1.2793392
6 months    MAL-ED       PERU                           >5%                  NA                 1.1204382    0.9309400    1.3099364
6 months    MAL-ED       SOUTH AFRICA                   0%                   NA                 0.5939825    0.4106451    0.7773198
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                 0.3367273    0.0613640    0.6120905
6 months    MAL-ED       SOUTH AFRICA                   >5%                  NA                 0.7040741    0.0137907    1.3943574
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.4544286    0.2470483    0.6618088
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.5687500    0.3531897    0.7843103
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.6550362    0.3946140    0.9154585
6 months    NIH-Birth    BANGLADESH                     0%                   NA                -0.4229070   -0.5974325   -0.2483814
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -0.3177811   -0.4889408   -0.1466213
6 months    NIH-Birth    BANGLADESH                     >5%                  NA                -0.5522838   -0.6840891   -0.4204785
6 months    NIH-Crypto   BANGLADESH                     0%                   NA                -0.0382405   -0.1489638    0.0724828
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                 0.0538323   -0.1060491    0.2137138
6 months    NIH-Crypto   BANGLADESH                     >5%                  NA                 0.1223671   -0.0329177    0.2776520
6 months    PROVIDE      BANGLADESH                     0%                   NA                -0.2673248   -0.4121808   -0.1224689
6 months    PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.2681098   -0.3972010   -0.1390185
6 months    PROVIDE      BANGLADESH                     >5%                  NA                -0.0606333   -0.2138844    0.0926177
24 months   CMIN         BANGLADESH                     0%                   NA                -0.8715882   -1.0723369   -0.6708396
24 months   CMIN         BANGLADESH                     (0%, 5%]             NA                -0.6974138   -0.9031395   -0.4916881
24 months   CMIN         BANGLADESH                     >5%                  NA                -0.9287500   -1.0974940   -0.7600060
24 months   CONTENT      PERU                           0%                   NA                 0.5875595    0.4244421    0.7506769
24 months   CONTENT      PERU                           (0%, 5%]             NA                 0.6330556    0.2775494    0.9885617
24 months   CONTENT      PERU                           >5%                  NA                 0.5603409    0.2985763    0.8221055
24 months   MAL-ED       BANGLADESH                     0%                   NA                -0.7947656   -1.0185064   -0.5710248
24 months   MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.8981325   -1.0857734   -0.7104916
24 months   MAL-ED       BANGLADESH                     >5%                  NA                -0.7427692   -0.9696357   -0.5159028
24 months   MAL-ED       INDIA                          0%                   NA                -1.0001042   -1.2392517   -0.7609567
24 months   MAL-ED       INDIA                          (0%, 5%]             NA                -0.9073361   -1.0527026   -0.7619696
24 months   MAL-ED       INDIA                          >5%                  NA                -1.0057018   -1.2764059   -0.7349977
24 months   MAL-ED       NEPAL                          0%                   NA                -0.3575325   -0.5714542   -0.1436107
24 months   MAL-ED       NEPAL                          (0%, 5%]             NA                -0.4609333   -0.6300020   -0.2918647
24 months   MAL-ED       NEPAL                          >5%                  NA                -0.3076316   -0.5098967   -0.1053664
24 months   MAL-ED       PERU                           0%                   NA                -0.0365881   -0.2885635    0.2153874
24 months   MAL-ED       PERU                           (0%, 5%]             NA                 0.0724479   -0.1306164    0.2755122
24 months   MAL-ED       PERU                           >5%                  NA                 0.2339683    0.0440025    0.4239340
24 months   MAL-ED       SOUTH AFRICA                   0%                   NA                 0.4176648    0.2735376    0.5617920
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                 0.3947596    0.1539398    0.6355795
24 months   MAL-ED       SOUTH AFRICA                   >5%                  NA                 0.3216667   -0.2059039    0.8492372
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0594203   -0.1195615    0.2384021
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0239157   -0.2235292    0.1756979
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.2114103   -0.1187445    0.5415650
24 months   NIH-Birth    BANGLADESH                     0%                   NA                -0.9478349   -1.1568212   -0.7388485
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -0.8413714   -1.0198444   -0.6628983
24 months   NIH-Birth    BANGLADESH                     >5%                  NA                -0.9375430   -1.0776974   -0.7973885
24 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.5189170   -0.6588826   -0.3789513
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.7803774   -0.9578240   -0.6029307
24 months   NIH-Crypto   BANGLADESH                     >5%                  NA                -0.6661069   -0.8348057   -0.4974080
24 months   PROVIDE      BANGLADESH                     0%                   NA                -0.9221242   -1.0736726   -0.7705757
24 months   PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.9527802   -1.0795985   -0.8259619
24 months   PROVIDE      BANGLADESH                     >5%                  NA                -0.7981443   -0.9507302   -0.6455585


### Parameter: E(Y)


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     NA                   NA                -0.9418605   -1.0869834   -0.7967375
Birth       MAL-ED       INDIA                          NA                   NA                -0.9324444   -1.2067907   -0.6580982
Birth       MAL-ED       NEPAL                          NA                   NA                -0.7684615   -1.1257770   -0.4111460
Birth       MAL-ED       PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7624348    0.5710709    0.9537986
Birth       NIH-Birth    BANGLADESH                     NA                   NA                -1.3525437   -1.4473932   -1.2576942
Birth       NIH-Crypto   BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       PROVIDE      BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
6 months    CMIN         BANGLADESH                     NA                   NA                -0.5780453   -0.7226627   -0.4334279
6 months    CONTENT      PERU                           NA                   NA                 1.0644279    0.9468682    1.1819876
6 months    MAL-ED       BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    MAL-ED       INDIA                          NA                   NA                -0.7079979   -0.8344175   -0.5815783
6 months    MAL-ED       NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    MAL-ED       PERU                           NA                   NA                 1.0528816    0.9313005    1.1744626
6 months    MAL-ED       SOUTH AFRICA                   NA                   NA                 0.5421785    0.3900443    0.6943126
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    NIH-Birth    BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto   BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROVIDE      BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
24 months   CMIN         BANGLADESH                     NA                   NA                -0.8535391   -0.9644236   -0.7426546
24 months   CONTENT      PERU                           NA                   NA                 0.5902439    0.4560143    0.7244735
24 months   MAL-ED       BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED       INDIA                          NA                   NA                -0.9516520   -1.0670654   -0.8362385
24 months   MAL-ED       NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   MAL-ED       PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   MAL-ED       SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   NIH-Birth    BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto   BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROVIDE      BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187


### Parameter: ATE


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.3525877   -0.7109669    0.0057916
Birth       MAL-ED       BANGLADESH                     >5%                  0%                -0.1831454   -0.5668074    0.2005165
Birth       MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       INDIA                          (0%, 5%]             0%                -0.4613439   -1.1643014    0.2416136
Birth       MAL-ED       INDIA                          >5%                  0%                 0.3372727   -0.5142262    1.1887717
Birth       MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       NEPAL                          (0%, 5%]             0%                -0.1647500   -1.0457368    0.7162368
Birth       MAL-ED       NEPAL                          >5%                  0%                -0.4512500   -1.2337366    0.3312366
Birth       MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU                           (0%, 5%]             0%                 0.2540320   -0.0562818    0.5643458
Birth       MAL-ED       PERU                           >5%                  0%                -0.0242651   -0.3024982    0.2539680
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.4560784   -0.8841342   -0.0280226
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.5125784   -0.9829889   -0.0421680
Birth       NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.0081965   -0.2404627    0.2568557
Birth       NIH-Birth    BANGLADESH                     >5%                  0%                -0.1110441   -0.3391665    0.1170783
Birth       NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0092763   -0.2100618    0.1915093
Birth       NIH-Crypto   BANGLADESH                     >5%                  0%                 0.1381946   -0.0639037    0.3402930
Birth       PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0549387   -0.2392853    0.1294078
Birth       PROVIDE      BANGLADESH                     >5%                  0%                -0.1057523   -0.3041291    0.0926245
6 months    CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    CMIN         BANGLADESH                     (0%, 5%]             0%                -0.0578104   -0.4659781    0.3503573
6 months    CMIN         BANGLADESH                     >5%                  0%                -0.3238653   -0.6406656   -0.0070651
6 months    CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    CONTENT      PERU                           (0%, 5%]             0%                 0.0640176   -0.2238924    0.3519276
6 months    CONTENT      PERU                           >5%                  0%                 0.0493075   -0.2468326    0.3454476
6 months    MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.1880106   -0.5066257    0.1306046
6 months    MAL-ED       BANGLADESH                     >5%                  0%                 0.0484104   -0.2763047    0.3731255
6 months    MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA                          (0%, 5%]             0%                 0.0630781   -0.2436642    0.3698203
6 months    MAL-ED       INDIA                          >5%                  0%                 0.0698969   -0.3318737    0.4716675
6 months    MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0742489   -0.2347376    0.3832354
6 months    MAL-ED       NEPAL                          >5%                  0%                 0.2555417   -0.0873065    0.5983898
6 months    MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU                           (0%, 5%]             0%                 0.1438283   -0.1718390    0.4594957
6 months    MAL-ED       PERU                           >5%                  0%                 0.1990044   -0.1005394    0.4985482
6 months    MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.2572552   -0.5880686    0.0735582
6 months    MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.1100916   -0.6041238    0.8243071
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1143214   -0.1847986    0.4134415
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.2006077   -0.1322982    0.5335135
6 months    NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.1051259   -0.1393221    0.3495739
6 months    NIH-Birth    BANGLADESH                     >5%                  0%                -0.1293768   -0.3480817    0.0893280
6 months    NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0920728   -0.1024053    0.2865509
6 months    NIH-Crypto   BANGLADESH                     >5%                  0%                 0.1606076   -0.0301095    0.3513247
6 months    PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0007849   -0.1948153    0.1932455
6 months    PROVIDE      BANGLADESH                     >5%                  0%                 0.2066915   -0.0041855    0.4175685
24 months   CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   CMIN         BANGLADESH                     (0%, 5%]             0%                 0.1741744   -0.1132679    0.4616168
24 months   CMIN         BANGLADESH                     >5%                  0%                -0.0571618   -0.3194108    0.2050873
24 months   CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   CONTENT      PERU                           (0%, 5%]             0%                 0.0454960   -0.3456457    0.4366378
24 months   CONTENT      PERU                           >5%                  0%                -0.0272186   -0.3356469    0.2812096
24 months   MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.1033669   -0.3953756    0.1886418
24 months   MAL-ED       BANGLADESH                     >5%                  0%                 0.0519964   -0.2666387    0.3706315
24 months   MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA                          (0%, 5%]             0%                 0.0927681   -0.1870943    0.3726305
24 months   MAL-ED       INDIA                          >5%                  0%                -0.0055976   -0.3668070    0.3556118
24 months   MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL                          (0%, 5%]             0%                -0.1034009   -0.3760668    0.1692651
24 months   MAL-ED       NEPAL                          >5%                  0%                 0.0499009   -0.2445031    0.3443049
24 months   MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU                           (0%, 5%]             0%                 0.1090360   -0.2145792    0.4326511
24 months   MAL-ED       PERU                           >5%                  0%                 0.2705563   -0.0450045    0.5861171
24 months   MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0229052   -0.3035595    0.2577492
24 months   MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0959981   -0.6429015    0.4509053
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0833360   -0.3514405    0.1847686
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1519900   -0.2235585    0.5275384
24 months   NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.1064635   -0.1683599    0.3812869
24 months   NIH-Birth    BANGLADESH                     >5%                  0%                 0.0102919   -0.2413399    0.2619238
24 months   NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.2614604   -0.4874641   -0.0354567
24 months   NIH-Crypto   BANGLADESH                     >5%                  0%                -0.1471899   -0.3663923    0.0720125
24 months   PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0306560   -0.2282663    0.1669543
24 months   PROVIDE      BANGLADESH                     >5%                  0%                 0.1239799   -0.0910768    0.3390365


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     0%                   NA                -0.1955528   -0.4269520    0.0358465
Birth       MAL-ED       INDIA                          0%                   NA                -0.1533535   -0.6868802    0.3801731
Birth       MAL-ED       NEPAL                          0%                   NA                -0.2022115   -0.7099692    0.3055462
Birth       MAL-ED       PERU                           0%                   NA                 0.0670869   -0.1120385    0.2462123
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.2636436   -0.4722798   -0.0550074
Birth       NIH-Birth    BANGLADESH                     0%                   NA                -0.0462770   -0.2000889    0.1075348
Birth       NIH-Crypto   BANGLADESH                     0%                   NA                 0.0373849   -0.0487633    0.1235331
Birth       PROVIDE      BANGLADESH                     0%                   NA                -0.0542711   -0.1709786    0.0624363
6 months    CMIN         BANGLADESH                     0%                   NA                -0.1524074   -0.3519488    0.0471340
6 months    CONTENT      PERU                           0%                   NA                 0.0258757   -0.0841402    0.1358917
6 months    MAL-ED       BANGLADESH                     0%                   NA                -0.0561036   -0.2567322    0.1445251
6 months    MAL-ED       INDIA                          0%                   NA                 0.0514188   -0.1853557    0.2881933
6 months    MAL-ED       NEPAL                          0%                   NA                 0.1105350   -0.0817941    0.3028640
6 months    MAL-ED       PERU                           0%                   NA                 0.1314477   -0.0729758    0.3358712
6 months    MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0518040   -0.1322455    0.0286376
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0817928   -0.0720816    0.2356671
6 months    NIH-Birth    BANGLADESH                     0%                   NA                -0.0244968   -0.1794150    0.1304214
6 months    NIH-Crypto   BANGLADESH                     0%                   NA                 0.0680027   -0.0144345    0.1504399
6 months    PROVIDE      BANGLADESH                     0%                   NA                 0.0682342   -0.0617541    0.1982225
24 months   CMIN         BANGLADESH                     0%                   NA                 0.0180491   -0.1381622    0.1742604
24 months   CONTENT      PERU                           0%                   NA                 0.0026844   -0.1291057    0.1344745
24 months   MAL-ED       BANGLADESH                     0%                   NA                -0.0245268   -0.2108405    0.1617869
24 months   MAL-ED       INDIA                          0%                   NA                 0.0484522   -0.1667804    0.2636848
24 months   MAL-ED       NEPAL                          0%                   NA                -0.0173798   -0.1840510    0.1492914
24 months   MAL-ED       PERU                           0%                   NA                 0.1477862   -0.0646916    0.3602641
24 months   MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0086347   -0.0759944    0.0587251
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0046228   -0.1465723    0.1373267
24 months   NIH-Birth    BANGLADESH                     0%                   NA                 0.0362558   -0.1410196    0.2135313
24 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.0914332   -0.1776713   -0.0051951
24 months   PROVIDE      BANGLADESH                     0%                   NA                 0.0292572   -0.1036326    0.1621470

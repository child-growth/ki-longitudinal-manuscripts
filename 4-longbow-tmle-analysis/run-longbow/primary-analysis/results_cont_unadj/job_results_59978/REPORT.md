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
Birth       CMIN         BANGLADESH                     0%              16    26
Birth       CMIN         BANGLADESH                     (0%, 5%]         4    26
Birth       CMIN         BANGLADESH                     >5%              6    26
Birth       CONTENT      PERU                           0%               0     2
Birth       CONTENT      PERU                           (0%, 5%]         1     2
Birth       CONTENT      PERU                           >5%              1     2
Birth       EE           PAKISTAN                       0%             223   240
Birth       EE           PAKISTAN                       (0%, 5%]        15   240
Birth       EE           PAKISTAN                       >5%              2   240
Birth       MAL-ED       BANGLADESH                     0%              72   231
Birth       MAL-ED       BANGLADESH                     (0%, 5%]        90   231
Birth       MAL-ED       BANGLADESH                     >5%             69   231
Birth       MAL-ED       BRAZIL                         0%              57    65
Birth       MAL-ED       BRAZIL                         (0%, 5%]         6    65
Birth       MAL-ED       BRAZIL                         >5%              2    65
Birth       MAL-ED       INDIA                          0%              12    47
Birth       MAL-ED       INDIA                          (0%, 5%]        24    47
Birth       MAL-ED       INDIA                          >5%             11    47
Birth       MAL-ED       NEPAL                          0%               8    27
Birth       MAL-ED       NEPAL                          (0%, 5%]        10    27
Birth       MAL-ED       NEPAL                          >5%              9    27
Birth       MAL-ED       PERU                           0%              67   233
Birth       MAL-ED       PERU                           (0%, 5%]        72   233
Birth       MAL-ED       PERU                           >5%             94   233
Birth       MAL-ED       SOUTH AFRICA                   0%              86   113
Birth       MAL-ED       SOUTH AFRICA                   (0%, 5%]        23   113
Birth       MAL-ED       SOUTH AFRICA                   >5%              4   113
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              59   125
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        45   125
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             21   125
Birth       NIH-Birth    BANGLADESH                     0%             160   605
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]       177   605
Birth       NIH-Birth    BANGLADESH                     >5%            268   605
Birth       NIH-Crypto   BANGLADESH                     0%             360   732
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]       163   732
Birth       NIH-Crypto   BANGLADESH                     >5%            209   732
Birth       PROVIDE      BANGLADESH                     0%             161   539
Birth       PROVIDE      BANGLADESH                     (0%, 5%]       209   539
Birth       PROVIDE      BANGLADESH                     >5%            169   539
6 months    CMIN         BANGLADESH                     0%              81   243
6 months    CMIN         BANGLADESH                     (0%, 5%]        59   243
6 months    CMIN         BANGLADESH                     >5%            103   243
6 months    CONTENT      PERU                           0%             115   215
6 months    CONTENT      PERU                           (0%, 5%]        43   215
6 months    CONTENT      PERU                           >5%             57   215
6 months    EE           PAKISTAN                       0%             336   373
6 months    EE           PAKISTAN                       (0%, 5%]        35   373
6 months    EE           PAKISTAN                       >5%              2   373
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
6 months    PROVIDE      BANGLADESH                     0%             158   604
6 months    PROVIDE      BANGLADESH                     (0%, 5%]       246   604
6 months    PROVIDE      BANGLADESH                     >5%            200   604
24 months   CMIN         BANGLADESH                     0%              85   242
24 months   CMIN         BANGLADESH                     (0%, 5%]        58   242
24 months   CMIN         BANGLADESH                     >5%             99   242
24 months   CONTENT      PERU                           0%              84   164
24 months   CONTENT      PERU                           (0%, 5%]        36   164
24 months   CONTENT      PERU                           >5%             44   164
24 months   EE           PAKISTAN                       0%             152   167
24 months   EE           PAKISTAN                       (0%, 5%]        14   167
24 months   EE           PAKISTAN                       >5%              1   167
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
24 months   NIH-Birth    BANGLADESH                     0%             107   429
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]       128   429
24 months   NIH-Birth    BANGLADESH                     >5%            194   429
24 months   NIH-Crypto   BANGLADESH                     0%             277   514
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]       106   514
24 months   NIH-Crypto   BANGLADESH                     >5%            131   514
24 months   PROVIDE      BANGLADESH                     0%             152   578
24 months   PROVIDE      BANGLADESH                     (0%, 5%]       232   578
24 months   PROVIDE      BANGLADESH                     >5%            194   578


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
![](/tmp/b9d99a8a-7d8d-4eba-be9f-5433f11a321a/44faa7b6-ad00-428e-bc5f-fee55a422254/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b9d99a8a-7d8d-4eba-be9f-5433f11a321a/44faa7b6-ad00-428e-bc5f-fee55a422254/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b9d99a8a-7d8d-4eba-be9f-5433f11a321a/44faa7b6-ad00-428e-bc5f-fee55a422254/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     0%                   NA                -1.1101389   -1.3590952   -0.8611826
Birth       MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.9878889   -1.1995923   -0.7761854
Birth       MAL-ED       BANGLADESH                     >5%                  NA                -1.2962319   -1.5325358   -1.0599280
Birth       MAL-ED       INDIA                          0%                   NA                -1.2491667   -1.8412496   -0.6570838
Birth       MAL-ED       INDIA                          (0%, 5%]             NA                -1.1037500   -1.5282362   -0.6792638
Birth       MAL-ED       INDIA                          >5%                  NA                -1.3718182   -1.9057300   -0.8379064
Birth       MAL-ED       NEPAL                          0%                   NA                -0.3125000   -0.9090602    0.2840602
Birth       MAL-ED       NEPAL                          (0%, 5%]             NA                -0.8360000   -1.2964736   -0.3755264
Birth       MAL-ED       NEPAL                          >5%                  NA                -1.3533333   -1.9688465   -0.7378201
Birth       MAL-ED       PERU                           0%                   NA                -0.8807463   -1.0921735   -0.6693190
Birth       MAL-ED       PERU                           (0%, 5%]             NA                -0.9820833   -1.1828146   -0.7813521
Birth       MAL-ED       PERU                           >5%                  NA                -0.8081915   -1.0022876   -0.6140954
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.2469492   -1.5760364   -0.9178619
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.1308889   -1.4632640   -0.7985137
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.9519048   -1.3845858   -0.5192238
Birth       NIH-Birth    BANGLADESH                     0%                   NA                -0.9438750   -1.1127457   -0.7750043
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -0.9399435   -1.0882498   -0.7916372
Birth       NIH-Birth    BANGLADESH                     >5%                  NA                -0.9183209   -1.0612645   -0.7753773
Birth       NIH-Crypto   BANGLADESH                     0%                   NA                -0.9053611   -1.0102939   -0.8004283
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.8959509   -1.0457689   -0.7461329
Birth       NIH-Crypto   BANGLADESH                     >5%                  NA                -0.9271770   -1.0547684   -0.7995857
Birth       PROVIDE      BANGLADESH                     0%                   NA                -0.9265839   -1.0525275   -0.8006402
Birth       PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.8703828   -0.9882673   -0.7524982
Birth       PROVIDE      BANGLADESH                     >5%                  NA                -0.8637870   -1.0106260   -0.7169480
6 months    CMIN         BANGLADESH                     0%                   NA                -1.6822634   -1.9354896   -1.4290371
6 months    CMIN         BANGLADESH                     (0%, 5%]             NA                -1.9997458   -2.2608868   -1.7386047
6 months    CMIN         BANGLADESH                     >5%                  NA                -1.7414563   -1.9473004   -1.5356122
6 months    CONTENT      PERU                           0%                   NA                -0.3586609   -0.5366720   -0.1806498
6 months    CONTENT      PERU                           (0%, 5%]             NA                -0.2398140   -0.5622893    0.0826614
6 months    CONTENT      PERU                           >5%                  NA                -0.1460526   -0.3808888    0.0887835
6 months    MAL-ED       BANGLADESH                     0%                   NA                -1.1720892   -1.3845681   -0.9596103
6 months    MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.0915399   -1.2660108   -0.9170689
6 months    MAL-ED       BANGLADESH                     >5%                  NA                -1.3687607   -1.5907828   -1.1467385
6 months    MAL-ED       INDIA                          0%                   NA                -1.2330000   -1.4713732   -0.9946268
6 months    MAL-ED       INDIA                          (0%, 5%]             NA                -1.1209055   -1.2797746   -0.9620364
6 months    MAL-ED       INDIA                          >5%                  NA                -1.3883898   -1.6396203   -1.1371594
6 months    MAL-ED       NEPAL                          0%                   NA                -0.6236458   -0.8210629   -0.4262288
6 months    MAL-ED       NEPAL                          (0%, 5%]             NA                -0.5257456   -0.7244907   -0.3270006
6 months    MAL-ED       NEPAL                          >5%                  NA                -0.5335625   -0.7218044   -0.3453206
6 months    MAL-ED       PERU                           0%                   NA                -1.4277819   -1.6490604   -1.2065033
6 months    MAL-ED       PERU                           (0%, 5%]             NA                -1.3913858   -1.5724539   -1.2103176
6 months    MAL-ED       PERU                           >5%                  NA                -1.2106753   -1.3772264   -1.0441242
6 months    MAL-ED       SOUTH AFRICA                   0%                   NA                -1.0562193   -1.2045965   -0.9078421
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -1.1532424   -1.4008073   -0.9056775
6 months    MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.6637037   -1.5451618    0.2177544
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.4418889   -1.6404175   -1.2433603
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.3513021   -1.5437232   -1.1588809
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -1.2381884   -1.4834231   -0.9929537
6 months    NIH-Birth    BANGLADESH                     0%                   NA                -1.4432946   -1.6167706   -1.2698185
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -1.3347633   -1.4940277   -1.1754989
6 months    NIH-Birth    BANGLADESH                     >5%                  NA                -1.4393480   -1.5741125   -1.3045835
6 months    NIH-Crypto   BANGLADESH                     0%                   NA                -1.1417742   -1.2395772   -1.0439712
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.3272754   -1.4872627   -1.1672882
6 months    NIH-Crypto   BANGLADESH                     >5%                  NA                -1.1886715   -1.3223974   -1.0549456
6 months    PROVIDE      BANGLADESH                     0%                   NA                -1.0502532   -1.1906989   -0.9098074
6 months    PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.0944919   -1.2085802   -0.9804035
6 months    PROVIDE      BANGLADESH                     >5%                  NA                -1.1209833   -1.2569056   -0.9850611
24 months   CMIN         BANGLADESH                     0%                   NA                -2.3980588   -2.6036846   -2.1924330
24 months   CMIN         BANGLADESH                     (0%, 5%]             NA                -2.7421552   -3.0153819   -2.4689285
24 months   CMIN         BANGLADESH                     >5%                  NA                -2.4724242   -2.6599560   -2.2848925
24 months   CONTENT      PERU                           0%                   NA                -0.7007738   -0.9205214   -0.4810262
24 months   CONTENT      PERU                           (0%, 5%]             NA                -0.6538889   -0.9937515   -0.3140263
24 months   CONTENT      PERU                           >5%                  NA                -0.6872727   -0.9470682   -0.4274773
24 months   MAL-ED       BANGLADESH                     0%                   NA                -2.0180469   -2.2844718   -1.7516219
24 months   MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.9456024   -2.1368735   -1.7543313
24 months   MAL-ED       BANGLADESH                     >5%                  NA                -1.9812308   -2.1859761   -1.7764854
24 months   MAL-ED       INDIA                          0%                   NA                -1.9450000   -2.2099971   -1.6800029
24 months   MAL-ED       INDIA                          (0%, 5%]             NA                -1.8192623   -1.9862777   -1.6522469
24 months   MAL-ED       INDIA                          >5%                  NA                -1.9799123   -2.2407543   -1.7190703
24 months   MAL-ED       NEPAL                          0%                   NA                -1.3842857   -1.5718930   -1.1966785
24 months   MAL-ED       NEPAL                          (0%, 5%]             NA                -1.2178000   -1.4229532   -1.0126468
24 months   MAL-ED       NEPAL                          >5%                  NA                -1.3184868   -1.5435625   -1.0934112
24 months   MAL-ED       PERU                           0%                   NA                -1.9108805   -2.1505435   -1.6712175
24 months   MAL-ED       PERU                           (0%, 5%]             NA                -1.9161198   -2.1305467   -1.7016929
24 months   MAL-ED       PERU                           >5%                  NA                -1.5278373   -1.7025579   -1.3531167
24 months   MAL-ED       SOUTH AFRICA                   0%                   NA                -1.6087382   -1.7601786   -1.4572979
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -1.8343750   -2.1416970   -1.5270530
24 months   MAL-ED       SOUTH AFRICA                   >5%                  NA                -1.2655556   -1.9703196   -0.5607915
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -2.6676630   -2.8840527   -2.4512734
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -2.6435542   -2.8548424   -2.4322660
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -2.5976923   -2.8926041   -2.3027805
24 months   NIH-Birth    BANGLADESH                     0%                   NA                -2.2144704   -2.4049991   -2.0239417
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -2.0710482   -2.2568151   -1.8852813
24 months   NIH-Birth    BANGLADESH                     >5%                  NA                -2.3192440   -2.4773969   -2.1610910
24 months   NIH-Crypto   BANGLADESH                     0%                   NA                -1.3888809   -1.4974375   -1.2803242
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.5935849   -1.7853992   -1.4017706
24 months   NIH-Crypto   BANGLADESH                     >5%                  NA                -1.4287786   -1.6026204   -1.2549369
24 months   PROVIDE      BANGLADESH                     0%                   NA                -1.5384539   -1.6975292   -1.3793787
24 months   PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.6290517   -1.7610693   -1.4970341
24 months   PROVIDE      BANGLADESH                     >5%                  NA                -1.6206959   -1.7658773   -1.4755145


### Parameter: E(Y)


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     NA                   NA                -1.1180952   -1.2525408   -0.9836496
Birth       MAL-ED       INDIA                          NA                   NA                -1.2036170   -1.4976814   -0.9095527
Birth       MAL-ED       NEPAL                          NA                   NA                -0.8533333   -1.2104864   -0.4961803
Birth       MAL-ED       PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1556000   -1.3655361   -0.9456639
Birth       NIH-Birth    BANGLADESH                     NA                   NA                -0.9314050   -1.0202164   -0.8425936
Birth       NIH-Crypto   BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROVIDE      BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
6 months    CMIN         BANGLADESH                     NA                   NA                -1.7844376   -1.9222926   -1.6465825
6 months    CONTENT      PERU                           NA                   NA                -0.2785256   -0.4098735   -0.1471776
6 months    MAL-ED       BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED       INDIA                          NA                   NA                -1.2115254   -1.3298727   -1.0931782
6 months    MAL-ED       NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED       PERU                           NA                   NA                -1.3236661   -1.4316775   -1.2156546
6 months    MAL-ED       SOUTH AFRICA                   NA                   NA                -1.0633202   -1.1909180   -0.9357224
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Birth    BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto   BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE      BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
24 months   CMIN         BANGLADESH                     NA                   NA                -2.5109504   -2.6361514   -2.3857494
24 months   CONTENT      PERU                           NA                   NA                -0.6868598   -0.8388476   -0.5348719
24 months   MAL-ED       BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED       INDIA                          NA                   NA                -1.8861894   -2.0110006   -1.7613783
24 months   MAL-ED       NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED       PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED       SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Birth    BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto   BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROVIDE      BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.1222500   -0.2045490    0.4490490
Birth       MAL-ED       BANGLADESH                     >5%                  0%                -0.1860930   -0.5293404    0.1571544
Birth       MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       INDIA                          (0%, 5%]             0%                 0.1454167   -0.5831097    0.8739431
Birth       MAL-ED       INDIA                          >5%                  0%                -0.1226515   -0.9199118    0.6746088
Birth       MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       NEPAL                          (0%, 5%]             0%                -0.5235000   -1.2771047    0.2301047
Birth       MAL-ED       NEPAL                          >5%                  0%                -1.0408333   -1.8980034   -0.1836633
Birth       MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU                           (0%, 5%]             0%                -0.1013371   -0.3928753    0.1902011
Birth       MAL-ED       PERU                           >5%                  0%                 0.0725548   -0.2144553    0.3595648
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1160603   -0.3516700    0.5837906
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.2950444   -0.2485651    0.8386538
Birth       NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.0039315   -0.2208174    0.2286804
Birth       NIH-Birth    BANGLADESH                     >5%                  0%                 0.0255541   -0.1956927    0.2468009
Birth       NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0094102   -0.1735005    0.1923209
Birth       NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0218159   -0.1870141    0.1433823
Birth       PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0562011   -0.1163056    0.2287078
Birth       PROVIDE      BANGLADESH                     >5%                  0%                 0.0627969   -0.1306546    0.2562484
6 months    CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    CMIN         BANGLADESH                     (0%, 5%]             0%                -0.3174824   -0.6812380    0.0462732
6 months    CMIN         BANGLADESH                     >5%                  0%                -0.0591929   -0.3855291    0.2671433
6 months    CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    CONTENT      PERU                           (0%, 5%]             0%                 0.1188469   -0.2494984    0.4871923
6 months    CONTENT      PERU                           >5%                  0%                 0.2126082   -0.0820712    0.5072877
6 months    MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0805493   -0.1943823    0.3554810
6 months    MAL-ED       BANGLADESH                     >5%                  0%                -0.1966715   -0.5039842    0.1106413
6 months    MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA                          (0%, 5%]             0%                 0.1120945   -0.1743687    0.3985577
6 months    MAL-ED       INDIA                          >5%                  0%                -0.1553898   -0.5017113    0.1909316
6 months    MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0979002   -0.1822303    0.3780307
6 months    MAL-ED       NEPAL                          >5%                  0%                 0.0900833   -0.1826959    0.3628626
6 months    MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU                           (0%, 5%]             0%                 0.0363961   -0.2495233    0.3223155
6 months    MAL-ED       PERU                           >5%                  0%                 0.2171066   -0.0598474    0.4940605
6 months    MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0970231   -0.3856478    0.1916015
6 months    MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.3925156   -0.5013436    1.2863748
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0905868   -0.1858902    0.3670638
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.2037005   -0.1118208    0.5192217
6 months    NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.1085313   -0.1269663    0.3440288
6 months    NIH-Birth    BANGLADESH                     >5%                  0%                 0.0039466   -0.2157245    0.2236177
6 months    NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.1855013   -0.3730148    0.0020123
6 months    NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0468973   -0.2125718    0.1187772
6 months    PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0442387   -0.2251839    0.1367065
6 months    PROVIDE      BANGLADESH                     >5%                  0%                -0.0707302   -0.2661780    0.1247177
24 months   CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   CMIN         BANGLADESH                     (0%, 5%]             0%                -0.3440963   -0.6860537   -0.0021390
24 months   CMIN         BANGLADESH                     >5%                  0%                -0.0743654   -0.3526641    0.2039332
24 months   CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   CONTENT      PERU                           (0%, 5%]             0%                 0.0468849   -0.3578318    0.4516016
24 months   CONTENT      PERU                           >5%                  0%                 0.0135011   -0.3267674    0.3537696
24 months   MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0724445   -0.2555294    0.4004184
24 months   MAL-ED       BANGLADESH                     >5%                  0%                 0.0368161   -0.2991942    0.3728264
24 months   MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA                          (0%, 5%]             0%                 0.1257377   -0.1874996    0.4389750
24 months   MAL-ED       INDIA                          >5%                  0%                -0.0349123   -0.4067483    0.3369238
24 months   MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL                          (0%, 5%]             0%                 0.1664857   -0.1115149    0.4444863
24 months   MAL-ED       NEPAL                          >5%                  0%                 0.0657989   -0.2272123    0.3588100
24 months   MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU                           (0%, 5%]             0%                -0.0052393   -0.3268248    0.3163462
24 months   MAL-ED       PERU                           >5%                  0%                 0.3830432    0.0864532    0.6796332
24 months   MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.2256368   -0.5682459    0.1169723
24 months   MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.3431827   -0.3776686    1.0640340
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0241088   -0.2783266    0.3265443
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0699707   -0.2958126    0.4357541
24 months   NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.1434222   -0.1226802    0.4095247
24 months   NIH-Birth    BANGLADESH                     >5%                  0%                -0.1047736   -0.3523893    0.1428421
24 months   NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.2047040   -0.4251066    0.0156985
24 months   NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0398978   -0.2448502    0.1650547
24 months   PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0905978   -0.2973188    0.1161232
24 months   PROVIDE      BANGLADESH                     >5%                  0%                -0.0822419   -0.2976081    0.1331242


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     0%                   NA                -0.0079563   -0.2114716    0.1955589
Birth       MAL-ED       INDIA                          0%                   NA                 0.0455496   -0.4624125    0.5535118
Birth       MAL-ED       NEPAL                          0%                   NA                -0.5408333   -1.0628947   -0.0187719
Birth       MAL-ED       PERU                           0%                   NA                -0.0020434   -0.1830307    0.1789439
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0913492   -0.1325657    0.3152640
Birth       NIH-Birth    BANGLADESH                     0%                   NA                 0.0124700   -0.1335479    0.1584880
Birth       NIH-Crypto   BANGLADESH                     0%                   NA                -0.0041334   -0.0768282    0.0685614
Birth       PROVIDE      BANGLADESH                     0%                   NA                 0.0414818   -0.0681338    0.1510975
6 months    CMIN         BANGLADESH                     0%                   NA                -0.1021742   -0.3031183    0.0987699
6 months    CONTENT      PERU                           0%                   NA                 0.0801353   -0.0425085    0.2027791
6 months    MAL-ED       BANGLADESH                     0%                   NA                -0.0329039   -0.2125887    0.1467809
6 months    MAL-ED       INDIA                          0%                   NA                 0.0214746   -0.1947448    0.2376940
6 months    MAL-ED       NEPAL                          0%                   NA                 0.0620639   -0.0967751    0.2209029
6 months    MAL-ED       PERU                           0%                   NA                 0.1041158   -0.0862477    0.2944793
6 months    MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0071009   -0.0803127    0.0661109
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0731439   -0.0710519    0.2173398
6 months    NIH-Birth    BANGLADESH                     0%                   NA                 0.0359125   -0.1173818    0.1892068
6 months    NIH-Crypto   BANGLADESH                     0%                   NA                -0.0569041   -0.1313463    0.0175380
6 months    PROVIDE      BANGLADESH                     0%                   NA                -0.0414383   -0.1636862    0.0808096
24 months   CMIN         BANGLADESH                     0%                   NA                -0.1128916   -0.2809840    0.0552008
24 months   CONTENT      PERU                           0%                   NA                 0.0139141   -0.1341485    0.1619766
24 months   MAL-ED       BANGLADESH                     0%                   NA                 0.0396506   -0.1704895    0.2497908
24 months   MAL-ED       INDIA                          0%                   NA                 0.0588106   -0.1780507    0.2956719
24 months   MAL-ED       NEPAL                          0%                   NA                 0.0766980   -0.0836138    0.2370097
24 months   MAL-ED       PERU                           0%                   NA                 0.1584095   -0.0461144    0.3629334
24 months   MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0363213   -0.1197270    0.0470845
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0221023   -0.1354849    0.1796895
24 months   NIH-Birth    BANGLADESH                     0%                   NA                -0.0045875   -0.1741095    0.1649346
24 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.0523837   -0.1303607    0.0255933
24 months   PROVIDE      BANGLADESH                     0%                   NA                -0.0639682   -0.2015835    0.0736471

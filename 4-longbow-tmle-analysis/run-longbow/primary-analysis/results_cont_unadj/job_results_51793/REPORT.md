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

agecat      studyid                 country                        perdiar6    n_cell     n
----------  ----------------------  -----------------------------  ---------  -------  ----
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%              79   241
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        92   241
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%             70   241
Birth       ki0047075b-MAL-ED       BRAZIL                         0%             169   183
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        12   183
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%              2   183
Birth       ki0047075b-MAL-ED       INDIA                          0%              46   203
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]       107   203
Birth       ki0047075b-MAL-ED       INDIA                          >5%             50   203
Birth       ki0047075b-MAL-ED       NEPAL                          0%              56   168
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        57   168
Birth       ki0047075b-MAL-ED       NEPAL                          >5%             55   168
Birth       ki0047075b-MAL-ED       PERU                           0%              82   279
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]        84   279
Birth       ki0047075b-MAL-ED       PERU                           >5%            113   279
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%             192   250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        49   250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   250
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              59   118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        40   118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             19   118
Birth       ki1000109-ResPak        PAKISTAN                       0%               0     5
Birth       ki1000109-ResPak        PAKISTAN                       (0%, 5%]         2     5
Birth       ki1000109-ResPak        PAKISTAN                       >5%              3     5
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%               4    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]         3    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%             19    26
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%               6    23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]         7    23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%             10    23
Birth       ki1114097-CMIN          BANGLADESH                     0%               6     8
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]         0     8
Birth       ki1114097-CMIN          BANGLADESH                     >5%              2     8
Birth       ki1114097-CMIN          BRAZIL                         0%              36   111
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]        46   111
Birth       ki1114097-CMIN          BRAZIL                         >5%             29   111
Birth       ki1114097-CMIN          PERU                           0%               4    10
Birth       ki1114097-CMIN          PERU                           (0%, 5%]         5    10
Birth       ki1114097-CMIN          PERU                           >5%              1    10
Birth       ki1114097-CONTENT       PERU                           0%               0     2
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]         1     2
Birth       ki1114097-CONTENT       PERU                           >5%              1     2
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%              71   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        92   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%             78   241
6 months    ki0047075b-MAL-ED       BRAZIL                         0%             192   209
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   209
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%              2   209
6 months    ki0047075b-MAL-ED       INDIA                          0%              50   236
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]       127   236
6 months    ki0047075b-MAL-ED       INDIA                          >5%             59   236
6 months    ki0047075b-MAL-ED       NEPAL                          0%              80   236
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   236
6 months    ki0047075b-MAL-ED       NEPAL                          >5%             80   236
6 months    ki0047075b-MAL-ED       PERU                           0%              68   273
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]        89   273
6 months    ki0047075b-MAL-ED       PERU                           >5%            116   273
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%             190   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        55   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   254
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%             105   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        96   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             46   247
6 months    ki1000109-ResPak        PAKISTAN                       0%              41   235
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]        64   235
6 months    ki1000109-ResPak        PAKISTAN                       >5%            130   235
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%             129   536
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       168   536
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%            239   536
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%             157   582
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       242   582
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%            183   582
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%             341   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       167   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%            207   715
6 months    ki1114097-CMIN          BANGLADESH                     0%              81   243
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]        58   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%            104   243
6 months    ki1114097-CMIN          BRAZIL                         0%              38   108
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]        41   108
6 months    ki1114097-CMIN          BRAZIL                         >5%             29   108
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%             212   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]       189   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%            271   672
6 months    ki1114097-CMIN          PERU                           0%             184   634
6 months    ki1114097-CMIN          PERU                           (0%, 5%]       184   634
6 months    ki1114097-CMIN          PERU                           >5%            266   634
6 months    ki1114097-CONTENT       PERU                           0%             115   215
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]        43   215
6 months    ki1114097-CONTENT       PERU                           >5%             57   215
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%              64   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        83   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             65   212
24 months   ki0047075b-MAL-ED       BRAZIL                         0%             154   169
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        13   169
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   169
24 months   ki0047075b-MAL-ED       INDIA                          0%              48   227
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   227
24 months   ki0047075b-MAL-ED       INDIA                          >5%             57   227
24 months   ki0047075b-MAL-ED       NEPAL                          0%              77   228
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        75   228
24 months   ki0047075b-MAL-ED       NEPAL                          >5%             76   228
24 months   ki0047075b-MAL-ED       PERU                           0%              53   201
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        64   201
24 months   ki0047075b-MAL-ED       PERU                           >5%             84   201
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             177   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        52   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   238
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              92   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        83   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             39   214
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%             107   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       127   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            194   428
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%             152   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       232   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            194   578
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             277   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       106   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            131   514
24 months   ki1114097-CMIN          BANGLADESH                     0%              85   243
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        58   243
24 months   ki1114097-CMIN          BANGLADESH                     >5%            100   243
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%              99   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]        77   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%            103   279
24 months   ki1114097-CMIN          PERU                           0%              97   244
24 months   ki1114097-CMIN          PERU                           (0%, 5%]        79   244
24 months   ki1114097-CMIN          PERU                           >5%             68   244
24 months   ki1114097-CONTENT       PERU                           0%              84   164
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]        36   164
24 months   ki1114097-CONTENT       PERU                           >5%             44   164


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/63ec1320-0e55-4a93-ab65-82ab2836c9a4/82fe6782-f32f-4691-9689-8ca3d2961549/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/63ec1320-0e55-4a93-ab65-82ab2836c9a4/82fe6782-f32f-4691-9689-8ca3d2961549/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/63ec1320-0e55-4a93-ab65-82ab2836c9a4/82fe6782-f32f-4691-9689-8ca3d2961549/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.7553165   -1.0070322   -0.5036007
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.1023913   -1.3069020   -0.8978806
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -1.0144286   -1.2625193   -0.7663378
Birth       ki0047075b-MAL-ED       INDIA                          0%                   NA                -1.0934783   -1.4326624   -0.7542941
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -1.0797196   -1.2547563   -0.9046830
Birth       ki0047075b-MAL-ED       INDIA                          >5%                  NA                -1.0240000   -1.3058361   -0.7421639
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.9367857   -1.1993735   -0.6741980
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.8745614   -1.0864202   -0.6627026
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.9025455   -1.1509786   -0.6541123
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0960976   -0.2833556    0.0911605
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                 0.0436905   -0.1751074    0.2624883
Birth       ki0047075b-MAL-ED       PERU                           >5%                  NA                -0.1444248   -0.3128279    0.0239783
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0568750   -0.2178610    0.1041110
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                 0.0457143   -0.2756394    0.3670679
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.1888889   -1.3021928    0.9244150
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 1.0749153    0.8307316    1.3190989
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.2892500   -0.0931801    0.6716801
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.9794737    0.6518306    1.3071168
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -1.2516667   -2.3338692   -0.1694641
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.3185714   -0.9422112    0.3050684
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -0.7530000   -1.4736153   -0.0323847
Birth       ki1114097-CMIN          BRAZIL                         0%                   NA                -0.3094444   -0.6642141    0.0453252
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                -0.1182609   -0.4107454    0.1742237
Birth       ki1114097-CMIN          BRAZIL                         >5%                  NA                 0.0617241   -0.4198596    0.5433079
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0815728   -0.3212509    0.1581054
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.2727264   -0.4832735   -0.0621794
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -0.0360043   -0.2552216    0.1832131
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.7477667   -1.0068715   -0.4886618
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.6904068   -0.8442239   -0.5365897
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  NA                -0.6937571   -0.9979712   -0.3895429
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0051875   -0.2418928    0.2522678
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                 0.0721711   -0.1128685    0.2572106
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                  NA                 0.2538333    0.0160872    0.4915795
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.9195588    0.6873646    1.1517530
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                 1.0629213    0.8476149    1.2782278
6 months    ki0047075b-MAL-ED       PERU                           >5%                  NA                 1.1268966    0.9379900    1.3158031
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.5938158    0.4104861    0.7771454
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                 0.3368182    0.0614584    0.6121780
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                 0.7040741    0.0137907    1.3943574
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.4319048    0.2282254    0.6355841
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.5440625    0.3303442    0.7577808
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.6550362    0.3946140    0.9154585
6 months    ki1000109-ResPak        PAKISTAN                       0%                   NA                -0.3682927   -0.8174074    0.0808221
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                -0.2824219   -0.6309075    0.0660638
6 months    ki1000109-ResPak        PAKISTAN                       >5%                  NA                -0.0491538   -0.2955403    0.1972326
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.4229070   -0.5974328   -0.2483811
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.2899107   -0.4531232   -0.1266983
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.5522838   -0.6840893   -0.4204783
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.2673248   -0.4121851   -0.1224646
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.2738636   -0.4032627   -0.1444646
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.0711840   -0.2348719    0.0925040
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0382405   -0.1489638    0.0724828
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                 0.0538323   -0.1060491    0.2137138
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                 0.1223671   -0.0329177    0.2776520
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.4256379   -0.6637716   -0.1875041
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.4834483   -0.8149497   -0.1519469
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                -0.7495032   -0.9584404   -0.5405661
6 months    ki1114097-CMIN          BRAZIL                         0%                   NA                 0.5423684    0.2482810    0.8364558
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                 0.7185366    0.3137869    1.1232863
6 months    ki1114097-CMIN          BRAZIL                         >5%                  NA                 0.4668966    0.0886024    0.8451908
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                 0.0039858   -0.1481265    0.1560982
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                -0.1239506   -0.2945167    0.0466155
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                -0.1231304   -0.2619000    0.0156392
6 months    ki1114097-CMIN          PERU                           0%                   NA                 0.9363949    0.7773608    1.0954291
6 months    ki1114097-CMIN          PERU                           (0%, 5%]             NA                 0.5845290    0.4170124    0.7520456
6 months    ki1114097-CMIN          PERU                           >5%                  NA                 0.5469799    0.4096408    0.6843191
6 months    ki1114097-CONTENT       PERU                           0%                   NA                 1.0450768    0.8856179    1.2045357
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]             NA                 1.0990698    0.8551918    1.3429477
6 months    ki1114097-CONTENT       PERU                           >5%                  NA                 1.0924386    0.8538358    1.3310414
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.7956250   -1.0195643   -0.5716857
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.9028313   -1.0902197   -0.7154429
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -0.7409231   -0.9684948   -0.5133514
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                -1.0031250   -1.2417397   -0.7645103
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.9073361   -1.0527026   -0.7619696
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                -1.0057018   -1.2764059   -0.7349977
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.3620779   -0.5746595   -0.1494964
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.4609333   -0.6300020   -0.2918647
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.3076316   -0.5098967   -0.1053664
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0086792   -0.2418415    0.2244830
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                 0.0729688   -0.1289882    0.2749257
24 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                 0.2367857    0.0474285    0.4261430
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.4367232    0.2951611    0.5782852
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                 0.4107692    0.1718748    0.6496636
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                 0.3216667   -0.2059039    0.8492372
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0574457   -0.1217640    0.2366553
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0338554   -0.2321182    0.1644074
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.2114103   -0.1187445    0.5415650
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.9478349   -1.1568212   -0.7388485
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.8413714   -1.0198444   -0.6628983
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.9375430   -1.0776974   -0.7973885
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.9145395   -1.0669185   -0.7621604
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.9465086   -1.0735555   -0.8194617
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.7970619   -0.9501967   -0.6439270
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.5189170   -0.6588826   -0.3789513
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.7803774   -0.9578240   -0.6029307
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -0.6661069   -0.8348057   -0.4974080
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.8715882   -1.0723369   -0.6708396
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.6974138   -0.9031395   -0.4916881
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                -0.9287500   -1.0974940   -0.7600060
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                -0.1296465   -0.3623831    0.1030902
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                -0.2978355   -0.5459528   -0.0497182
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                -0.2089320   -0.4127170   -0.0051471
24 months   ki1114097-CMIN          PERU                           0%                   NA                 0.9530584    0.7779773    1.1281395
24 months   ki1114097-CMIN          PERU                           (0%, 5%]             NA                 0.6726582    0.4891650    0.8561514
24 months   ki1114097-CMIN          PERU                           >5%                  NA                 0.7145588    0.5262137    0.9029040
24 months   ki1114097-CONTENT       PERU                           0%                   NA                 0.5625595    0.3885215    0.7365975
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                 0.6254167    0.2753224    0.9755109
24 months   ki1114097-CONTENT       PERU                           >5%                  NA                 0.5270455    0.2694715    0.7846194


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED       INDIA                          NA                   NA                -1.0691133   -1.2078629   -0.9303637
Birth       ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0415200   -0.1860797    0.1030397
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7932203    0.5962220    0.9902187
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.7508696   -1.2358912   -0.2658480
Birth       ki1114097-CMIN          BRAZIL                         NA                   NA                -0.1332432   -0.3441055    0.0776190
6 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.7033969   -0.8285284   -0.5782654
6 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                 0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED       PERU                           NA                   NA                 1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                 0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5170513    0.3872178    0.6468847
6 months    ki1000109-ResPak        PAKISTAN                       NA                   NA                -0.1683617   -0.3528233    0.0160999
6 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1114097-CMIN          BANGLADESH                     NA                   NA                -0.5780453   -0.7226627   -0.4334279
6 months    ki1114097-CMIN          BRAZIL                         NA                   NA                 0.5889815    0.3767666    0.8011963
6 months    ki1114097-CMIN          GUINEA-BISSAU                  NA                   NA                -0.0832589   -0.1713269    0.0048090
6 months    ki1114097-CMIN          PERU                           NA                   NA                 0.6708938    0.5815040    0.7602836
6 months    ki1114097-CONTENT       PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                 0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                 0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0500935   -0.0748234    0.1750103
24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                -0.8535391   -0.9644236   -0.7426546
24 months   ki1114097-CMIN          GUINEA-BISSAU                  NA                   NA                -0.2053345   -0.3365972   -0.0740718
24 months   ki1114097-CMIN          PERU                           NA                   NA                 0.7958060    0.6890764    0.9025356
24 months   ki1114097-CONTENT       PERU                           NA                   NA                 0.5668293    0.4302437    0.7034148


### Parameter: ATE


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.3470748   -0.6713979   -0.0227518
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.2591121   -0.6125380    0.0943137
Birth       ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0137586   -0.3679268    0.3954440
Birth       ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.0694783   -0.3715178    0.5104743
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0622243   -0.2751723    0.3996209
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0342403   -0.3272447    0.3957252
Birth       ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.1397880   -0.1482017    0.4277777
Birth       ki0047075b-MAL-ED       PERU                           >5%                  0%                -0.0483272   -0.3001708    0.2035163
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.1025893   -0.2568334    0.4620120
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.1320139   -1.2568970    0.9928693
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.7856653   -1.2394035   -0.3319270
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0954416   -0.5040682    0.3131850
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.9330952   -0.3159400    2.1821305
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.4986667   -0.8015059    1.7988393
Birth       ki1114097-CMIN          BRAZIL                         0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]             0%                 0.1911836   -0.2686085    0.6509756
Birth       ki1114097-CMIN          BRAZIL                         >5%                  0%                 0.3711686   -0.2269822    0.9693194
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.1911537   -0.5101767    0.1278693
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0455685   -0.2792420    0.3703790
6 months    ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0573598   -0.2439622    0.3586819
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.0540096   -0.3455921    0.4536114
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0669836   -0.2417045    0.3756716
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.2486458   -0.0942418    0.5915334
6 months    ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.1433625   -0.1732934    0.4600185
6 months    ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.2073377   -0.0919946    0.5066700
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.2569976   -0.5878039    0.0738086
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.1102583   -0.6039552    0.8244718
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1121577   -0.1830723    0.4073878
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.2231315   -0.1074816    0.5537446
6 months    ki1000109-ResPak        PAKISTAN                       0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             0%                 0.0858708   -0.4825888    0.6543304
6 months    ki1000109-ResPak        PAKISTAN                       >5%                  0%                 0.3191388   -0.1931212    0.8313989
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.1329963   -0.1059547    0.3719473
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.1293768   -0.3480821    0.0893284
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0065388   -0.2007774    0.1876998
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.1961409   -0.0224415    0.4147232
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0920728   -0.1024053    0.2865509
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.1606076   -0.0301095    0.3513247
6 months    ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.0578104   -0.4659781    0.3503573
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.3238653   -0.6406656   -0.0070651
6 months    ki1114097-CMIN          BRAZIL                         0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]             0%                 0.1761682   -0.3241414    0.6764778
6 months    ki1114097-CMIN          BRAZIL                         >5%                  0%                -0.0754719   -0.5546314    0.4036877
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             0%                -0.1279365   -0.3564774    0.1006045
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                  0%                -0.1271162   -0.3330171    0.0787847
6 months    ki1114097-CMIN          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN          PERU                           (0%, 5%]             0%                -0.3518659   -0.5828501   -0.1208818
6 months    ki1114097-CMIN          PERU                           >5%                  0%                -0.3894150   -0.5995433   -0.1792867
6 months    ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0539930   -0.2373893    0.3453752
6 months    ki1114097-CONTENT       PERU                           >5%                  0%                 0.0473618   -0.2396198    0.3343434
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.1072063   -0.3992050    0.1847923
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0547019   -0.2645749    0.3739788
24 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0957889   -0.1836183    0.3751962
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.0025768   -0.3634336    0.3582801
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                -0.0988554   -0.3704712    0.1727604
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0544463   -0.2389852    0.3478779
24 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0816480   -0.2268179    0.3901139
24 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.2454650   -0.0549028    0.5458327
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0259539   -0.3036414    0.2517336
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.1150565   -0.6612895    0.4311765
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0913011   -0.3585542    0.1759520
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1539646   -0.2216925    0.5296217
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.1064635   -0.1683599    0.3812869
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0102919   -0.2413399    0.2619238
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0319691   -0.2303634    0.1664251
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.1174776   -0.0985540    0.3335092
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.2614604   -0.4874641   -0.0354567
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.1471899   -0.3663923    0.0720125
24 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.1741744   -0.1132679    0.4616168
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0571618   -0.3194108    0.2050873
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             0%                -0.1681890   -0.5083780    0.1720000
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  0%                -0.0792856   -0.3886311    0.2300600
24 months   ki1114097-CMIN          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN          PERU                           (0%, 5%]             0%                -0.2804002   -0.5340202   -0.0267801
24 months   ki1114097-CMIN          PERU                           >5%                  0%                -0.2384996   -0.4956518    0.0186526
24 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0628571   -0.3281099    0.4538241
24 months   ki1114097-CONTENT       PERU                           >5%                  0%                -0.0355141   -0.3463734    0.2753453


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.2077541   -0.4084394   -0.0070688
Birth       ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0243650   -0.2622678    0.3109977
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0323214   -0.1736938    0.2383366
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0225133   -0.1404636    0.1854903
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0153550   -0.0683484    0.0990584
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.2816949   -0.4786933   -0.0846966
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.5007971   -0.3910365    1.3926307
Birth       ki1114097-CMIN          BRAZIL                         0%                   NA                 0.1762012   -0.1215982    0.4740007
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0582232   -0.2588662    0.1424198
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0443698   -0.1887526    0.2774922
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.1058577   -0.0862458    0.2979612
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.1348368   -0.0697761    0.3394497
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0517423   -0.1321802    0.0286956
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0851465   -0.0667453    0.2370383
6 months    ki1000109-ResPak        PAKISTAN                       0%                   NA                 0.1999310   -0.2066994    0.6065614
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0160032   -0.1700317    0.1380254
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0589543   -0.0706265    0.1885350
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0680027   -0.0144345    0.1504399
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.1524074   -0.3519488    0.0471340
6 months    ki1114097-CMIN          BRAZIL                         0%                   NA                 0.0466131   -0.2192084    0.3124345
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                -0.0872448   -0.2148968    0.0404073
6 months    ki1114097-CMIN          PERU                           0%                   NA                -0.2655011   -0.4018901   -0.1291122
6 months    ki1114097-CONTENT       PERU                           0%                   NA                 0.0233550   -0.0856985    0.1324084
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0252005   -0.2116903    0.1612894
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0508343   -0.1640329    0.2657014
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0143694   -0.1802843    0.1515454
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.1285797   -0.0716172    0.3287766
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0100215   -0.0767124    0.0566694
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0073522   -0.1491495    0.1344451
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0362558   -0.1410196    0.2135313
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0265983   -0.1071326    0.1603292
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0914332   -0.1776713   -0.0051951
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0180491   -0.1381622    0.1742604
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                -0.0756881   -0.2572249    0.1058487
24 months   ki1114097-CMIN          PERU                           0%                   NA                -0.1572524   -0.2901909   -0.0243139
24 months   ki1114097-CONTENT       PERU                           0%                   NA                 0.0042697   -0.1295841    0.1381236

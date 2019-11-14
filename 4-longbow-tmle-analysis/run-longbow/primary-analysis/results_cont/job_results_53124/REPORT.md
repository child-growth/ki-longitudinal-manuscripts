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

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* sex
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* vagbrth
* hdlvry
* W_birthwt
* W_birthlen
* single
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_vagbrth
* delta_hdlvry
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        perdiar24    n_cell      n
----------  -------------------------  -----------------------------  ----------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%               14    215
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        127    215
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%              74    215
Birth       ki0047075b-MAL-ED          BRAZIL                         0%               34     62
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         26     62
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%               2     62
Birth       ki0047075b-MAL-ED          INDIA                          0%                5     45
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]         31     45
Birth       ki0047075b-MAL-ED          INDIA                          >5%               9     45
Birth       ki0047075b-MAL-ED          NEPAL                          0%                2     26
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]         19     26
Birth       ki0047075b-MAL-ED          NEPAL                          >5%               5     26
Birth       ki0047075b-MAL-ED          PERU                           0%               21    228
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]         87    228
Birth       ki0047075b-MAL-ED          PERU                           >5%             120    228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%               42    112
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]         69    112
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                7    115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         77    115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              31    115
Birth       ki1000109-EE               PAKISTAN                       0%              115    177
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]         62    177
Birth       ki1000109-EE               PAKISTAN                       >5%               0    177
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%               46    572
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        327    572
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%             199    572
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%               55    532
Birth       ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        322    532
Birth       ki1017093b-PROVIDE         BANGLADESH                     >5%             155    532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%              144    707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        375    707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%             188    707
Birth       ki1114097-CMIN             BANGLADESH                     0%                6     19
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]          3     19
Birth       ki1114097-CMIN             BANGLADESH                     >5%              10     19
Birth       ki1114097-CONTENT          PERU                           0%                0      2
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]          1      2
Birth       ki1114097-CONTENT          PERU                           >5%               1      2
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%               61   2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       2091   2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%             244   2396
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                6    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        142    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%              93    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0%              106    209
6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]        101    209
6 months    ki0047075b-MAL-ED          BRAZIL                         >5%               2    209
6 months    ki0047075b-MAL-ED          INDIA                          0%                3    236
6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]        191    236
6 months    ki0047075b-MAL-ED          INDIA                          >5%              42    236
6 months    ki0047075b-MAL-ED          NEPAL                          0%               14    236
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        143    236
6 months    ki0047075b-MAL-ED          NEPAL                          >5%              79    236
6 months    ki0047075b-MAL-ED          PERU                           0%                7    273
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]        109    273
6 months    ki0047075b-MAL-ED          PERU                           >5%             157    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%               78    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        174    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        177    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              61    247
6 months    ki1000109-EE               PAKISTAN                       0%              258    375
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]        117    375
6 months    ki1000109-EE               PAKISTAN                       >5%               0    375
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%               74    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         46    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%             260    380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%               15    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        339    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%             183    537
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%               12    603
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        408    603
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%             183    603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%              134    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        386    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%             195    715
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%               29    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         70    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%             200    299
6 months    ki1114097-CMIN             BANGLADESH                     0%                2    243
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]        111    243
6 months    ki1114097-CMIN             BANGLADESH                     >5%             130    243
6 months    ki1114097-CONTENT          PERU                           0%                6    215
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]        142    215
6 months    ki1114097-CONTENT          PERU                           >5%              67    215
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%              156   4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       4153   4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%             524   4833
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        130    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              76    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0%               76    169
24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         91    169
24 months   ki0047075b-MAL-ED          BRAZIL                         >5%               2    169
24 months   ki0047075b-MAL-ED          INDIA                          0%                3    227
24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        183    227
24 months   ki0047075b-MAL-ED          INDIA                          >5%              41    227
24 months   ki0047075b-MAL-ED          NEPAL                          0%               12    228
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        140    228
24 months   ki0047075b-MAL-ED          NEPAL                          >5%              76    228
24 months   ki0047075b-MAL-ED          PERU                           0%                1    201
24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         84    201
24 months   ki0047075b-MAL-ED          PERU                           >5%             116    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               71    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        166    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        156    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              52    214
24 months   ki1000109-EE               PAKISTAN                       0%              116    168
24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]         52    168
24 months   ki1000109-EE               PAKISTAN                       >5%               0    168
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    428
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        278    428
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             145    428
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                9    579
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        396    579
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             174    579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              123    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        276    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             115    514
24 months   ki1114097-CMIN             BANGLADESH                     0%                3    243
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]        114    243
24 months   ki1114097-CMIN             BANGLADESH                     >5%             126    243
24 months   ki1114097-CONTENT          PERU                           0%                4    164
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]        108    164
24 months   ki1114097-CONTENT          PERU                           >5%              52    164
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%              164   4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       4082   4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             489   4735


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

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




# Results Detail

## Results Plots
![](/tmp/32234d44-f814-445b-a128-84d0039a70d3/b1f8ded8-074f-4b3c-879a-0bfdfd30abb9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/32234d44-f814-445b-a128-84d0039a70d3/b1f8ded8-074f-4b3c-879a-0bfdfd30abb9/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/32234d44-f814-445b-a128-84d0039a70d3/b1f8ded8-074f-4b3c-879a-0bfdfd30abb9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.1470795   -0.8169167    0.5227576
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -1.0054741   -1.1871931   -0.8237550
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -0.8312098   -1.0955987   -0.5668209
Birth       ki0047075b-MAL-ED          INDIA                          0%                   NA                -0.8260000   -1.7120476    0.0600476
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]             NA                -1.0574194   -1.3366625   -0.7781762
Birth       ki0047075b-MAL-ED          INDIA                          >5%                  NA                -0.5611111   -1.3534381    0.2312159
Birth       ki0047075b-MAL-ED          PERU                           0%                   NA                 0.1405630   -0.2775856    0.5587116
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                 0.0218890   -0.1757886    0.2195665
Birth       ki0047075b-MAL-ED          PERU                           >5%                  NA                -0.1117209   -0.2929117    0.0694700
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.8928571    0.4313181    1.3543962
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.8712987    0.6273536    1.1152438
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.4625806    0.1300967    0.7950646
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -1.2974079   -1.5905894   -1.0042265
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -1.3473548   -1.4744556   -1.2202540
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -1.3738707   -1.5370189   -1.2107225
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -1.2712648   -1.4794700   -1.0630596
Birth       ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -1.2825337   -1.3789865   -1.1860808
Birth       ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -1.3415375   -1.4969513   -1.1861237
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -1.3726872   -1.5812272   -1.1641473
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -1.2196559   -1.3370592   -1.1022526
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -1.1930557   -1.3328642   -1.0532471
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.7761850   -1.1746078   -0.3777621
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -0.6828633   -0.7383450   -0.6273816
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -0.7104539   -0.8539423   -0.5669654
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.1833333   -0.5948965    0.9615632
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.1588028   -0.3343167    0.0167111
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -0.1279928   -0.3199980    0.0640124
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.1313550   -0.7858673    0.5231572
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                 0.0737168   -0.0982789    0.2457126
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                  NA                 0.1346173   -0.0766931    0.3459277
6 months    ki0047075b-MAL-ED          PERU                           0%                   NA                 0.8728571    0.1723061    1.5734082
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                 1.0342813    0.8488952    1.2196675
6 months    ki0047075b-MAL-ED          PERU                           >5%                  NA                 1.0808068    0.9161635    1.2454501
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.2427778   -0.7161220    1.2016775
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.5318644    0.3720281    0.6917007
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.5921585    0.3766024    0.8077146
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                -1.2366257   -1.6633897   -0.8098618
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                -0.5577176   -0.9121445   -0.2032907
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                -1.0663150   -1.2363442   -0.8962858
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.2716086   -0.6642069    0.1209898
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.4304391   -0.5482706   -0.3126076
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -0.5018488   -0.6592265   -0.3444711
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.2676030   -0.6462330    0.1110269
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.2332637   -0.3357178   -0.1308096
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -0.1264654   -0.2735746    0.0206437
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.1881307   -0.0777222    0.4539837
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.0083650   -0.1279007    0.1111706
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                 0.2904208    0.1368927    0.4439488
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                 0.1377692   -0.2764346    0.5519730
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             NA                -0.0948828   -0.3336435    0.1438778
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  NA                -0.1134496   -0.2451541    0.0182549
6 months    ki1114097-CONTENT          PERU                           0%                   NA                 1.4197500    0.8897030    1.9497970
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             NA                 1.0154953    0.8771516    1.1538390
6 months    ki1114097-CONTENT          PERU                           >5%                  NA                 1.1491642    0.9229924    1.3753360
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.2015638   -0.3722908   -0.0308368
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -0.3808146   -0.4198100   -0.3418192
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -0.5145287   -0.6115816   -0.4174758
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.7608333   -1.7455859    0.2239193
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.8460385   -0.9966390   -0.6954379
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -0.7806579   -0.9895925   -0.5717233
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.1189334   -0.8194473    0.5815805
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.3802666   -0.5175902   -0.2429430
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -0.4036394   -0.6120716   -0.1952072
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.2433333   -0.4146176    0.9012843
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0977885   -0.0521334    0.2477103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0994231   -0.3337823    0.1349362
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -1.1800000   -1.4547770   -0.9052230
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.9456415   -1.0692081   -0.8220748
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -0.8370172   -1.0005302   -0.6735043
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -1.0127778   -1.2883897   -0.7371658
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.9233081   -1.0226788   -0.8239373
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -0.8173851   -0.9715768   -0.6631933
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.5422511   -0.7865732   -0.2979289
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.6267253   -0.7766463   -0.4768042
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -0.6122559   -0.7720202   -0.4524915
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -1.2448977   -1.4241964   -1.0655989
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -1.2172204   -1.2501034   -1.1843373
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -1.2666855   -1.3595637   -1.1738072


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9412093   -1.0864308   -0.7959878
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9324444   -1.2067907   -0.6580982
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7624348    0.5710709    0.9537986
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.3525437   -1.4473932   -1.2576942
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6886269   -0.7410452   -0.6362086
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1383956   -0.2672708   -0.0095204
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0568987    0.9352990    1.1784983
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0840134   -0.1945572    0.0265305
6 months    ki1114097-CONTENT          PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0539486   -0.0712465    0.1791437
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2231088   -1.2549632   -1.1912543


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.8583945   -1.5535609   -0.1632281
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.6841302   -1.4046202    0.0363598
Birth       ki0047075b-MAL-ED          INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]             0%                -0.2314194   -1.1604280    0.6975893
Birth       ki0047075b-MAL-ED          INDIA                          >5%                  0%                 0.2648889   -0.9237500    1.4535278
Birth       ki0047075b-MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]             0%                -0.1186740   -0.5815566    0.3442086
Birth       ki0047075b-MAL-ED          PERU                           >5%                  0%                -0.2522838   -0.7044753    0.1999076
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0215584   -0.5436001    0.5004833
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.4302765   -0.9991033    0.1385503
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                -0.0499469   -0.3694175    0.2695237
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                -0.0764628   -0.4119098    0.2589842
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.0112689   -0.2364221    0.2138843
Birth       ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                -0.0702726   -0.3259114    0.1853661
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.1530313   -0.0826203    0.3886829
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                 0.1796316   -0.0680305    0.4272936
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                 0.0933217   -0.3060145    0.4926579
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                 0.0657311   -0.3553244    0.4867866
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.3421362   -1.1399123    0.4556400
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.3113262   -1.1128919    0.4902396
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                 0.2050719   -0.4738376    0.8839814
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                  0%                 0.2659723   -0.4202852    0.9522299
6 months    ki0047075b-MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             0%                 0.1614242   -0.5632411    0.8860895
6 months    ki0047075b-MAL-ED          PERU                           >5%                  0%                 0.2079497   -0.5116886    0.9275879
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.2890866   -0.6830432    1.2612164
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.3493807   -0.6334485    1.3322099
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                 0.6789081    0.1253846    1.2324317
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0%                 0.1703108   -0.2888625    0.6294840
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                -0.1588306   -0.5697461    0.2520850
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                -0.2302403   -0.6546438    0.1941632
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0343393   -0.3576351    0.4263138
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.1411376   -0.2645174    0.5467926
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.1964958   -0.4873310    0.0943394
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                 0.1022900   -0.2047373    0.4093173
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             0%                -0.2326520   -0.7098782    0.2445742
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  0%                -0.2512188   -0.6851498    0.1827122
6 months    ki1114097-CONTENT          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             0%                -0.4042547   -0.9520583    0.1435489
6 months    ki1114097-CONTENT          PERU                           >5%                  0%                -0.2705858   -0.8468700    0.3056984
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                -0.1792508   -0.3505924   -0.0079092
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.3129649   -0.5028719   -0.1230580
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0852051   -1.0814070    0.9109967
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.0198246   -1.0264979    0.9868488
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.2613332   -0.9756944    0.4530280
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.2847060   -1.0160048    0.4465927
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.1455449   -0.8203604    0.5292706
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.3427564   -1.0412002    0.3556873
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                 0.2343585   -0.0669240    0.5356410
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                 0.3429828    0.0232346    0.6627310
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0894697   -0.2035090    0.3824484
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.1953927   -0.1204190    0.5112044
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0844742   -0.3689684    0.2000201
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0700048   -0.3605429    0.2205334
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                 0.0276773   -0.1519614    0.2073160
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.0217878   -0.2208426    0.1772669


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.7941298   -1.4442313   -0.1440282
Birth       ki0047075b-MAL-ED          INDIA                          0%                   NA                -0.1064444   -0.9346255    0.7217366
Birth       ki0047075b-MAL-ED          PERU                           0%                   NA                -0.1925805   -0.6020353    0.2168742
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1304224   -0.6033978    0.3425531
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.0551358   -0.3404616    0.2301900
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.0271938   -0.2268400    0.1724524
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.1285359   -0.0583864    0.3154582
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.0875581   -0.3012992    0.4764155
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.3217289   -1.0911237    0.4476659
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                 0.2424002   -0.3874372    0.8722377
6 months    ki0047075b-MAL-ED          PERU                           0%                   NA                 0.1840415   -0.5090605    0.8771435
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.2934435   -0.6391424    1.2260295
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                 0.2244679   -0.2018834    0.6508191
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.1757952   -0.5699000    0.2183095
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.0685124   -0.3102500    0.4472747
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.1583685   -0.4096439    0.0929069
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                -0.2217826   -0.6127854    0.1692203
6 months    ki1114097-CONTENT          PERU                           0%                   NA                -0.3513182   -0.8794617    0.1768252
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.1882417   -0.3534363   -0.0230471
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.0593553   -1.0236072    0.9048965
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.2575140   -0.9358375    0.4208095
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1893847   -0.8407667    0.4619972
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.2684210   -0.0167391    0.5535810
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.1199108   -0.1611490    0.4009705
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0680991   -0.2843059    0.1481077
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.0217889   -0.1512702    0.1948479

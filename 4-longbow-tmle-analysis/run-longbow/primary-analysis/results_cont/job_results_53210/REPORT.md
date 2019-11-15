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
![](/tmp/22f342d1-d7bc-4a6e-8b5a-529dcef77a95/9be94d14-cfba-4b66-a855-138dfbf729b3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/22f342d1-d7bc-4a6e-8b5a-529dcef77a95/9be94d14-cfba-4b66-a855-138dfbf729b3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/22f342d1-d7bc-4a6e-8b5a-529dcef77a95/9be94d14-cfba-4b66-a855-138dfbf729b3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.2516565   -0.8209562    0.3176432
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -1.0019784   -1.1849087   -0.8190482
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -0.8827914   -1.1440162   -0.6215666
Birth       ki0047075b-MAL-ED          INDIA                          0%                   NA                -0.8260000   -1.7120476    0.0600476
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]             NA                -1.0574194   -1.3366625   -0.7781762
Birth       ki0047075b-MAL-ED          INDIA                          >5%                  NA                -0.5611111   -1.3534381    0.2312159
Birth       ki0047075b-MAL-ED          PERU                           0%                   NA                 0.1196525   -0.3633267    0.6026317
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                 0.0240327   -0.1751206    0.2231861
Birth       ki0047075b-MAL-ED          PERU                           >5%                  NA                -0.1130213   -0.2938255    0.0677828
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.8928571    0.4313181    1.3543962
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.8712987    0.6273536    1.1152438
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.4625806    0.1300967    0.7950646
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -1.2639721   -1.5527019   -0.9752424
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -1.3467048   -1.4728910   -1.2205185
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -1.3741848   -1.5367543   -1.2116153
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -1.2618363   -1.4903969   -1.0332757
Birth       ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -1.2841511   -1.3780179   -1.1902842
Birth       ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -1.3448609   -1.4991308   -1.1905911
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -1.3563234   -1.5661653   -1.1464815
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -1.2159655   -1.3350006   -1.0969304
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -1.1463895   -1.2906451   -1.0021338
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.7879800   -1.1963728   -0.3795873
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -0.6825547   -0.7380998   -0.6270097
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -0.7139536   -0.8622813   -0.5656258
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.1833333   -0.5948965    0.9615632
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.1581455   -0.3337303    0.0174392
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -0.1271326   -0.3185947    0.0643295
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                 0.1758547   -0.5367369    0.8884463
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                 0.0955531   -0.0766201    0.2677263
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                  NA                 0.2143160    0.0067700    0.4218621
6 months    ki0047075b-MAL-ED          PERU                           0%                   NA                 0.8728571    0.1723061    1.5734082
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                 1.0295260    0.8447495    1.2143025
6 months    ki0047075b-MAL-ED          PERU                           >5%                  NA                 1.0771231    0.9121893    1.2420570
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.2427778   -0.7161220    1.2016775
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.5318644    0.3720281    0.6917007
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.5921585    0.3766024    0.8077146
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                -1.2249775   -1.6384099   -0.8115451
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                -0.7851132   -1.1207654   -0.4494610
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                -1.0642147   -1.2386913   -0.8897380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.0233410   -0.3459084    0.2992265
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.4249219   -0.5417811   -0.3080627
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -0.4801704   -0.6320519   -0.3282889
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.2556526   -0.6262536    0.1149485
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.2343689   -0.3369052   -0.1318327
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -0.1255529   -0.2738866    0.0227808
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.2223469   -0.0313203    0.4760141
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                 0.0026013   -0.1184499    0.1236524
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                 0.3050876    0.1645238    0.4456515
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                 0.1221176   -0.2879505    0.5321857
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             NA                -0.1010450   -0.3434098    0.1413197
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  NA                -0.1109752   -0.2427871    0.0208368
6 months    ki1114097-CONTENT          PERU                           0%                   NA                 1.4197500    0.8897030    1.9497970
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             NA                 1.0154953    0.8771516    1.1538390
6 months    ki1114097-CONTENT          PERU                           >5%                  NA                 1.1491642    0.9229924    1.3753360
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.2064306   -0.3750700   -0.0377913
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -0.3808009   -0.4197657   -0.3418360
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -0.5236027   -0.6206758   -0.4265296
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.7608333   -1.7455859    0.2239193
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.8440769   -0.9945327   -0.6936211
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -0.7815132   -0.9897171   -0.5733093
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.3632876   -1.0602294    0.3336541
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.3900385   -0.5291963   -0.2508807
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -0.4265897   -0.6350752   -0.2181042
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.2433333   -0.4146176    0.9012843
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0989530   -0.0508664    0.2487724
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0994231   -0.3337823    0.1349362
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -1.1800000   -1.4547770   -0.9052230
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.9456415   -1.0692081   -0.8220748
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -0.8370172   -1.0005302   -0.6735043
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -1.0127778   -1.2883897   -0.7371658
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.9233081   -1.0226788   -0.8239373
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -0.8173851   -0.9715768   -0.6631933
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.5993004   -0.8485175   -0.3500832
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.6175231   -0.7650168   -0.4700295
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -0.7310518   -0.8752718   -0.5868318
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -1.2458188   -1.4245763   -1.0670612
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -1.2171563   -1.2499616   -1.1843509
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -1.2638815   -1.3593739   -1.1683891


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9418605   -1.0869834   -0.7967375
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9324444   -1.2067907   -0.6580982
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7624348    0.5710709    0.9537986
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.3525437   -1.4473932   -1.2576942
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6886269   -0.7410452   -0.6362086
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0528816    0.9313005    1.1744626
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0840134   -0.1945572    0.0265305
6 months    ki1114097-CONTENT          PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2231088   -1.2549632   -1.1912543


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.7503219   -1.3503333   -0.1503105
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.6311349   -1.2581449   -0.0041248
Birth       ki0047075b-MAL-ED          INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]             0%                -0.2314194   -1.1604280    0.6975893
Birth       ki0047075b-MAL-ED          INDIA                          >5%                  0%                 0.2648889   -0.9237500    1.4535278
Birth       ki0047075b-MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]             0%                -0.0956198   -0.6179829    0.4267433
Birth       ki0047075b-MAL-ED          PERU                           >5%                  0%                -0.2326739   -0.7459667    0.2806189
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0215584   -0.5436001    0.5004833
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.4302765   -0.9991033    0.1385503
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                -0.0827326   -0.3976306    0.2321653
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                -0.1102127   -0.4415759    0.2211506
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.0223148   -0.2654711    0.2208416
Birth       ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                -0.0830246   -0.3549863    0.1889370
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.1403579   -0.0967683    0.3774841
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                 0.2099339   -0.0412328    0.4611006
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                 0.1054253   -0.3040477    0.5148983
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                 0.0740265   -0.3590326    0.5070856
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.3414789   -1.1392706    0.4563129
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.3104659   -1.1119018    0.4909699
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0803016   -0.8125713    0.6519681
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                  0%                 0.0384613   -0.7034704    0.7803931
6 months    ki0047075b-MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             0%                 0.1566689   -0.5678407    0.8811784
6 months    ki0047075b-MAL-ED          PERU                           >5%                  0%                 0.2042660   -0.5154387    0.9239707
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.2890866   -0.6830432    1.2612164
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.3493807   -0.6334485    1.3322099
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                 0.4398642   -0.0935042    0.9732327
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0%                 0.1607628   -0.2873753    0.6089008
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                -0.4015810   -0.7437172   -0.0594447
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                -0.4568295   -0.8140568   -0.0996021
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0212836   -0.3630884    0.4056557
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.1300996   -0.2689488    0.5291481
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.2197456   -0.4991406    0.0596493
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0827407   -0.2062559    0.3717374
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             0%                -0.2231627   -0.6989870    0.2526616
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  0%                -0.2330928   -0.6632308    0.1970452
6 months    ki1114097-CONTENT          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             0%                -0.4042547   -0.9520583    0.1435489
6 months    ki1114097-CONTENT          PERU                           >5%                  0%                -0.2705858   -0.8468700    0.3056984
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                -0.1743702   -0.3441453   -0.0045951
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.3171721   -0.5064768   -0.1278674
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0832436   -1.0794236    0.9129364
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.0206798   -1.0272018    0.9858422
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0267509   -0.7373378    0.6838360
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.0633021   -0.7903363    0.6637321
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.1443803   -0.8191731    0.5304124
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.3427564   -1.0412002    0.3556873
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                 0.2343585   -0.0669240    0.5356410
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                 0.3429828    0.0232346    0.6627310
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0894697   -0.2035090    0.3824484
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.1953927   -0.1204190    0.5112044
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0182227   -0.3059441    0.2694986
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.1317514   -0.4191888    0.1556860
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                 0.0286625   -0.1504674    0.2077924
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.0180627   -0.2178514    0.1817260


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.6902039   -1.2453153   -0.1350926
Birth       ki0047075b-MAL-ED          INDIA                          0%                   NA                -0.1064444   -0.9346255    0.7217366
Birth       ki0047075b-MAL-ED          PERU                           0%                   NA                -0.1716701   -0.6446574    0.3013172
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1304224   -0.6033978    0.3425531
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.0885716   -0.3695562    0.1924131
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.0366223   -0.2556303    0.1823856
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.1121720   -0.0755200    0.2998640
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.0993532   -0.2996506    0.4983569
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.3210097   -1.0903899    0.4483705
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0654239   -0.7502666    0.6194188
6 months    ki0047075b-MAL-ED          PERU                           0%                   NA                 0.1800244   -0.5130743    0.8731232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.2934435   -0.6391424    1.2260295
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                 0.2128196   -0.2000556    0.6256947
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.4240628   -0.7514335   -0.0966922
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.0565619   -0.3145438    0.4276677
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.1925847   -0.4318890    0.0467196
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                -0.2061310   -0.5931716    0.1809095
6 months    ki1114097-CONTENT          PERU                           0%                   NA                -0.3513182   -0.8794617    0.1768252
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.1833749   -0.3469301   -0.0198196
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.0584591   -1.0226814    0.9057631
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0116247   -0.6869589    0.6637095
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1885358   -0.8399063    0.4628347
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.2684210   -0.0167391    0.5535810
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.1199108   -0.1611490    0.4009705
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0110498   -0.2294310    0.2073314
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.0227100   -0.1498072    0.1952273

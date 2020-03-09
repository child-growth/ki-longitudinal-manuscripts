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

agecat      studyid         country                        perdiar24    n_cell      n
----------  --------------  -----------------------------  ----------  -------  -----
Birth       CMIN            BANGLADESH                     0%                6     19
Birth       CMIN            BANGLADESH                     (0%, 5%]          3     19
Birth       CMIN            BANGLADESH                     >5%              10     19
Birth       CONTENT         PERU                           0%                0      2
Birth       CONTENT         PERU                           (0%, 5%]          1      2
Birth       CONTENT         PERU                           >5%               1      2
Birth       EE              PAKISTAN                       0%              115    177
Birth       EE              PAKISTAN                       (0%, 5%]         62    177
Birth       EE              PAKISTAN                       >5%               0    177
Birth       JiVitA-4        BANGLADESH                     0%               61   2396
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]       2091   2396
Birth       JiVitA-4        BANGLADESH                     >5%             244   2396
Birth       MAL-ED          BANGLADESH                     0%               14    215
Birth       MAL-ED          BANGLADESH                     (0%, 5%]        127    215
Birth       MAL-ED          BANGLADESH                     >5%              74    215
Birth       MAL-ED          BRAZIL                         0%               34     62
Birth       MAL-ED          BRAZIL                         (0%, 5%]         26     62
Birth       MAL-ED          BRAZIL                         >5%               2     62
Birth       MAL-ED          INDIA                          0%                5     45
Birth       MAL-ED          INDIA                          (0%, 5%]         31     45
Birth       MAL-ED          INDIA                          >5%               9     45
Birth       MAL-ED          NEPAL                          0%                2     26
Birth       MAL-ED          NEPAL                          (0%, 5%]         19     26
Birth       MAL-ED          NEPAL                          >5%               5     26
Birth       MAL-ED          PERU                           0%               21    228
Birth       MAL-ED          PERU                           (0%, 5%]         87    228
Birth       MAL-ED          PERU                           >5%             120    228
Birth       MAL-ED          SOUTH AFRICA                   0%               42    112
Birth       MAL-ED          SOUTH AFRICA                   (0%, 5%]         69    112
Birth       MAL-ED          SOUTH AFRICA                   >5%               1    112
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                7    115
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         77    115
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              31    115
Birth       NIH-Birth       BANGLADESH                     0%               46    572
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]        327    572
Birth       NIH-Birth       BANGLADESH                     >5%             199    572
Birth       NIH-Crypto      BANGLADESH                     0%              144    707
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]        375    707
Birth       NIH-Crypto      BANGLADESH                     >5%             188    707
Birth       PROVIDE         BANGLADESH                     0%               55    532
Birth       PROVIDE         BANGLADESH                     (0%, 5%]        322    532
Birth       PROVIDE         BANGLADESH                     >5%             155    532
6 months    CMIN            BANGLADESH                     0%                2    243
6 months    CMIN            BANGLADESH                     (0%, 5%]        111    243
6 months    CMIN            BANGLADESH                     >5%             130    243
6 months    CONTENT         PERU                           0%                6    215
6 months    CONTENT         PERU                           (0%, 5%]        142    215
6 months    CONTENT         PERU                           >5%              67    215
6 months    EE              PAKISTAN                       0%              258    375
6 months    EE              PAKISTAN                       (0%, 5%]        117    375
6 months    EE              PAKISTAN                       >5%               0    375
6 months    Guatemala BSC   GUATEMALA                      0%               29    299
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]         70    299
6 months    Guatemala BSC   GUATEMALA                      >5%             200    299
6 months    JiVitA-4        BANGLADESH                     0%              156   4833
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]       4153   4833
6 months    JiVitA-4        BANGLADESH                     >5%             524   4833
6 months    MAL-ED          BANGLADESH                     0%                6    241
6 months    MAL-ED          BANGLADESH                     (0%, 5%]        142    241
6 months    MAL-ED          BANGLADESH                     >5%              93    241
6 months    MAL-ED          BRAZIL                         0%              106    209
6 months    MAL-ED          BRAZIL                         (0%, 5%]        101    209
6 months    MAL-ED          BRAZIL                         >5%               2    209
6 months    MAL-ED          INDIA                          0%                3    236
6 months    MAL-ED          INDIA                          (0%, 5%]        191    236
6 months    MAL-ED          INDIA                          >5%              42    236
6 months    MAL-ED          NEPAL                          0%               14    236
6 months    MAL-ED          NEPAL                          (0%, 5%]        143    236
6 months    MAL-ED          NEPAL                          >5%              79    236
6 months    MAL-ED          PERU                           0%                7    273
6 months    MAL-ED          PERU                           (0%, 5%]        109    273
6 months    MAL-ED          PERU                           >5%             157    273
6 months    MAL-ED          SOUTH AFRICA                   0%               78    254
6 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]        174    254
6 months    MAL-ED          SOUTH AFRICA                   >5%               2    254
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9    247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        177    247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              61    247
6 months    NIH-Birth       BANGLADESH                     0%               15    537
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]        339    537
6 months    NIH-Birth       BANGLADESH                     >5%             183    537
6 months    NIH-Crypto      BANGLADESH                     0%              134    715
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]        386    715
6 months    NIH-Crypto      BANGLADESH                     >5%             195    715
6 months    PROVIDE         BANGLADESH                     0%               12    603
6 months    PROVIDE         BANGLADESH                     (0%, 5%]        408    603
6 months    PROVIDE         BANGLADESH                     >5%             183    603
6 months    SAS-FoodSuppl   INDIA                          0%               74    380
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]         46    380
6 months    SAS-FoodSuppl   INDIA                          >5%             260    380
24 months   CMIN            BANGLADESH                     0%                3    243
24 months   CMIN            BANGLADESH                     (0%, 5%]        114    243
24 months   CMIN            BANGLADESH                     >5%             126    243
24 months   CONTENT         PERU                           0%                4    164
24 months   CONTENT         PERU                           (0%, 5%]        108    164
24 months   CONTENT         PERU                           >5%              52    164
24 months   EE              PAKISTAN                       0%              116    168
24 months   EE              PAKISTAN                       (0%, 5%]         52    168
24 months   EE              PAKISTAN                       >5%               0    168
24 months   JiVitA-4        BANGLADESH                     0%              164   4735
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]       4082   4735
24 months   JiVitA-4        BANGLADESH                     >5%             489   4735
24 months   MAL-ED          BANGLADESH                     0%                6    212
24 months   MAL-ED          BANGLADESH                     (0%, 5%]        130    212
24 months   MAL-ED          BANGLADESH                     >5%              76    212
24 months   MAL-ED          BRAZIL                         0%               76    169
24 months   MAL-ED          BRAZIL                         (0%, 5%]         91    169
24 months   MAL-ED          BRAZIL                         >5%               2    169
24 months   MAL-ED          INDIA                          0%                3    227
24 months   MAL-ED          INDIA                          (0%, 5%]        183    227
24 months   MAL-ED          INDIA                          >5%              41    227
24 months   MAL-ED          NEPAL                          0%               12    228
24 months   MAL-ED          NEPAL                          (0%, 5%]        140    228
24 months   MAL-ED          NEPAL                          >5%              76    228
24 months   MAL-ED          PERU                           0%                1    201
24 months   MAL-ED          PERU                           (0%, 5%]         84    201
24 months   MAL-ED          PERU                           >5%             116    201
24 months   MAL-ED          SOUTH AFRICA                   0%               71    238
24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]        166    238
24 months   MAL-ED          SOUTH AFRICA                   >5%               1    238
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        156    214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              52    214
24 months   NIH-Birth       BANGLADESH                     0%                5    428
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]        278    428
24 months   NIH-Birth       BANGLADESH                     >5%             145    428
24 months   NIH-Crypto      BANGLADESH                     0%              123    514
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]        276    514
24 months   NIH-Crypto      BANGLADESH                     >5%             115    514
24 months   PROVIDE         BANGLADESH                     0%                9    579
24 months   PROVIDE         BANGLADESH                     (0%, 5%]        396    579
24 months   PROVIDE         BANGLADESH                     >5%             174    579


The following strata were considered:

* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/8e20e505-0984-427b-aea0-415509f876c5/ec29bb35-b985-4e7e-92ef-b5313fa4e4e3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8e20e505-0984-427b-aea0-415509f876c5/ec29bb35-b985-4e7e-92ef-b5313fa4e4e3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8e20e505-0984-427b-aea0-415509f876c5/ec29bb35-b985-4e7e-92ef-b5313fa4e4e3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-4        BANGLADESH                     0%                   NA                -0.8285430   -1.2501039   -0.4069820
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]             NA                -0.6793484   -0.7351306   -0.6235662
Birth       JiVitA-4        BANGLADESH                     >5%                  NA                -0.7381767   -0.8942703   -0.5820830
Birth       MAL-ED          BANGLADESH                     0%                   NA                -0.5253498   -1.1416762    0.0909767
Birth       MAL-ED          BANGLADESH                     (0%, 5%]             NA                -1.0121241   -1.1942996   -0.8299487
Birth       MAL-ED          BANGLADESH                     >5%                  NA                -0.8967055   -1.1575546   -0.6358565
Birth       MAL-ED          INDIA                          0%                   NA                -0.8260000   -1.7120476    0.0600476
Birth       MAL-ED          INDIA                          (0%, 5%]             NA                -1.0574194   -1.3366625   -0.7781762
Birth       MAL-ED          INDIA                          >5%                  NA                -0.5611111   -1.3534381    0.2312159
Birth       MAL-ED          PERU                           0%                   NA                 0.1223724   -0.2420515    0.4867963
Birth       MAL-ED          PERU                           (0%, 5%]             NA                 0.0020242   -0.1875072    0.1915556
Birth       MAL-ED          PERU                           >5%                  NA                -0.1052915   -0.2793077    0.0687248
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.8928571    0.4313181    1.3543962
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.8712987    0.6273536    1.1152438
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.4625806    0.1300967    0.7950646
Birth       NIH-Birth       BANGLADESH                     0%                   NA                -1.2997967   -1.6082544   -0.9913390
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -1.3459825   -1.4718920   -1.2200730
Birth       NIH-Birth       BANGLADESH                     >5%                  NA                -1.3757870   -1.5402310   -1.2113429
Birth       NIH-Crypto      BANGLADESH                     0%                   NA                -1.3636868   -1.5697550   -1.1576185
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -1.2013991   -1.3186582   -1.0841400
Birth       NIH-Crypto      BANGLADESH                     >5%                  NA                -1.2057050   -1.3559124   -1.0554977
Birth       PROVIDE         BANGLADESH                     0%                   NA                -1.2770429   -1.4861449   -1.0679408
Birth       PROVIDE         BANGLADESH                     (0%, 5%]             NA                -1.2751627   -1.3711396   -1.1791859
Birth       PROVIDE         BANGLADESH                     >5%                  NA                -1.3293678   -1.4843776   -1.1743580
6 months    CONTENT         PERU                           0%                   NA                 1.4351667    0.9626985    1.9076349
6 months    CONTENT         PERU                           (0%, 5%]             NA                 1.0176514    0.8796884    1.1556144
6 months    CONTENT         PERU                           >5%                  NA                 1.1303657    0.8984202    1.3623112
6 months    Guatemala BSC   GUATEMALA                      0%                   NA                 0.0115316   -0.4029560    0.4260191
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]             NA                -0.0969712   -0.3325944    0.1386520
6 months    Guatemala BSC   GUATEMALA                      >5%                  NA                -0.1108810   -0.2425519    0.0207898
6 months    JiVitA-4        BANGLADESH                     0%                   NA                -0.2230141   -0.4098097   -0.0362186
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]             NA                -0.3854635   -0.4244141   -0.3465128
6 months    JiVitA-4        BANGLADESH                     >5%                  NA                -0.4855364   -0.5839176   -0.3871551
6 months    MAL-ED          BANGLADESH                     0%                   NA                 0.1833333   -0.5948965    0.9615632
6 months    MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.1581455   -0.3337303    0.0174392
6 months    MAL-ED          BANGLADESH                     >5%                  NA                -0.1271326   -0.3185947    0.0643295
6 months    MAL-ED          NEPAL                          0%                   NA                 0.2825802   -0.4345493    0.9997096
6 months    MAL-ED          NEPAL                          (0%, 5%]             NA                 0.0849107   -0.0878304    0.2576517
6 months    MAL-ED          NEPAL                          >5%                  NA                 0.1788467   -0.0281543    0.3858478
6 months    MAL-ED          PERU                           0%                   NA                 0.8728571    0.1723061    1.5734082
6 months    MAL-ED          PERU                           (0%, 5%]             NA                 1.0295260    0.8447495    1.2143025
6 months    MAL-ED          PERU                           >5%                  NA                 1.0771231    0.9121893    1.2420570
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.2427778   -0.7161220    1.2016775
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.5318644    0.3720281    0.6917007
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.5921585    0.3766024    0.8077146
6 months    NIH-Birth       BANGLADESH                     0%                   NA                -0.1562557   -0.5390127    0.2265013
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -0.4383524   -0.5556261   -0.3210786
6 months    NIH-Birth       BANGLADESH                     >5%                  NA                -0.4786370   -0.6360890   -0.3211850
6 months    NIH-Crypto      BANGLADESH                     0%                   NA                 0.0912678   -0.1278481    0.3103837
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.0129626   -0.1288725    0.1029472
6 months    NIH-Crypto      BANGLADESH                     >5%                  NA                 0.2030857    0.0521201    0.3540513
6 months    PROVIDE         BANGLADESH                     0%                   NA                -0.1238653   -0.5032136    0.2554830
6 months    PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.2354130   -0.3382970   -0.1325291
6 months    PROVIDE         BANGLADESH                     >5%                  NA                -0.1264524   -0.2742432    0.0213383
6 months    SAS-FoodSuppl   INDIA                          0%                   NA                -1.0915645   -1.3664201   -0.8167089
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                -0.9022533   -1.2406944   -0.5638122
6 months    SAS-FoodSuppl   INDIA                          >5%                  NA                -1.0211463   -1.1624345   -0.8798580
24 months   JiVitA-4        BANGLADESH                     0%                   NA                -1.2471520   -1.4242213   -1.0700828
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]             NA                -1.2194537   -1.2522598   -1.1866475
24 months   JiVitA-4        BANGLADESH                     >5%                  NA                -1.2339403   -1.3209629   -1.1469177
24 months   MAL-ED          BANGLADESH                     0%                   NA                -0.7608333   -1.7455859    0.2239193
24 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.8440769   -0.9945327   -0.6936211
24 months   MAL-ED          BANGLADESH                     >5%                  NA                -0.7815132   -0.9897171   -0.5733093
24 months   MAL-ED          NEPAL                          0%                   NA                -0.1300236   -0.7585713    0.4985242
24 months   MAL-ED          NEPAL                          (0%, 5%]             NA                -0.3839704   -0.5227677   -0.2451731
24 months   MAL-ED          NEPAL                          >5%                  NA                -0.4067199   -0.6160983   -0.1973415
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.2433333   -0.4146176    0.9012843
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0989530   -0.0508664    0.2487724
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0994231   -0.3337823    0.1349362
24 months   NIH-Birth       BANGLADESH                     0%                   NA                -1.1800000   -1.4547770   -0.9052230
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -0.9456415   -1.0692081   -0.8220748
24 months   NIH-Birth       BANGLADESH                     >5%                  NA                -0.8370172   -1.0005302   -0.6735043
24 months   NIH-Crypto      BANGLADESH                     0%                   NA                -0.5301456   -0.7625323   -0.2977589
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.6172279   -0.7704078   -0.4640480
24 months   NIH-Crypto      BANGLADESH                     >5%                  NA                -0.7440283   -0.8850112   -0.6030453
24 months   PROVIDE         BANGLADESH                     0%                   NA                -1.0127778   -1.2883897   -0.7371658
24 months   PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.9233081   -1.0226788   -0.8239373
24 months   PROVIDE         BANGLADESH                     >5%                  NA                -0.8173851   -0.9715768   -0.6631933


### Parameter: E(Y)


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-4        BANGLADESH                     NA                   NA                -0.6886269   -0.7410452   -0.6362086
Birth       MAL-ED          BANGLADESH                     NA                   NA                -0.9418605   -1.0869834   -0.7967375
Birth       MAL-ED          INDIA                          NA                   NA                -0.9324444   -1.2067907   -0.6580982
Birth       MAL-ED          PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7624348    0.5710709    0.9537986
Birth       NIH-Birth       BANGLADESH                     NA                   NA                -1.3525437   -1.4473932   -1.2576942
Birth       NIH-Crypto      BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
6 months    CONTENT         PERU                           NA                   NA                 1.0644279    0.9468682    1.1819876
6 months    Guatemala BSC   GUATEMALA                      NA                   NA                -0.0840134   -0.1945572    0.0265305
6 months    JiVitA-4        BANGLADESH                     NA                   NA                -0.3898055   -0.4270507   -0.3525603
6 months    MAL-ED          BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    MAL-ED          NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    MAL-ED          PERU                           NA                   NA                 1.0528816    0.9313005    1.1744626
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    NIH-Birth       BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
24 months   JiVitA-4        BANGLADESH                     NA                   NA                -1.2231088   -1.2549632   -1.1912543
24 months   MAL-ED          BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED          NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   NIH-Birth       BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187


### Parameter: ATE


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]             0%                 0.1491945   -0.2739448    0.5723339
Birth       JiVitA-4        BANGLADESH                     >5%                  0%                 0.0903663   -0.3601818    0.5409143
Birth       MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.4867744   -1.1296521    0.1561034
Birth       MAL-ED          BANGLADESH                     >5%                  0%                -0.3713557   -1.0406444    0.2979329
Birth       MAL-ED          INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          INDIA                          (0%, 5%]             0%                -0.2314194   -1.1604280    0.6975893
Birth       MAL-ED          INDIA                          >5%                  0%                 0.2648889   -0.9237500    1.4535278
Birth       MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          PERU                           (0%, 5%]             0%                -0.1203482   -0.5318613    0.2911648
Birth       MAL-ED          PERU                           >5%                  0%                -0.2276639   -0.6320117    0.1766839
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0215584   -0.5436001    0.5004833
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.4302765   -0.9991033    0.1385503
Birth       NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.0461858   -0.3794328    0.2870612
Birth       NIH-Birth       BANGLADESH                     >5%                  0%                -0.0759903   -0.4255028    0.2735223
Birth       NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.1622876   -0.0695261    0.3941013
Birth       NIH-Crypto      BANGLADESH                     >5%                  0%                 0.1579817   -0.0922232    0.4081867
Birth       PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0018801   -0.2243488    0.2281091
Birth       PROVIDE         BANGLADESH                     >5%                  0%                -0.0523250   -0.3087310    0.2040810
6 months    CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    CONTENT         PERU                           (0%, 5%]             0%                -0.4175153   -0.9097144    0.0746839
6 months    CONTENT         PERU                           >5%                  0%                -0.3048010   -0.8311326    0.2215306
6 months    Guatemala BSC   GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]             0%                -0.1085028   -0.5852425    0.3682370
6 months    Guatemala BSC   GUATEMALA                      >5%                  0%                -0.1224126   -0.5575777    0.3127526
6 months    JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]             0%                -0.1624493   -0.3506905    0.0257918
6 months    JiVitA-4        BANGLADESH                     >5%                  0%                -0.2625222   -0.4683852   -0.0566593
6 months    MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.3414789   -1.1392706    0.4563129
6 months    MAL-ED          BANGLADESH                     >5%                  0%                -0.3104659   -1.1119018    0.4909699
6 months    MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          NEPAL                          (0%, 5%]             0%                -0.1976695   -0.9358288    0.5404898
6 months    MAL-ED          NEPAL                          >5%                  0%                -0.1037334   -0.8503807    0.6429139
6 months    MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          PERU                           (0%, 5%]             0%                 0.1566689   -0.5678407    0.8811784
6 months    MAL-ED          PERU                           >5%                  0%                 0.2042660   -0.5154387    0.9239707
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.2890866   -0.6830432    1.2612164
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.3493807   -0.6334485    1.3322099
6 months    NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.2820967   -0.6832344    0.1190410
6 months    NIH-Birth       BANGLADESH                     >5%                  0%                -0.3223813   -0.7368151    0.0920524
6 months    NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.1042304   -0.3518300    0.1433692
6 months    NIH-Crypto      BANGLADESH                     >5%                  0%                 0.1118179   -0.1545218    0.3781576
6 months    PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.1115477   -0.5050190    0.2819235
6 months    PROVIDE         BANGLADESH                     >5%                  0%                -0.0025871   -0.4100281    0.4048539
6 months    SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                 0.1893112   -0.2482069    0.6268293
6 months    SAS-FoodSuppl   INDIA                          >5%                  0%                 0.0704182   -0.2409444    0.3817808
24 months   JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]             0%                 0.0276984   -0.1495745    0.2049713
24 months   JiVitA-4        BANGLADESH                     >5%                  0%                 0.0132118   -0.1814212    0.2078447
24 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0832436   -1.0794236    0.9129364
24 months   MAL-ED          BANGLADESH                     >5%                  0%                -0.0206798   -1.0272018    0.9858422
24 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED          NEPAL                          (0%, 5%]             0%                -0.2539468   -0.8968658    0.3889721
24 months   MAL-ED          NEPAL                          >5%                  0%                -0.2766964   -0.9382718    0.3848790
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.1443803   -0.8191731    0.5304124
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.3427564   -1.0412002    0.3556873
24 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.2343585   -0.0669240    0.5356410
24 months   NIH-Birth       BANGLADESH                     >5%                  0%                 0.3429828    0.0232346    0.6627310
24 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0870823   -0.3653520    0.1911874
24 months   NIH-Crypto      BANGLADESH                     >5%                  0%                -0.2138826   -0.4859687    0.0582035
24 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0894697   -0.2035090    0.3824484
24 months   PROVIDE         BANGLADESH                     >5%                  0%                 0.1953927   -0.1204190    0.5112044


### Parameter: PAR


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-4        BANGLADESH                     0%                   NA                 0.1399161   -0.2720897   0.5519219
Birth       MAL-ED          BANGLADESH                     0%                   NA                -0.4165107   -1.0129623   0.1799409
Birth       MAL-ED          INDIA                          0%                   NA                -0.1064444   -0.9346255   0.7217366
Birth       MAL-ED          PERU                           0%                   NA                -0.1743899   -0.5283574   0.1795775
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1304224   -0.6033978   0.3425531
Birth       NIH-Birth       BANGLADESH                     0%                   NA                -0.0527470   -0.3526084   0.2471144
Birth       NIH-Crypto      BANGLADESH                     0%                   NA                 0.1195354   -0.0634647   0.3025355
Birth       PROVIDE         BANGLADESH                     0%                   NA                -0.0214158   -0.2218044   0.1789728
6 months    CONTENT         PERU                           0%                   NA                -0.3707388   -0.8446452   0.1031677
6 months    Guatemala BSC   GUATEMALA                      0%                   NA                -0.0955450   -0.4854195   0.2943296
6 months    JiVitA-4        BANGLADESH                     0%                   NA                -0.1667914   -0.3489946   0.0154119
6 months    MAL-ED          BANGLADESH                     0%                   NA                -0.3210097   -1.0903899   0.4483705
6 months    MAL-ED          NEPAL                          0%                   NA                -0.1721494   -0.8630644   0.5187656
6 months    MAL-ED          PERU                           0%                   NA                 0.1800244   -0.5130743   0.8731232
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.2934435   -0.6391424   1.2260295
6 months    NIH-Birth       BANGLADESH                     0%                   NA                -0.2911481   -0.6753315   0.0930353
6 months    NIH-Crypto      BANGLADESH                     0%                   NA                -0.0615056   -0.2656367   0.1426256
6 months    PROVIDE         BANGLADESH                     0%                   NA                -0.0752253   -0.4548503   0.3043997
6 months    SAS-FoodSuppl   INDIA                          0%                   NA                 0.0794066   -0.1694925   0.3283057
24 months   JiVitA-4        BANGLADESH                     0%                   NA                 0.0240433   -0.1469916   0.1950781
24 months   MAL-ED          BANGLADESH                     0%                   NA                -0.0584591   -1.0226814   0.9057631
24 months   MAL-ED          NEPAL                          0%                   NA                -0.2448887   -0.8524625   0.3626851
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1885358   -0.8399063   0.4628347
24 months   NIH-Birth       BANGLADESH                     0%                   NA                 0.2684210   -0.0167391   0.5535810
24 months   NIH-Crypto      BANGLADESH                     0%                   NA                -0.0802046   -0.2839824   0.1235733
24 months   PROVIDE         BANGLADESH                     0%                   NA                 0.1199108   -0.1611490   0.4009705

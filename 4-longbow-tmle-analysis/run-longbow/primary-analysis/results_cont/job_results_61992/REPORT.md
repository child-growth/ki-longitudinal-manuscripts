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

agecat      studyid         country                        perdiar24    n_cell      n  outcome_variable 
----------  --------------  -----------------------------  ----------  -------  -----  -----------------
Birth       CMIN            BANGLADESH                     0%                6     19  whz              
Birth       CMIN            BANGLADESH                     (0%, 5%]          3     19  whz              
Birth       CMIN            BANGLADESH                     >5%              10     19  whz              
Birth       CONTENT         PERU                           0%                0      2  whz              
Birth       CONTENT         PERU                           (0%, 5%]          1      2  whz              
Birth       CONTENT         PERU                           >5%               1      2  whz              
Birth       EE              PAKISTAN                       0%              115    177  whz              
Birth       EE              PAKISTAN                       (0%, 5%]         62    177  whz              
Birth       EE              PAKISTAN                       >5%               0    177  whz              
Birth       JiVitA-4        BANGLADESH                     0%               61   2396  whz              
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]       2091   2396  whz              
Birth       JiVitA-4        BANGLADESH                     >5%             244   2396  whz              
Birth       MAL-ED          BANGLADESH                     0%               14    215  whz              
Birth       MAL-ED          BANGLADESH                     (0%, 5%]        127    215  whz              
Birth       MAL-ED          BANGLADESH                     >5%              74    215  whz              
Birth       MAL-ED          BRAZIL                         0%               34     62  whz              
Birth       MAL-ED          BRAZIL                         (0%, 5%]         26     62  whz              
Birth       MAL-ED          BRAZIL                         >5%               2     62  whz              
Birth       MAL-ED          INDIA                          0%                5     45  whz              
Birth       MAL-ED          INDIA                          (0%, 5%]         31     45  whz              
Birth       MAL-ED          INDIA                          >5%               9     45  whz              
Birth       MAL-ED          NEPAL                          0%                2     26  whz              
Birth       MAL-ED          NEPAL                          (0%, 5%]         19     26  whz              
Birth       MAL-ED          NEPAL                          >5%               5     26  whz              
Birth       MAL-ED          PERU                           0%               21    228  whz              
Birth       MAL-ED          PERU                           (0%, 5%]         87    228  whz              
Birth       MAL-ED          PERU                           >5%             120    228  whz              
Birth       MAL-ED          SOUTH AFRICA                   0%               42    112  whz              
Birth       MAL-ED          SOUTH AFRICA                   (0%, 5%]         69    112  whz              
Birth       MAL-ED          SOUTH AFRICA                   >5%               1    112  whz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                7    115  whz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         77    115  whz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              31    115  whz              
Birth       NIH-Birth       BANGLADESH                     0%               46    572  whz              
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]        327    572  whz              
Birth       NIH-Birth       BANGLADESH                     >5%             199    572  whz              
Birth       NIH-Crypto      BANGLADESH                     0%              144    707  whz              
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]        375    707  whz              
Birth       NIH-Crypto      BANGLADESH                     >5%             188    707  whz              
Birth       PROVIDE         BANGLADESH                     0%               55    532  whz              
Birth       PROVIDE         BANGLADESH                     (0%, 5%]        322    532  whz              
Birth       PROVIDE         BANGLADESH                     >5%             155    532  whz              
6 months    CMIN            BANGLADESH                     0%                2    243  whz              
6 months    CMIN            BANGLADESH                     (0%, 5%]        111    243  whz              
6 months    CMIN            BANGLADESH                     >5%             130    243  whz              
6 months    CONTENT         PERU                           0%                6    215  whz              
6 months    CONTENT         PERU                           (0%, 5%]        142    215  whz              
6 months    CONTENT         PERU                           >5%              67    215  whz              
6 months    EE              PAKISTAN                       0%              258    375  whz              
6 months    EE              PAKISTAN                       (0%, 5%]        117    375  whz              
6 months    EE              PAKISTAN                       >5%               0    375  whz              
6 months    Guatemala BSC   GUATEMALA                      0%               29    299  whz              
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]         70    299  whz              
6 months    Guatemala BSC   GUATEMALA                      >5%             200    299  whz              
6 months    JiVitA-4        BANGLADESH                     0%              156   4833  whz              
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]       4153   4833  whz              
6 months    JiVitA-4        BANGLADESH                     >5%             524   4833  whz              
6 months    MAL-ED          BANGLADESH                     0%                6    241  whz              
6 months    MAL-ED          BANGLADESH                     (0%, 5%]        142    241  whz              
6 months    MAL-ED          BANGLADESH                     >5%              93    241  whz              
6 months    MAL-ED          BRAZIL                         0%              106    209  whz              
6 months    MAL-ED          BRAZIL                         (0%, 5%]        101    209  whz              
6 months    MAL-ED          BRAZIL                         >5%               2    209  whz              
6 months    MAL-ED          INDIA                          0%                3    236  whz              
6 months    MAL-ED          INDIA                          (0%, 5%]        191    236  whz              
6 months    MAL-ED          INDIA                          >5%              42    236  whz              
6 months    MAL-ED          NEPAL                          0%               14    236  whz              
6 months    MAL-ED          NEPAL                          (0%, 5%]        143    236  whz              
6 months    MAL-ED          NEPAL                          >5%              79    236  whz              
6 months    MAL-ED          PERU                           0%                7    273  whz              
6 months    MAL-ED          PERU                           (0%, 5%]        109    273  whz              
6 months    MAL-ED          PERU                           >5%             157    273  whz              
6 months    MAL-ED          SOUTH AFRICA                   0%               78    254  whz              
6 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]        174    254  whz              
6 months    MAL-ED          SOUTH AFRICA                   >5%               2    254  whz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9    247  whz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        177    247  whz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              61    247  whz              
6 months    NIH-Birth       BANGLADESH                     0%               15    537  whz              
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]        339    537  whz              
6 months    NIH-Birth       BANGLADESH                     >5%             183    537  whz              
6 months    NIH-Crypto      BANGLADESH                     0%              134    715  whz              
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]        386    715  whz              
6 months    NIH-Crypto      BANGLADESH                     >5%             195    715  whz              
6 months    PROVIDE         BANGLADESH                     0%               12    603  whz              
6 months    PROVIDE         BANGLADESH                     (0%, 5%]        408    603  whz              
6 months    PROVIDE         BANGLADESH                     >5%             183    603  whz              
6 months    SAS-FoodSuppl   INDIA                          0%               74    380  whz              
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]         46    380  whz              
6 months    SAS-FoodSuppl   INDIA                          >5%             260    380  whz              
24 months   CMIN            BANGLADESH                     0%                3    243  whz              
24 months   CMIN            BANGLADESH                     (0%, 5%]        114    243  whz              
24 months   CMIN            BANGLADESH                     >5%             126    243  whz              
24 months   CONTENT         PERU                           0%                4    164  whz              
24 months   CONTENT         PERU                           (0%, 5%]        108    164  whz              
24 months   CONTENT         PERU                           >5%              52    164  whz              
24 months   EE              PAKISTAN                       0%              116    168  whz              
24 months   EE              PAKISTAN                       (0%, 5%]         52    168  whz              
24 months   EE              PAKISTAN                       >5%               0    168  whz              
24 months   JiVitA-4        BANGLADESH                     0%              164   4735  whz              
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]       4082   4735  whz              
24 months   JiVitA-4        BANGLADESH                     >5%             489   4735  whz              
24 months   MAL-ED          BANGLADESH                     0%                6    212  whz              
24 months   MAL-ED          BANGLADESH                     (0%, 5%]        130    212  whz              
24 months   MAL-ED          BANGLADESH                     >5%              76    212  whz              
24 months   MAL-ED          BRAZIL                         0%               76    169  whz              
24 months   MAL-ED          BRAZIL                         (0%, 5%]         91    169  whz              
24 months   MAL-ED          BRAZIL                         >5%               2    169  whz              
24 months   MAL-ED          INDIA                          0%                3    227  whz              
24 months   MAL-ED          INDIA                          (0%, 5%]        183    227  whz              
24 months   MAL-ED          INDIA                          >5%              41    227  whz              
24 months   MAL-ED          NEPAL                          0%               12    228  whz              
24 months   MAL-ED          NEPAL                          (0%, 5%]        140    228  whz              
24 months   MAL-ED          NEPAL                          >5%              76    228  whz              
24 months   MAL-ED          PERU                           0%                1    201  whz              
24 months   MAL-ED          PERU                           (0%, 5%]         84    201  whz              
24 months   MAL-ED          PERU                           >5%             116    201  whz              
24 months   MAL-ED          SOUTH AFRICA                   0%               71    238  whz              
24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]        166    238  whz              
24 months   MAL-ED          SOUTH AFRICA                   >5%               1    238  whz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    214  whz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        156    214  whz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              52    214  whz              
24 months   NIH-Birth       BANGLADESH                     0%                5    428  whz              
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]        278    428  whz              
24 months   NIH-Birth       BANGLADESH                     >5%             145    428  whz              
24 months   NIH-Crypto      BANGLADESH                     0%              123    514  whz              
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]        276    514  whz              
24 months   NIH-Crypto      BANGLADESH                     >5%             115    514  whz              
24 months   PROVIDE         BANGLADESH                     0%                9    579  whz              
24 months   PROVIDE         BANGLADESH                     (0%, 5%]        396    579  whz              
24 months   PROVIDE         BANGLADESH                     >5%             174    579  whz              


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
![](/tmp/b9910a0c-7c79-4070-9aa0-542cf60cda82/b6c3881a-8a57-46b1-af3a-348c305919ce/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b9910a0c-7c79-4070-9aa0-542cf60cda82/b6c3881a-8a57-46b1-af3a-348c305919ce/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b9910a0c-7c79-4070-9aa0-542cf60cda82/b6c3881a-8a57-46b1-af3a-348c305919ce/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-4        BANGLADESH                     0%                   NA                -0.8064749   -1.2123112   -0.4006385
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]             NA                -0.6789099   -0.7346217   -0.6231980
Birth       JiVitA-4        BANGLADESH                     >5%                  NA                -0.7372359   -0.8872072   -0.5872646
Birth       MAL-ED          BANGLADESH                     0%                   NA                -0.7437696   -1.4215486   -0.0659907
Birth       MAL-ED          BANGLADESH                     (0%, 5%]             NA                -1.0133673   -1.1962882   -0.8304463
Birth       MAL-ED          BANGLADESH                     >5%                  NA                -0.9064378   -1.1690382   -0.6438374
Birth       MAL-ED          INDIA                          0%                   NA                -0.8260000   -1.7120476    0.0600476
Birth       MAL-ED          INDIA                          (0%, 5%]             NA                -1.0574194   -1.3366625   -0.7781762
Birth       MAL-ED          INDIA                          >5%                  NA                -0.5611111   -1.3534381    0.2312159
Birth       MAL-ED          PERU                           0%                   NA                 0.1045894   -0.2774880    0.4866669
Birth       MAL-ED          PERU                           (0%, 5%]             NA                 0.0053194   -0.1934964    0.2041353
Birth       MAL-ED          PERU                           >5%                  NA                -0.1235964   -0.2986086    0.0514159
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.8928571    0.4313181    1.3543962
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.8712987    0.6273536    1.1152438
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.4625806    0.1300967    0.7950646
Birth       NIH-Birth       BANGLADESH                     0%                   NA                -1.3305876   -1.6210687   -1.0401065
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -1.3442512   -1.4706745   -1.2178279
Birth       NIH-Birth       BANGLADESH                     >5%                  NA                -1.3662650   -1.5326315   -1.1998986
Birth       NIH-Crypto      BANGLADESH                     0%                   NA                -1.3512419   -1.5775637   -1.1249200
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -1.2211464   -1.3412917   -1.1010012
Birth       NIH-Crypto      BANGLADESH                     >5%                  NA                -1.2286545   -1.3825683   -1.0747408
Birth       PROVIDE         BANGLADESH                     0%                   NA                -1.2604999   -1.4828620   -1.0381377
Birth       PROVIDE         BANGLADESH                     (0%, 5%]             NA                -1.2593179   -1.3542945   -1.1643414
Birth       PROVIDE         BANGLADESH                     >5%                  NA                -1.3468684   -1.5034940   -1.1902428
6 months    CONTENT         PERU                           0%                   NA                 1.4351667    0.9626985    1.9076349
6 months    CONTENT         PERU                           (0%, 5%]             NA                 1.0176514    0.8796884    1.1556144
6 months    CONTENT         PERU                           >5%                  NA                 1.1303657    0.8984202    1.3623112
6 months    Guatemala BSC   GUATEMALA                      0%                   NA                 0.0936689   -0.3198745    0.5072123
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]             NA                -0.0847957   -0.3208686    0.1512772
6 months    Guatemala BSC   GUATEMALA                      >5%                  NA                -0.1066520   -0.2378985    0.0245945
6 months    JiVitA-4        BANGLADESH                     0%                   NA                -0.2397416   -0.4243047   -0.0551785
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]             NA                -0.3848494   -0.4237666   -0.3459323
6 months    JiVitA-4        BANGLADESH                     >5%                  NA                -0.4907081   -0.5898527   -0.3915634
6 months    MAL-ED          BANGLADESH                     0%                   NA                 0.1833333   -0.5948965    0.9615632
6 months    MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.1581455   -0.3337303    0.0174392
6 months    MAL-ED          BANGLADESH                     >5%                  NA                -0.1271326   -0.3185947    0.0643295
6 months    MAL-ED          NEPAL                          0%                   NA                 0.0552790   -0.5972282    0.7077861
6 months    MAL-ED          NEPAL                          (0%, 5%]             NA                 0.0778427   -0.0963077    0.2519932
6 months    MAL-ED          NEPAL                          >5%                  NA                 0.1415191   -0.0719267    0.3549649
6 months    MAL-ED          PERU                           0%                   NA                 0.8728571    0.1723061    1.5734082
6 months    MAL-ED          PERU                           (0%, 5%]             NA                 1.0295260    0.8447495    1.2143025
6 months    MAL-ED          PERU                           >5%                  NA                 1.0771231    0.9121893    1.2420570
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.2427778   -0.7161220    1.2016775
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.5318644    0.3720281    0.6917007
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.5921585    0.3766024    0.8077146
6 months    NIH-Birth       BANGLADESH                     0%                   NA                -0.2966400   -0.6375441    0.0442642
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -0.4488847   -0.5664777   -0.3312916
6 months    NIH-Birth       BANGLADESH                     >5%                  NA                -0.4794778   -0.6355266   -0.3234290
6 months    NIH-Crypto      BANGLADESH                     0%                   NA                 0.1599836   -0.0732228    0.3931900
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.0266269   -0.1409639    0.0877101
6 months    NIH-Crypto      BANGLADESH                     >5%                  NA                 0.3215490    0.1728072    0.4702908
6 months    PROVIDE         BANGLADESH                     0%                   NA                -0.0830904   -0.4771648    0.3109840
6 months    PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.2357832   -0.3383637   -0.1332026
6 months    PROVIDE         BANGLADESH                     >5%                  NA                -0.1234510   -0.2695224    0.0226204
6 months    SAS-FoodSuppl   INDIA                          0%                   NA                -1.0946546   -1.3570916   -0.8322176
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                -0.8341234   -1.1753064   -0.4929403
6 months    SAS-FoodSuppl   INDIA                          >5%                  NA                -1.0155176   -1.1561450   -0.8748903
24 months   JiVitA-4        BANGLADESH                     0%                   NA                -1.2944363   -1.4679420   -1.1209306
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]             NA                -1.2182980   -1.2511684   -1.1854276
24 months   JiVitA-4        BANGLADESH                     >5%                  NA                -1.2477701   -1.3370525   -1.1584878
24 months   MAL-ED          BANGLADESH                     0%                   NA                -0.7608333   -1.7455859    0.2239193
24 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.8440769   -0.9945327   -0.6936211
24 months   MAL-ED          BANGLADESH                     >5%                  NA                -0.7815132   -0.9897171   -0.5733093
24 months   MAL-ED          NEPAL                          0%                   NA                -0.0107432   -0.6269770    0.6054906
24 months   MAL-ED          NEPAL                          (0%, 5%]             NA                -0.3784191   -0.5172129   -0.2396253
24 months   MAL-ED          NEPAL                          >5%                  NA                -0.3843468   -0.5924805   -0.1762132
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.2433333   -0.4146176    0.9012843
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0989530   -0.0508664    0.2487724
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0994231   -0.3337823    0.1349362
24 months   NIH-Birth       BANGLADESH                     0%                   NA                -1.1800000   -1.4547770   -0.9052230
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -0.9456415   -1.0692081   -0.8220748
24 months   NIH-Birth       BANGLADESH                     >5%                  NA                -0.8370172   -1.0005302   -0.6735043
24 months   NIH-Crypto      BANGLADESH                     0%                   NA                -0.6073006   -0.8573238   -0.3572775
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.6103478   -0.7643595   -0.4563361
24 months   NIH-Crypto      BANGLADESH                     >5%                  NA                -0.7099077   -0.8608731   -0.5589423
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
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]             0%                 0.1275650   -0.2796481    0.5347781
Birth       JiVitA-4        BANGLADESH                     >5%                  0%                 0.0692390   -0.3631647    0.5016428
Birth       MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.2695976   -0.9721566    0.4329614
Birth       MAL-ED          BANGLADESH                     >5%                  0%                -0.1626681   -0.8900641    0.5647278
Birth       MAL-ED          INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          INDIA                          (0%, 5%]             0%                -0.2314194   -1.1604280    0.6975893
Birth       MAL-ED          INDIA                          >5%                  0%                 0.2648889   -0.9237500    1.4535278
Birth       MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          PERU                           (0%, 5%]             0%                -0.0992700   -0.5315054    0.3329654
Birth       MAL-ED          PERU                           >5%                  0%                -0.2281858   -0.6527124    0.1963408
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0215584   -0.5436001    0.5004833
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.4302765   -0.9991033    0.1385503
Birth       NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.0136636   -0.3282560    0.3009288
Birth       NIH-Birth       BANGLADESH                     >5%                  0%                -0.0356774   -0.3690953    0.2977405
Birth       NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.1300954   -0.1239072    0.3840980
Birth       NIH-Crypto      BANGLADESH                     >5%                  0%                 0.1225873   -0.1490700    0.3942447
Birth       PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0011819   -0.2373772    0.2397410
Birth       PROVIDE         BANGLADESH                     >5%                  0%                -0.0863685   -0.3548659    0.1821288
6 months    CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    CONTENT         PERU                           (0%, 5%]             0%                -0.4175153   -0.9097144    0.0746839
6 months    CONTENT         PERU                           >5%                  0%                -0.3048010   -0.8311326    0.2215306
6 months    Guatemala BSC   GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]             0%                -0.1784646   -0.6548348    0.2979056
6 months    Guatemala BSC   GUATEMALA                      >5%                  0%                -0.2003209   -0.6342268    0.2335850
6 months    JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]             0%                -0.1451078   -0.3308163    0.0406006
6 months    JiVitA-4        BANGLADESH                     >5%                  0%                -0.2509665   -0.4543808   -0.0475521
6 months    MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.3414789   -1.1392706    0.4563129
6 months    MAL-ED          BANGLADESH                     >5%                  0%                -0.3104659   -1.1119018    0.4909699
6 months    MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          NEPAL                          (0%, 5%]             0%                 0.0225638   -0.6522832    0.6974108
6 months    MAL-ED          NEPAL                          >5%                  0%                 0.0862401   -0.6006848    0.7731651
6 months    MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          PERU                           (0%, 5%]             0%                 0.1566689   -0.5678407    0.8811784
6 months    MAL-ED          PERU                           >5%                  0%                 0.2042660   -0.5154387    0.9239707
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.2890866   -0.6830432    1.2612164
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.3493807   -0.6334485    1.3322099
6 months    NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.1522447   -0.5133858    0.2088964
6 months    NIH-Birth       BANGLADESH                     >5%                  0%                -0.1828379   -0.5586617    0.1929860
6 months    NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.1866105   -0.4461038    0.0728828
6 months    NIH-Crypto      BANGLADESH                     >5%                  0%                 0.1615654   -0.1159114    0.4390422
6 months    PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.1526928   -0.5602498    0.2548642
6 months    PROVIDE         BANGLADESH                     >5%                  0%                -0.0403607   -0.4607010    0.3799796
6 months    SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                 0.2605312   -0.1701080    0.6911705
6 months    SAS-FoodSuppl   INDIA                          >5%                  0%                 0.0791370   -0.2186979    0.3769718
24 months   JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]             0%                 0.0761383   -0.0979566    0.2502332
24 months   JiVitA-4        BANGLADESH                     >5%                  0%                 0.0466662   -0.1456094    0.2389417
24 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0832436   -1.0794236    0.9129364
24 months   MAL-ED          BANGLADESH                     >5%                  0%                -0.0206798   -1.0272018    0.9858422
24 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED          NEPAL                          (0%, 5%]             0%                -0.3676759   -0.9995119    0.2641600
24 months   MAL-ED          NEPAL                          >5%                  0%                -0.3736036   -1.0245666    0.2773593
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.1443803   -0.8191731    0.5304124
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.3427564   -1.0412002    0.3556873
24 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.2343585   -0.0669240    0.5356410
24 months   NIH-Birth       BANGLADESH                     >5%                  0%                 0.3429828    0.0232346    0.6627310
24 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0030472   -0.2949655    0.2888711
24 months   NIH-Crypto      BANGLADESH                     >5%                  0%                -0.1026071   -0.3941741    0.1889600
24 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0894697   -0.2035090    0.3824484
24 months   PROVIDE         BANGLADESH                     >5%                  0%                 0.1953927   -0.1204190    0.5112044


### Parameter: PAR


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-4        BANGLADESH                     0%                   NA                 0.1178480   -0.2784685   0.5141645
Birth       MAL-ED          BANGLADESH                     0%                   NA                -0.1980908   -0.8550326   0.4588510
Birth       MAL-ED          INDIA                          0%                   NA                -0.1064444   -0.9346255   0.7217366
Birth       MAL-ED          PERU                           0%                   NA                -0.1566070   -0.5261897   0.2129758
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1304224   -0.6033978   0.3425531
Birth       NIH-Birth       BANGLADESH                     0%                   NA                -0.0219561   -0.3041968   0.2602847
Birth       NIH-Crypto      BANGLADESH                     0%                   NA                 0.1070905   -0.0973630   0.3115441
Birth       PROVIDE         BANGLADESH                     0%                   NA                -0.0379588   -0.2511936   0.1752761
6 months    CONTENT         PERU                           0%                   NA                -0.3707388   -0.8446452   0.1031677
6 months    Guatemala BSC   GUATEMALA                      0%                   NA                -0.1776823   -0.5666452   0.2112806
6 months    JiVitA-4        BANGLADESH                     0%                   NA                -0.1500639   -0.3298359   0.0297082
6 months    MAL-ED          BANGLADESH                     0%                   NA                -0.3210097   -1.0903899   0.4483705
6 months    MAL-ED          NEPAL                          0%                   NA                 0.0551518   -0.5723908   0.6826945
6 months    MAL-ED          PERU                           0%                   NA                 0.1800244   -0.5130743   0.8731232
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.2934435   -0.6391424   1.2260295
6 months    NIH-Birth       BANGLADESH                     0%                   NA                -0.1507638   -0.4948985   0.1933709
6 months    NIH-Crypto      BANGLADESH                     0%                   NA                -0.1302213   -0.3487626   0.0883199
6 months    PROVIDE         BANGLADESH                     0%                   NA                -0.1160003   -0.5099278   0.2779272
6 months    SAS-FoodSuppl   INDIA                          0%                   NA                 0.0824967   -0.1540520   0.3190454
24 months   JiVitA-4        BANGLADESH                     0%                   NA                 0.0713275   -0.0962825   0.2389376
24 months   MAL-ED          BANGLADESH                     0%                   NA                -0.0584591   -1.0226814   0.9057631
24 months   MAL-ED          NEPAL                          0%                   NA                -0.3641691   -0.9600193   0.2316811
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1885358   -0.8399063   0.4628347
24 months   NIH-Birth       BANGLADESH                     0%                   NA                 0.2684210   -0.0167391   0.5535810
24 months   NIH-Crypto      BANGLADESH                     0%                   NA                -0.0030496   -0.2250711   0.2189720
24 months   PROVIDE         BANGLADESH                     0%                   NA                 0.1199108   -0.1611490   0.4009705

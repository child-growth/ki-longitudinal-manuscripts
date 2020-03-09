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
![](/tmp/215fe203-df59-465f-b234-584e6220d376/958f5596-9f20-46bd-99c0-c6e2446f9521/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/215fe203-df59-465f-b234-584e6220d376/958f5596-9f20-46bd-99c0-c6e2446f9521/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/215fe203-df59-465f-b234-584e6220d376/958f5596-9f20-46bd-99c0-c6e2446f9521/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-4        BANGLADESH                     0%                   NA                -0.8151476   -1.2388565   -0.3914387
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]             NA                -0.6792299   -0.7350084   -0.6234514
Birth       JiVitA-4        BANGLADESH                     >5%                  NA                -0.7386402   -0.8902254   -0.5870549
Birth       MAL-ED          BANGLADESH                     0%                   NA                -0.3059898   -0.9958308    0.3838512
Birth       MAL-ED          BANGLADESH                     (0%, 5%]             NA                -1.0062214   -1.1879073   -0.8245354
Birth       MAL-ED          BANGLADESH                     >5%                  NA                -0.8838646   -1.1466992   -0.6210299
Birth       MAL-ED          INDIA                          0%                   NA                -0.8260000   -1.7120476    0.0600476
Birth       MAL-ED          INDIA                          (0%, 5%]             NA                -1.0574194   -1.3366625   -0.7781762
Birth       MAL-ED          INDIA                          >5%                  NA                -0.5611111   -1.3534381    0.2312159
Birth       MAL-ED          PERU                           0%                   NA                 0.1004543   -0.2744781    0.4753867
Birth       MAL-ED          PERU                           (0%, 5%]             NA                -0.0129517   -0.2018962    0.1759928
Birth       MAL-ED          PERU                           >5%                  NA                -0.1150074   -0.2876876    0.0576728
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.8928571    0.4313181    1.3543962
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.8712987    0.6273536    1.1152438
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.4625806    0.1300967    0.7950646
Birth       NIH-Birth       BANGLADESH                     0%                   NA                -1.3373819   -1.6214059   -1.0533578
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -1.3454556   -1.4706986   -1.2202126
Birth       NIH-Birth       BANGLADESH                     >5%                  NA                -1.3640024   -1.5304405   -1.1975644
Birth       NIH-Crypto      BANGLADESH                     0%                   NA                -1.3368287   -1.5350415   -1.1386160
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -1.2154009   -1.3343979   -1.0964038
Birth       NIH-Crypto      BANGLADESH                     >5%                  NA                -1.1982345   -1.3516602   -1.0448088
Birth       PROVIDE         BANGLADESH                     0%                   NA                -1.2848846   -1.5087994   -1.0609698
Birth       PROVIDE         BANGLADESH                     (0%, 5%]             NA                -1.2650067   -1.3593237   -1.1706898
Birth       PROVIDE         BANGLADESH                     >5%                  NA                -1.3578148   -1.5095935   -1.2060361
6 months    CONTENT         PERU                           0%                   NA                 1.4351667    0.9626985    1.9076349
6 months    CONTENT         PERU                           (0%, 5%]             NA                 1.0176514    0.8796884    1.1556144
6 months    CONTENT         PERU                           >5%                  NA                 1.1303657    0.8984202    1.3623112
6 months    Guatemala BSC   GUATEMALA                      0%                   NA                 0.1250980   -0.2814467    0.5316427
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]             NA                -0.0376945   -0.2769131    0.2015242
6 months    Guatemala BSC   GUATEMALA                      >5%                  NA                -0.0969851   -0.2289989    0.0350287
6 months    JiVitA-4        BANGLADESH                     0%                   NA                -0.2057271   -0.3876406   -0.0238136
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]             NA                -0.3848688   -0.4238893   -0.3458482
6 months    JiVitA-4        BANGLADESH                     >5%                  NA                -0.4875200   -0.5885858   -0.3864541
6 months    MAL-ED          BANGLADESH                     0%                   NA                 0.1833333   -0.5948965    0.9615632
6 months    MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.1581455   -0.3337303    0.0174392
6 months    MAL-ED          BANGLADESH                     >5%                  NA                -0.1271326   -0.3185947    0.0643295
6 months    MAL-ED          NEPAL                          0%                   NA                -0.1250527   -0.8331967    0.5830912
6 months    MAL-ED          NEPAL                          (0%, 5%]             NA                 0.0743947   -0.0991018    0.2478911
6 months    MAL-ED          NEPAL                          >5%                  NA                 0.1379375   -0.0709374    0.3468125
6 months    MAL-ED          PERU                           0%                   NA                 0.8728571    0.1723061    1.5734082
6 months    MAL-ED          PERU                           (0%, 5%]             NA                 1.0295260    0.8447495    1.2143025
6 months    MAL-ED          PERU                           >5%                  NA                 1.0771231    0.9121893    1.2420570
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.2427778   -0.7161220    1.2016775
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.5318644    0.3720281    0.6917007
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.5921585    0.3766024    0.8077146
6 months    NIH-Birth       BANGLADESH                     0%                   NA                -0.2661788   -0.6409201    0.1085626
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -0.4329586   -0.5497986   -0.3161185
6 months    NIH-Birth       BANGLADESH                     >5%                  NA                -0.4930587   -0.6491589   -0.3369586
6 months    NIH-Crypto      BANGLADESH                     0%                   NA                 0.2098512   -0.0127792    0.4324816
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.0291847   -0.1499865    0.0916172
6 months    NIH-Crypto      BANGLADESH                     >5%                  NA                 0.2305985    0.0870050    0.3741919
6 months    PROVIDE         BANGLADESH                     0%                   NA                -0.1572449   -0.5457956    0.2313058
6 months    PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.2354892   -0.3383614   -0.1326169
6 months    PROVIDE         BANGLADESH                     >5%                  NA                -0.1177961   -0.2637892    0.0281970
6 months    SAS-FoodSuppl   INDIA                          0%                   NA                -1.0982377   -1.3738913   -0.8225842
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                -0.7973218   -1.1537765   -0.4408671
6 months    SAS-FoodSuppl   INDIA                          >5%                  NA                -1.0209783   -1.1620831   -0.8798736
24 months   JiVitA-4        BANGLADESH                     0%                   NA                -1.2515992   -1.4268298   -1.0763686
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]             NA                -1.2187596   -1.2515693   -1.1859499
24 months   JiVitA-4        BANGLADESH                     >5%                  NA                -1.2352148   -1.3225582   -1.1478713
24 months   MAL-ED          BANGLADESH                     0%                   NA                -0.7608333   -1.7455859    0.2239193
24 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.8440769   -0.9945327   -0.6936211
24 months   MAL-ED          BANGLADESH                     >5%                  NA                -0.7815132   -0.9897171   -0.5733093
24 months   MAL-ED          NEPAL                          0%                   NA                -0.1000793   -0.7001611    0.5000024
24 months   MAL-ED          NEPAL                          (0%, 5%]             NA                -0.3814976   -0.5204656   -0.2425296
24 months   MAL-ED          NEPAL                          >5%                  NA                -0.3909793   -0.5995347   -0.1824239
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.2433333   -0.4146176    0.9012843
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0989530   -0.0508664    0.2487724
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0994231   -0.3337823    0.1349362
24 months   NIH-Birth       BANGLADESH                     0%                   NA                -1.1800000   -1.4547770   -0.9052230
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -0.9456415   -1.0692081   -0.8220748
24 months   NIH-Birth       BANGLADESH                     >5%                  NA                -0.8370172   -1.0005302   -0.6735043
24 months   NIH-Crypto      BANGLADESH                     0%                   NA                -0.4879944   -0.7273200   -0.2486687
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.6294121   -0.7829782   -0.4758460
24 months   NIH-Crypto      BANGLADESH                     >5%                  NA                -0.6150986   -0.7635964   -0.4666008
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
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]             0%                 0.1359177   -0.2892355    0.5610708
Birth       JiVitA-4        BANGLADESH                     >5%                  0%                 0.0765074   -0.3733662    0.5263810
Birth       MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.7002316   -1.4145810    0.0141179
Birth       MAL-ED          BANGLADESH                     >5%                  0%                -0.5778748   -1.3164640    0.1607145
Birth       MAL-ED          INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          INDIA                          (0%, 5%]             0%                -0.2314194   -1.1604280    0.6975893
Birth       MAL-ED          INDIA                          >5%                  0%                 0.2648889   -0.9237500    1.4535278
Birth       MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          PERU                           (0%, 5%]             0%                -0.1134060   -0.5331939    0.3063820
Birth       MAL-ED          PERU                           >5%                  0%                -0.2154617   -0.6300094    0.1990860
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0215584   -0.5436001    0.5004833
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.4302765   -0.9991033    0.1385503
Birth       NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.0080737   -0.3175145    0.3013671
Birth       NIH-Birth       BANGLADESH                     >5%                  0%                -0.0266206   -0.3553431    0.3021019
Birth       NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.1214279   -0.1070649    0.3499206
Birth       NIH-Crypto      BANGLADESH                     >5%                  0%                 0.1385943   -0.1094512    0.3866398
Birth       PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0198779   -0.2186969    0.2584527
Birth       PROVIDE         BANGLADESH                     >5%                  0%                -0.0729302   -0.3391750    0.1933146
6 months    CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    CONTENT         PERU                           (0%, 5%]             0%                -0.4175153   -0.9097144    0.0746839
6 months    CONTENT         PERU                           >5%                  0%                -0.3048010   -0.8311326    0.2215306
6 months    Guatemala BSC   GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]             0%                -0.1627925   -0.6342242    0.3086392
6 months    Guatemala BSC   GUATEMALA                      >5%                  0%                -0.2220831   -0.6496702    0.2055040
6 months    JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]             0%                -0.1791417   -0.3623896    0.0041063
6 months    JiVitA-4        BANGLADESH                     >5%                  0%                -0.2817928   -0.4847090   -0.0788767
6 months    MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.3414789   -1.1392706    0.4563129
6 months    MAL-ED          BANGLADESH                     >5%                  0%                -0.3104659   -1.1119018    0.4909699
6 months    MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          NEPAL                          (0%, 5%]             0%                 0.1994474   -0.5298136    0.9287084
6 months    MAL-ED          NEPAL                          >5%                  0%                 0.2629903   -0.4790122    1.0049927
6 months    MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          PERU                           (0%, 5%]             0%                 0.1566689   -0.5678407    0.8811784
6 months    MAL-ED          PERU                           >5%                  0%                 0.2042660   -0.5154387    0.9239707
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.2890866   -0.6830432    1.2612164
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.3493807   -0.6334485    1.3322099
6 months    NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.1667798   -0.5599923    0.2264327
6 months    NIH-Birth       BANGLADESH                     >5%                  0%                -0.2268800   -0.6335802    0.1798203
6 months    NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.2390359   -0.4915613    0.0134896
6 months    NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0207473   -0.2438468    0.2853414
6 months    PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.0782443   -0.4807733    0.3242848
6 months    PROVIDE         BANGLADESH                     >5%                  0%                 0.0394487   -0.3762212    0.4551187
6 months    SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                 0.3009160   -0.1539369    0.7557689
6 months    SAS-FoodSuppl   INDIA                          >5%                  0%                 0.0772594   -0.2354179    0.3899367
24 months   JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]             0%                 0.0328396   -0.1425422    0.2082214
24 months   JiVitA-4        BANGLADESH                     >5%                  0%                 0.0163844   -0.1757446    0.2085134
24 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0832436   -1.0794236    0.9129364
24 months   MAL-ED          BANGLADESH                     >5%                  0%                -0.0206798   -1.0272018    0.9858422
24 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED          NEPAL                          (0%, 5%]             0%                -0.2814183   -0.8975211    0.3346846
24 months   MAL-ED          NEPAL                          >5%                  0%                -0.2909000   -0.9269213    0.3451214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.1443803   -0.8191731    0.5304124
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.3427564   -1.0412002    0.3556873
24 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.2343585   -0.0669240    0.5356410
24 months   NIH-Birth       BANGLADESH                     >5%                  0%                 0.3429828    0.0232346    0.6627310
24 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.1414177   -0.4238303    0.1409949
24 months   NIH-Crypto      BANGLADESH                     >5%                  0%                -0.1271042   -0.4072990    0.1530905
24 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0894697   -0.2035090    0.3824484
24 months   PROVIDE         BANGLADESH                     >5%                  0%                 0.1953927   -0.1204190    0.5112044


### Parameter: PAR


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-4        BANGLADESH                     0%                   NA                 0.1265207   -0.2876038    0.5406452
Birth       MAL-ED          BANGLADESH                     0%                   NA                -0.6358707   -1.3058324    0.0340911
Birth       MAL-ED          INDIA                          0%                   NA                -0.1064444   -0.9346255    0.7217366
Birth       MAL-ED          PERU                           0%                   NA                -0.1524718   -0.5155113    0.2105676
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1304224   -0.6033978    0.3425531
Birth       NIH-Birth       BANGLADESH                     0%                   NA                -0.0151619   -0.2916032    0.2612795
Birth       NIH-Crypto      BANGLADESH                     0%                   NA                 0.0926774   -0.0844182    0.2697730
Birth       PROVIDE         BANGLADESH                     0%                   NA                -0.0135740   -0.2278010    0.2006529
6 months    CONTENT         PERU                           0%                   NA                -0.3707388   -0.8446452    0.1031677
6 months    Guatemala BSC   GUATEMALA                      0%                   NA                -0.2091114   -0.5914261    0.1732033
6 months    JiVitA-4        BANGLADESH                     0%                   NA                -0.1840784   -0.3611739   -0.0069829
6 months    MAL-ED          BANGLADESH                     0%                   NA                -0.3210097   -1.0903899    0.4483705
6 months    MAL-ED          NEPAL                          0%                   NA                 0.2354835   -0.4483058    0.9192729
6 months    MAL-ED          PERU                           0%                   NA                 0.1800244   -0.5130743    0.8731232
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.2934435   -0.6391424    1.2260295
6 months    NIH-Birth       BANGLADESH                     0%                   NA                -0.1812250   -0.5575931    0.1951430
6 months    NIH-Crypto      BANGLADESH                     0%                   NA                -0.1800889   -0.3884397    0.0282618
6 months    PROVIDE         BANGLADESH                     0%                   NA                -0.0418458   -0.4305480    0.3468564
6 months    SAS-FoodSuppl   INDIA                          0%                   NA                 0.0860798   -0.1634665    0.3356261
24 months   JiVitA-4        BANGLADESH                     0%                   NA                 0.0284904   -0.1405435    0.1975244
24 months   MAL-ED          BANGLADESH                     0%                   NA                -0.0584591   -1.0226814    0.9057631
24 months   MAL-ED          NEPAL                          0%                   NA                -0.2748329   -0.8546671    0.3050012
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1885358   -0.8399063    0.4628347
24 months   NIH-Birth       BANGLADESH                     0%                   NA                 0.2684210   -0.0167391    0.5535810
24 months   NIH-Crypto      BANGLADESH                     0%                   NA                -0.1223558   -0.3331508    0.0884391
24 months   PROVIDE         BANGLADESH                     0%                   NA                 0.1199108   -0.1611490    0.4009705

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
Birth       CMIN            BANGLADESH                     0%               12     26  haz              
Birth       CMIN            BANGLADESH                     (0%, 5%]          4     26  haz              
Birth       CMIN            BANGLADESH                     >5%              10     26  haz              
Birth       CONTENT         PERU                           0%                0      2  haz              
Birth       CONTENT         PERU                           (0%, 5%]          1      2  haz              
Birth       CONTENT         PERU                           >5%               1      2  haz              
Birth       EE              PAKISTAN                       0%              161    240  haz              
Birth       EE              PAKISTAN                       (0%, 5%]         79    240  haz              
Birth       EE              PAKISTAN                       >5%               0    240  haz              
Birth       JiVitA-4        BANGLADESH                     0%               76   2823  haz              
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]       2449   2823  haz              
Birth       JiVitA-4        BANGLADESH                     >5%             298   2823  haz              
Birth       MAL-ED          BANGLADESH                     0%               18    231  haz              
Birth       MAL-ED          BANGLADESH                     (0%, 5%]        131    231  haz              
Birth       MAL-ED          BANGLADESH                     >5%              82    231  haz              
Birth       MAL-ED          BRAZIL                         0%               34     65  haz              
Birth       MAL-ED          BRAZIL                         (0%, 5%]         29     65  haz              
Birth       MAL-ED          BRAZIL                         >5%               2     65  haz              
Birth       MAL-ED          INDIA                          0%                5     47  haz              
Birth       MAL-ED          INDIA                          (0%, 5%]         33     47  haz              
Birth       MAL-ED          INDIA                          >5%               9     47  haz              
Birth       MAL-ED          NEPAL                          0%                2     27  haz              
Birth       MAL-ED          NEPAL                          (0%, 5%]         19     27  haz              
Birth       MAL-ED          NEPAL                          >5%               6     27  haz              
Birth       MAL-ED          PERU                           0%               21    233  haz              
Birth       MAL-ED          PERU                           (0%, 5%]         89    233  haz              
Birth       MAL-ED          PERU                           >5%             123    233  haz              
Birth       MAL-ED          SOUTH AFRICA                   0%               42    113  haz              
Birth       MAL-ED          SOUTH AFRICA                   (0%, 5%]         70    113  haz              
Birth       MAL-ED          SOUTH AFRICA                   >5%               1    113  haz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9    125  haz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         85    125  haz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              31    125  haz              
Birth       NIH-Birth       BANGLADESH                     0%               51    605  haz              
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]        345    605  haz              
Birth       NIH-Birth       BANGLADESH                     >5%             209    605  haz              
Birth       NIH-Crypto      BANGLADESH                     0%              151    732  haz              
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]        386    732  haz              
Birth       NIH-Crypto      BANGLADESH                     >5%             195    732  haz              
Birth       PROVIDE         BANGLADESH                     0%               55    539  haz              
Birth       PROVIDE         BANGLADESH                     (0%, 5%]        327    539  haz              
Birth       PROVIDE         BANGLADESH                     >5%             157    539  haz              
6 months    CMIN            BANGLADESH                     0%                2    243  haz              
6 months    CMIN            BANGLADESH                     (0%, 5%]        112    243  haz              
6 months    CMIN            BANGLADESH                     >5%             129    243  haz              
6 months    CONTENT         PERU                           0%                6    215  haz              
6 months    CONTENT         PERU                           (0%, 5%]        142    215  haz              
6 months    CONTENT         PERU                           >5%              67    215  haz              
6 months    EE              PAKISTAN                       0%              256    373  haz              
6 months    EE              PAKISTAN                       (0%, 5%]        117    373  haz              
6 months    EE              PAKISTAN                       >5%               0    373  haz              
6 months    Guatemala BSC   GUATEMALA                      0%               29    299  haz              
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]         70    299  haz              
6 months    Guatemala BSC   GUATEMALA                      >5%             200    299  haz              
6 months    JiVitA-4        BANGLADESH                     0%              156   4831  haz              
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]       4153   4831  haz              
6 months    JiVitA-4        BANGLADESH                     >5%             522   4831  haz              
6 months    MAL-ED          BANGLADESH                     0%                6    241  haz              
6 months    MAL-ED          BANGLADESH                     (0%, 5%]        142    241  haz              
6 months    MAL-ED          BANGLADESH                     >5%              93    241  haz              
6 months    MAL-ED          BRAZIL                         0%              106    209  haz              
6 months    MAL-ED          BRAZIL                         (0%, 5%]        101    209  haz              
6 months    MAL-ED          BRAZIL                         >5%               2    209  haz              
6 months    MAL-ED          INDIA                          0%                3    236  haz              
6 months    MAL-ED          INDIA                          (0%, 5%]        191    236  haz              
6 months    MAL-ED          INDIA                          >5%              42    236  haz              
6 months    MAL-ED          NEPAL                          0%               14    236  haz              
6 months    MAL-ED          NEPAL                          (0%, 5%]        143    236  haz              
6 months    MAL-ED          NEPAL                          >5%              79    236  haz              
6 months    MAL-ED          PERU                           0%                7    273  haz              
6 months    MAL-ED          PERU                           (0%, 5%]        109    273  haz              
6 months    MAL-ED          PERU                           >5%             157    273  haz              
6 months    MAL-ED          SOUTH AFRICA                   0%               78    254  haz              
6 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]        174    254  haz              
6 months    MAL-ED          SOUTH AFRICA                   >5%               2    254  haz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9    247  haz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        177    247  haz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              61    247  haz              
6 months    NIH-Birth       BANGLADESH                     0%               15    537  haz              
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]        339    537  haz              
6 months    NIH-Birth       BANGLADESH                     >5%             183    537  haz              
6 months    NIH-Crypto      BANGLADESH                     0%              134    715  haz              
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]        386    715  haz              
6 months    NIH-Crypto      BANGLADESH                     >5%             195    715  haz              
6 months    PROVIDE         BANGLADESH                     0%               12    604  haz              
6 months    PROVIDE         BANGLADESH                     (0%, 5%]        409    604  haz              
6 months    PROVIDE         BANGLADESH                     >5%             183    604  haz              
6 months    SAS-FoodSuppl   INDIA                          0%               73    380  haz              
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]         46    380  haz              
6 months    SAS-FoodSuppl   INDIA                          >5%             261    380  haz              
24 months   CMIN            BANGLADESH                     0%                3    242  haz              
24 months   CMIN            BANGLADESH                     (0%, 5%]        114    242  haz              
24 months   CMIN            BANGLADESH                     >5%             125    242  haz              
24 months   CONTENT         PERU                           0%                4    164  haz              
24 months   CONTENT         PERU                           (0%, 5%]        108    164  haz              
24 months   CONTENT         PERU                           >5%              52    164  haz              
24 months   EE              PAKISTAN                       0%              115    167  haz              
24 months   EE              PAKISTAN                       (0%, 5%]         52    167  haz              
24 months   EE              PAKISTAN                       >5%               0    167  haz              
24 months   JiVitA-4        BANGLADESH                     0%              165   4752  haz              
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]       4094   4752  haz              
24 months   JiVitA-4        BANGLADESH                     >5%             493   4752  haz              
24 months   MAL-ED          BANGLADESH                     0%                6    212  haz              
24 months   MAL-ED          BANGLADESH                     (0%, 5%]        130    212  haz              
24 months   MAL-ED          BANGLADESH                     >5%              76    212  haz              
24 months   MAL-ED          BRAZIL                         0%               76    169  haz              
24 months   MAL-ED          BRAZIL                         (0%, 5%]         91    169  haz              
24 months   MAL-ED          BRAZIL                         >5%               2    169  haz              
24 months   MAL-ED          INDIA                          0%                3    227  haz              
24 months   MAL-ED          INDIA                          (0%, 5%]        183    227  haz              
24 months   MAL-ED          INDIA                          >5%              41    227  haz              
24 months   MAL-ED          NEPAL                          0%               12    228  haz              
24 months   MAL-ED          NEPAL                          (0%, 5%]        140    228  haz              
24 months   MAL-ED          NEPAL                          >5%              76    228  haz              
24 months   MAL-ED          PERU                           0%                1    201  haz              
24 months   MAL-ED          PERU                           (0%, 5%]         84    201  haz              
24 months   MAL-ED          PERU                           >5%             116    201  haz              
24 months   MAL-ED          SOUTH AFRICA                   0%               71    238  haz              
24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]        166    238  haz              
24 months   MAL-ED          SOUTH AFRICA                   >5%               1    238  haz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    214  haz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        156    214  haz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              52    214  haz              
24 months   NIH-Birth       BANGLADESH                     0%                5    429  haz              
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]        279    429  haz              
24 months   NIH-Birth       BANGLADESH                     >5%             145    429  haz              
24 months   NIH-Crypto      BANGLADESH                     0%              123    514  haz              
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]        276    514  haz              
24 months   NIH-Crypto      BANGLADESH                     >5%             115    514  haz              
24 months   PROVIDE         BANGLADESH                     0%                9    578  haz              
24 months   PROVIDE         BANGLADESH                     (0%, 5%]        395    578  haz              
24 months   PROVIDE         BANGLADESH                     >5%             174    578  haz              


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
![](/tmp/f01ea597-ec4c-4f20-8655-778eb52bf186/b6625119-23fd-4a73-b240-fb6fbbbd2f10/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f01ea597-ec4c-4f20-8655-778eb52bf186/b6625119-23fd-4a73-b240-fb6fbbbd2f10/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f01ea597-ec4c-4f20-8655-778eb52bf186/b6625119-23fd-4a73-b240-fb6fbbbd2f10/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-4        BANGLADESH                     0%                   NA                -1.5782282   -1.9585848   -1.1978717
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]             NA                -1.5053663   -1.5581825   -1.4525501
Birth       JiVitA-4        BANGLADESH                     >5%                  NA                -1.6624850   -1.7976090   -1.5273609
Birth       MAL-ED          BANGLADESH                     0%                   NA                -1.5548531   -2.0903980   -1.0193083
Birth       MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.9706915   -1.1407578   -0.8006252
Birth       MAL-ED          BANGLADESH                     >5%                  NA                -1.2806031   -1.5116877   -1.0495186
Birth       MAL-ED          INDIA                          0%                   NA                -0.9220000   -1.6509223   -0.1930777
Birth       MAL-ED          INDIA                          (0%, 5%]             NA                -1.2281818   -1.5833498   -0.8730139
Birth       MAL-ED          INDIA                          >5%                  NA                -1.2700000   -1.9601079   -0.5798921
Birth       MAL-ED          PERU                           0%                   NA                -0.8477843   -1.1683287   -0.5272399
Birth       MAL-ED          PERU                           (0%, 5%]             NA                -0.9238254   -1.0833518   -0.7642990
Birth       MAL-ED          PERU                           >5%                  NA                -0.9130755   -1.0636035   -0.7625475
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.5222222   -2.3091001   -0.7353443
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.2164706   -1.4939186   -0.9390226
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.8822581   -1.1471959   -0.6173203
Birth       NIH-Birth       BANGLADESH                     0%                   NA                -0.9854615   -1.2377267   -0.7331963
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -0.9311770   -1.0410851   -0.8212690
Birth       NIH-Birth       BANGLADESH                     >5%                  NA                -0.9159070   -1.0390515   -0.7927626
Birth       NIH-Crypto      BANGLADESH                     0%                   NA                -0.8287985   -0.9934894   -0.6641076
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.9079073   -1.0107612   -0.8050535
Birth       NIH-Crypto      BANGLADESH                     >5%                  NA                -0.9280492   -1.0368412   -0.8192573
Birth       PROVIDE         BANGLADESH                     0%                   NA                -0.9097953   -1.0990364   -0.7205542
Birth       PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.8744484   -0.9647162   -0.7841806
Birth       PROVIDE         BANGLADESH                     >5%                  NA                -0.8755588   -1.0329956   -0.7181219
6 months    CONTENT         PERU                           0%                   NA                -1.0567500   -1.4658384   -0.6476616
6 months    CONTENT         PERU                           (0%, 5%]             NA                -0.3029472   -0.4697708   -0.1361235
6 months    CONTENT         PERU                           >5%                  NA                -0.1570746   -0.3744579    0.0603086
6 months    Guatemala BSC   GUATEMALA                      0%                   NA                -1.5124001   -1.8812398   -1.1435603
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]             NA                -1.4285752   -1.6356581   -1.2214924
6 months    Guatemala BSC   GUATEMALA                      >5%                  NA                -1.6081200   -1.7467225   -1.4695175
6 months    JiVitA-4        BANGLADESH                     0%                   NA                -1.4043716   -1.5905620   -1.2181811
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]             NA                -1.3342626   -1.3751976   -1.2933275
6 months    JiVitA-4        BANGLADESH                     >5%                  NA                -1.4198030   -1.5109378   -1.3286681
6 months    MAL-ED          BANGLADESH                     0%                   NA                -0.9866667   -1.5612360   -0.4120973
6 months    MAL-ED          BANGLADESH                     (0%, 5%]             NA                -1.0936385   -1.2371707   -0.9501063
6 months    MAL-ED          BANGLADESH                     >5%                  NA                -1.3891039   -1.5904471   -1.1877608
6 months    MAL-ED          NEPAL                          0%                   NA                -0.4908904   -1.1027731    0.1209923
6 months    MAL-ED          NEPAL                          (0%, 5%]             NA                -0.6138600   -0.7515130   -0.4762070
6 months    MAL-ED          NEPAL                          >5%                  NA                -0.5154899   -0.7283295   -0.3026503
6 months    MAL-ED          PERU                           0%                   NA                -1.0700000   -1.6970711   -0.4429289
6 months    MAL-ED          PERU                           (0%, 5%]             NA                -1.3015443   -1.4624676   -1.1406211
6 months    MAL-ED          PERU                           >5%                  NA                -1.3503344   -1.4983707   -1.2022981
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.4750000   -2.4233687   -0.5266313
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.3915631   -1.5359143   -1.2472119
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -1.2868579   -1.5070055   -1.0667103
6 months    NIH-Birth       BANGLADESH                     0%                   NA                -1.7646922   -2.1451127   -1.3842717
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -1.3957203   -1.5092137   -1.2822268
6 months    NIH-Birth       BANGLADESH                     >5%                  NA                -1.3997690   -1.5465388   -1.2529991
6 months    NIH-Crypto      BANGLADESH                     0%                   NA                -1.0764190   -1.2739416   -0.8788964
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -1.2123180   -1.3218351   -1.1028010
6 months    NIH-Crypto      BANGLADESH                     >5%                  NA                -1.1658728   -1.2782993   -1.0534462
6 months    PROVIDE         BANGLADESH                     0%                   NA                -1.5183235   -1.9677946   -1.0688524
6 months    PROVIDE         BANGLADESH                     (0%, 5%]             NA                -1.0829756   -1.1711078   -0.9948435
6 months    PROVIDE         BANGLADESH                     >5%                  NA                -1.0753280   -1.2264689   -0.9241872
6 months    SAS-FoodSuppl   INDIA                          0%                   NA                -2.0214554   -2.2903064   -1.7526043
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                -1.7842144   -2.0917240   -1.4767048
6 months    SAS-FoodSuppl   INDIA                          >5%                  NA                -1.8861410   -2.0228340   -1.7494480
24 months   JiVitA-4        BANGLADESH                     0%                   NA                -1.7589647   -1.9630247   -1.5549048
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]             NA                -1.7700742   -1.8072654   -1.7328831
24 months   JiVitA-4        BANGLADESH                     >5%                  NA                -1.8803283   -1.9686344   -1.7920222
24 months   MAL-ED          BANGLADESH                     0%                   NA                -1.6983333   -2.1891875   -1.2074792
24 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                -1.9507308   -2.1166572   -1.7848043
24 months   MAL-ED          BANGLADESH                     >5%                  NA                -2.0478289   -2.2529623   -1.8426955
24 months   MAL-ED          NEPAL                          0%                   NA                -0.9102129   -1.4120500   -0.4083758
24 months   MAL-ED          NEPAL                          (0%, 5%]             NA                -1.3021549   -1.4511388   -1.1531711
24 months   MAL-ED          NEPAL                          >5%                  NA                -1.3517708   -1.5750390   -1.1285026
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -3.2400000   -4.2371443   -2.2428557
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -2.6175962   -2.7782509   -2.4569414
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -2.6608654   -2.9071887   -2.4145421
24 months   NIH-Birth       BANGLADESH                     0%                   NA                -1.6920000   -1.8179481   -1.5660519
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -2.2130914   -2.3480900   -2.0780928
24 months   NIH-Birth       BANGLADESH                     >5%                  NA                -2.2487126   -2.4051224   -2.0923029
24 months   NIH-Crypto      BANGLADESH                     0%                   NA                -1.4954928   -1.7038750   -1.2871106
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -1.4179300   -1.5544521   -1.2814080
24 months   NIH-Crypto      BANGLADESH                     >5%                  NA                -1.6364976   -1.7872229   -1.4857723
24 months   PROVIDE         BANGLADESH                     0%                   NA                -1.9750000   -2.3266294   -1.6233706
24 months   PROVIDE         BANGLADESH                     (0%, 5%]             NA                -1.5859747   -1.6839331   -1.4880162
24 months   PROVIDE         BANGLADESH                     >5%                  NA                -1.6204885   -1.7821075   -1.4588695


### Parameter: E(Y)


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-4        BANGLADESH                     NA                   NA                -1.5232908   -1.5723277   -1.4742539
Birth       MAL-ED          BANGLADESH                     NA                   NA                -1.1180952   -1.2525408   -0.9836496
Birth       MAL-ED          INDIA                          NA                   NA                -1.2036170   -1.4976814   -0.9095527
Birth       MAL-ED          PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1556000   -1.3655361   -0.9456639
Birth       NIH-Birth       BANGLADESH                     NA                   NA                -0.9314050   -1.0202164   -0.8425936
Birth       NIH-Crypto      BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
6 months    CONTENT         PERU                           NA                   NA                -0.2785256   -0.4098735   -0.1471776
6 months    Guatemala BSC   GUATEMALA                      NA                   NA                -1.5619008   -1.6727702   -1.4510313
6 months    JiVitA-4        BANGLADESH                     NA                   NA                -1.3447940   -1.3820261   -1.3075620
6 months    MAL-ED          BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED          NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED          PERU                           NA                   NA                -1.3236661   -1.4316775   -1.2156546
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Birth       BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
24 months   JiVitA-4        BANGLADESH                     NA                   NA                -1.7807218   -1.8162478   -1.7451958
24 months   MAL-ED          BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED          NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Birth       BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]             0%                 0.0728619   -0.3122927    0.4580165
Birth       JiVitA-4        BANGLADESH                     >5%                  0%                -0.0842568   -0.4870483    0.3185348
Birth       MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.5841616    0.0220364    1.1462868
Birth       MAL-ED          BANGLADESH                     >5%                  0%                 0.2742500   -0.3098480    0.8583479
Birth       MAL-ED          INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          INDIA                          (0%, 5%]             0%                -0.3061818   -1.1170283    0.5046647
Birth       MAL-ED          INDIA                          >5%                  0%                -0.3480000   -1.3517812    0.6557812
Birth       MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          PERU                           (0%, 5%]             0%                -0.0760410   -0.4226629    0.2705808
Birth       MAL-ED          PERU                           >5%                  0%                -0.0652911   -0.4046169    0.2740346
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.3057516   -0.5286070    1.1401102
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.6399642   -0.1903183    1.4702466
Birth       NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.0542845   -0.2085360    0.3171049
Birth       NIH-Birth       BANGLADESH                     >5%                  0%                 0.0695545   -0.2004775    0.3395864
Birth       NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0791088   -0.2664359    0.1082184
Birth       NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0992507   -0.2903803    0.0918789
Birth       PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0353469   -0.1674766    0.2381704
Birth       PROVIDE         BANGLADESH                     >5%                  0%                 0.0342365   -0.2044785    0.2729515
6 months    CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    CONTENT         PERU                           (0%, 5%]             0%                 0.7538028    0.3120071    1.1955985
6 months    CONTENT         PERU                           >5%                  0%                 0.8996754    0.4364165    1.3629343
6 months    Guatemala BSC   GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]             0%                 0.0838249   -0.3383555    0.5060052
6 months    Guatemala BSC   GUATEMALA                      >5%                  0%                -0.0957199   -0.4899095    0.2984697
6 months    JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]             0%                 0.0701090   -0.1198380    0.2600560
6 months    JiVitA-4        BANGLADESH                     >5%                  0%                -0.0154314   -0.2246208    0.1937581
6 months    MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.1069718   -0.6991976    0.4852540
6 months    MAL-ED          BANGLADESH                     >5%                  0%                -0.4024373   -1.0112632    0.2063886
6 months    MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          NEPAL                          (0%, 5%]             0%                -0.1229696   -0.7497786    0.5038394
6 months    MAL-ED          NEPAL                          >5%                  0%                -0.0245995   -0.6712824    0.6220833
6 months    MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          PERU                           (0%, 5%]             0%                -0.2315443   -0.8789349    0.4158462
6 months    MAL-ED          PERU                           >5%                  0%                -0.2803344   -0.9246425    0.3639737
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0834369   -0.8758547    1.0427285
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1881421   -0.7854431    1.1617272
6 months    NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.3689719   -0.0275313    0.7654752
6 months    NIH-Birth       BANGLADESH                     >5%                  0%                 0.3649232   -0.0425805    0.7724270
6 months    NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.1358990   -0.3622523    0.0904543
6 months    NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0894537   -0.3166516    0.1377441
6 months    PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.4353479   -0.0224545    0.8931503
6 months    PROVIDE         BANGLADESH                     >5%                  0%                 0.4429955   -0.0314342    0.9174252
6 months    SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                 0.2372410   -0.1715888    0.6460708
6 months    SAS-FoodSuppl   INDIA                          >5%                  0%                 0.1353144   -0.1665861    0.4372149
24 months   JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]             0%                -0.0111095   -0.2187707    0.1965516
24 months   JiVitA-4        BANGLADESH                     >5%                  0%                -0.1213636   -0.3383996    0.0956724
24 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.2523974   -0.7705377    0.2657429
24 months   MAL-ED          BANGLADESH                     >5%                  0%                -0.3494956   -0.8814895    0.1824983
24 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED          NEPAL                          (0%, 5%]             0%                -0.3919420   -0.9147457    0.1308617
24 months   MAL-ED          NEPAL                          >5%                  0%                -0.4415579   -0.9907211    0.1076053
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.6224038   -0.3875995    1.6324072
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.5791346   -0.4479836    1.6062529
24 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.5210914   -0.7057196   -0.3364632
24 months   NIH-Birth       BANGLADESH                     >5%                  0%                -0.5567126   -0.7575284   -0.3558969
24 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.0775628   -0.1704261    0.3255517
24 months   NIH-Crypto      BANGLADESH                     >5%                  0%                -0.1410048   -0.3986731    0.1166635
24 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.3890253    0.0240060    0.7540446
24 months   PROVIDE         BANGLADESH                     >5%                  0%                 0.3545115   -0.0324820    0.7415049


### Parameter: PAR


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-4        BANGLADESH                     0%                   NA                 0.0549374   -0.3194883    0.4293631
Birth       MAL-ED          BANGLADESH                     0%                   NA                 0.4367579   -0.0738169    0.9473327
Birth       MAL-ED          INDIA                          0%                   NA                -0.2816170   -0.9920768    0.4288428
Birth       MAL-ED          PERU                           0%                   NA                -0.0350054   -0.3385216    0.2685109
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.3666222   -0.3910641    1.1243085
Birth       NIH-Birth       BANGLADESH                     0%                   NA                 0.0540565   -0.1818160    0.2899291
Birth       NIH-Crypto      BANGLADESH                     0%                   NA                -0.0806960   -0.2261463    0.0647543
Birth       PROVIDE         BANGLADESH                     0%                   NA                 0.0246933   -0.1579133    0.2072999
6 months    CONTENT         PERU                           0%                   NA                 0.7782244    0.3595779    1.1968710
6 months    Guatemala BSC   GUATEMALA                      0%                   NA                -0.0495007   -0.3971068    0.2981054
6 months    JiVitA-4        BANGLADESH                     0%                   NA                 0.0595775   -0.1242291    0.2433842
6 months    MAL-ED          BANGLADESH                     0%                   NA                -0.2183264   -0.7904838    0.3538310
6 months    MAL-ED          NEPAL                          0%                   NA                -0.0706915   -0.6640405    0.5226575
6 months    MAL-ED          PERU                           0%                   NA                -0.2536661   -0.8739238    0.3665917
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.1062551   -0.8150201    1.0275302
6 months    NIH-Birth       BANGLADESH                     0%                   NA                 0.3573101   -0.0228997    0.7375200
6 months    NIH-Crypto      BANGLADESH                     0%                   NA                -0.1222593   -0.3055757    0.0610571
6 months    PROVIDE         BANGLADESH                     0%                   NA                 0.4266320   -0.0186324    0.8718964
6 months    SAS-FoodSuppl   INDIA                          0%                   NA                 0.1227712   -0.1170701    0.3626124
24 months   JiVitA-4        BANGLADESH                     0%                   NA                -0.0217571   -0.2214222    0.1779080
24 months   MAL-ED          BANGLADESH                     0%                   NA                -0.2800629   -0.7733515    0.2132257
24 months   MAL-ED          NEPAL                          0%                   NA                -0.3973748   -0.8905113    0.0957617
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.5944393   -0.3837281    1.5726066
24 months   NIH-Birth       BANGLADESH                     0%                   NA                -0.5270579   -0.6871036   -0.3670122
24 months   NIH-Crypto      BANGLADESH                     0%                   NA                 0.0542282   -0.1351251    0.2435816
24 months   PROVIDE         BANGLADESH                     0%                   NA                 0.3725779    0.0198694    0.7252863

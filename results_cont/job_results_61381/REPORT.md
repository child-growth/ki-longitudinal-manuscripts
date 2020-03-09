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
![](/tmp/bb8b1bbc-fb25-4cb9-bf7b-53071ef6a28d/4a546275-d417-4da9-b450-00bd9e513dc1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/bb8b1bbc-fb25-4cb9-bf7b-53071ef6a28d/4a546275-d417-4da9-b450-00bd9e513dc1/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/bb8b1bbc-fb25-4cb9-bf7b-53071ef6a28d/4a546275-d417-4da9-b450-00bd9e513dc1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-4        BANGLADESH                     0%                   NA                -1.5877028   -1.9709465   -1.2044591
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]             NA                -1.5090795   -1.5617492   -1.4564099
Birth       JiVitA-4        BANGLADESH                     >5%                  NA                -1.6559836   -1.7969214   -1.5150458
Birth       MAL-ED          BANGLADESH                     0%                   NA                -1.5189623   -2.0889946   -0.9489301
Birth       MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.9662468   -1.1362359   -0.7962576
Birth       MAL-ED          BANGLADESH                     >5%                  NA                -1.2897927   -1.5216072   -1.0579782
Birth       MAL-ED          INDIA                          0%                   NA                -0.9220000   -1.6509223   -0.1930777
Birth       MAL-ED          INDIA                          (0%, 5%]             NA                -1.2281818   -1.5833498   -0.8730139
Birth       MAL-ED          INDIA                          >5%                  NA                -1.2700000   -1.9601079   -0.5798921
Birth       MAL-ED          PERU                           0%                   NA                -0.6725344   -0.9737124   -0.3713564
Birth       MAL-ED          PERU                           (0%, 5%]             NA                -0.8906913   -1.0520484   -0.7293341
Birth       MAL-ED          PERU                           >5%                  NA                -0.8975412   -1.0484313   -0.7466512
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.5222222   -2.3091001   -0.7353443
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.2164706   -1.4939186   -0.9390226
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.8822581   -1.1471959   -0.6173203
Birth       NIH-Birth       BANGLADESH                     0%                   NA                -0.9889866   -1.2357459   -0.7422274
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -0.9302434   -1.0404011   -0.8200857
Birth       NIH-Birth       BANGLADESH                     >5%                  NA                -0.9120363   -1.0346657   -0.7894069
Birth       NIH-Crypto      BANGLADESH                     0%                   NA                -0.8461579   -1.0093102   -0.6830056
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.9073924   -1.0167098   -0.7980750
Birth       NIH-Crypto      BANGLADESH                     >5%                  NA                -0.8947203   -1.0080308   -0.7814098
Birth       PROVIDE         BANGLADESH                     0%                   NA                -0.9275356   -1.1212759   -0.7337952
Birth       PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.8718476   -0.9639218   -0.7797735
Birth       PROVIDE         BANGLADESH                     >5%                  NA                -0.8778284   -1.0367032   -0.7189535
6 months    CONTENT         PERU                           0%                   NA                -1.0567500   -1.4658384   -0.6476616
6 months    CONTENT         PERU                           (0%, 5%]             NA                -0.3029472   -0.4697708   -0.1361235
6 months    CONTENT         PERU                           >5%                  NA                -0.1570746   -0.3744579    0.0603086
6 months    Guatemala BSC   GUATEMALA                      0%                   NA                -1.5901309   -1.9494667   -1.2307951
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]             NA                -1.4281214   -1.6450951   -1.2111477
6 months    Guatemala BSC   GUATEMALA                      >5%                  NA                -1.6041413   -1.7410615   -1.4672211
6 months    JiVitA-4        BANGLADESH                     0%                   NA                -1.3729798   -1.5554098   -1.1905499
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]             NA                -1.3342452   -1.3751794   -1.2933109
6 months    JiVitA-4        BANGLADESH                     >5%                  NA                -1.4217558   -1.5087903   -1.3347214
6 months    MAL-ED          BANGLADESH                     0%                   NA                -0.9866667   -1.5612360   -0.4120973
6 months    MAL-ED          BANGLADESH                     (0%, 5%]             NA                -1.0936385   -1.2371707   -0.9501063
6 months    MAL-ED          BANGLADESH                     >5%                  NA                -1.3891039   -1.5904471   -1.1877608
6 months    MAL-ED          NEPAL                          0%                   NA                -0.2960187   -0.8243849    0.2323476
6 months    MAL-ED          NEPAL                          (0%, 5%]             NA                -0.6051451   -0.7420570   -0.4682331
6 months    MAL-ED          NEPAL                          >5%                  NA                -0.5080725   -0.7208859   -0.2952591
6 months    MAL-ED          PERU                           0%                   NA                -1.0700000   -1.6970711   -0.4429289
6 months    MAL-ED          PERU                           (0%, 5%]             NA                -1.3015443   -1.4624676   -1.1406211
6 months    MAL-ED          PERU                           >5%                  NA                -1.3503344   -1.4983707   -1.2022981
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.4750000   -2.4233687   -0.5266313
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.3915631   -1.5359143   -1.2472119
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -1.2868579   -1.5070055   -1.0667103
6 months    NIH-Birth       BANGLADESH                     0%                   NA                -1.7261530   -2.1071001   -1.3452059
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -1.3986703   -1.5121748   -1.2851659
6 months    NIH-Birth       BANGLADESH                     >5%                  NA                -1.3995065   -1.5443397   -1.2546732
6 months    NIH-Crypto      BANGLADESH                     0%                   NA                -1.1534965   -1.3533348   -0.9536583
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -1.2090499   -1.3188729   -1.0992269
6 months    NIH-Crypto      BANGLADESH                     >5%                  NA                -1.2337038   -1.3504611   -1.1169466
6 months    PROVIDE         BANGLADESH                     0%                   NA                -1.5485509   -2.0408503   -1.0562515
6 months    PROVIDE         BANGLADESH                     (0%, 5%]             NA                -1.0828037   -1.1708038   -0.9948036
6 months    PROVIDE         BANGLADESH                     >5%                  NA                -1.0777314   -1.2247586   -0.9307041
6 months    SAS-FoodSuppl   INDIA                          0%                   NA                -2.0478728   -2.3207738   -1.7749718
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                -1.7696976   -2.0792812   -1.4601139
6 months    SAS-FoodSuppl   INDIA                          >5%                  NA                -1.8845772   -2.0214345   -1.7477199
24 months   JiVitA-4        BANGLADESH                     0%                   NA                -1.7915414   -1.9916099   -1.5914728
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]             NA                -1.7702841   -1.8073510   -1.7332173
24 months   JiVitA-4        BANGLADESH                     >5%                  NA                -1.8816150   -1.9727347   -1.7904952
24 months   MAL-ED          BANGLADESH                     0%                   NA                -1.6983333   -2.1891875   -1.2074792
24 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                -1.9507308   -2.1166572   -1.7848043
24 months   MAL-ED          BANGLADESH                     >5%                  NA                -2.0478289   -2.2529623   -1.8426955
24 months   MAL-ED          NEPAL                          0%                   NA                -1.3997481   -1.8629387   -0.9365576
24 months   MAL-ED          NEPAL                          (0%, 5%]             NA                -1.3154119   -1.4646327   -1.1661912
24 months   MAL-ED          NEPAL                          >5%                  NA                -1.3701215   -1.5915262   -1.1487167
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -3.2400000   -4.2371443   -2.2428557
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -2.6175962   -2.7782509   -2.4569414
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -2.6608654   -2.9071887   -2.4145421
24 months   NIH-Birth       BANGLADESH                     0%                   NA                -1.6920000   -1.8179481   -1.5660519
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -2.2130914   -2.3480900   -2.0780928
24 months   NIH-Birth       BANGLADESH                     >5%                  NA                -2.2487126   -2.4051224   -2.0923029
24 months   NIH-Crypto      BANGLADESH                     0%                   NA                -1.3934463   -1.5941364   -1.1927562
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -1.4333803   -1.5728315   -1.2939291
24 months   NIH-Crypto      BANGLADESH                     >5%                  NA                -1.6290630   -1.7802622   -1.4778639
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
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]             0%                 0.0786232   -0.3095276    0.4667740
Birth       JiVitA-4        BANGLADESH                     >5%                  0%                -0.0682809   -0.4749144    0.3383527
Birth       MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.5527155   -0.0426415    1.1480726
Birth       MAL-ED          BANGLADESH                     >5%                  0%                 0.2291696   -0.3862835    0.8446227
Birth       MAL-ED          INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          INDIA                          (0%, 5%]             0%                -0.3061818   -1.1170283    0.5046647
Birth       MAL-ED          INDIA                          >5%                  0%                -0.3480000   -1.3517812    0.6557812
Birth       MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          PERU                           (0%, 5%]             0%                -0.2181568   -0.5465108    0.1101971
Birth       MAL-ED          PERU                           >5%                  0%                -0.2250068   -0.5461139    0.0961002
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.3057516   -0.5286070    1.1401102
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.6399642   -0.1903183    1.4702466
Birth       NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.0587432   -0.1985309    0.3160173
Birth       NIH-Birth       BANGLADESH                     >5%                  0%                 0.0769503   -0.1873595    0.3412601
Birth       NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0612345   -0.2510474    0.1285785
Birth       NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0485624   -0.2410117    0.1438869
Birth       PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0556879   -0.1521670    0.2635428
Birth       PROVIDE         BANGLADESH                     >5%                  0%                 0.0497072   -0.1935948    0.2930092
6 months    CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    CONTENT         PERU                           (0%, 5%]             0%                 0.7538028    0.3120071    1.1955985
6 months    CONTENT         PERU                           >5%                  0%                 0.8996754    0.4364165    1.3629343
6 months    Guatemala BSC   GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]             0%                 0.1620095   -0.2571714    0.5811904
6 months    Guatemala BSC   GUATEMALA                      >5%                  0%                -0.0140104   -0.3979022    0.3698814
6 months    JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]             0%                 0.0387347   -0.1477075    0.2251769
6 months    JiVitA-4        BANGLADESH                     >5%                  0%                -0.0487760   -0.2534797    0.1559277
6 months    MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.1069718   -0.6991976    0.4852540
6 months    MAL-ED          BANGLADESH                     >5%                  0%                -0.4024373   -1.0112632    0.2063886
6 months    MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          NEPAL                          (0%, 5%]             0%                -0.3091264   -0.8552960    0.2370432
6 months    MAL-ED          NEPAL                          >5%                  0%                -0.2120538   -0.7819243    0.3578166
6 months    MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          PERU                           (0%, 5%]             0%                -0.2315443   -0.8789349    0.4158462
6 months    MAL-ED          PERU                           >5%                  0%                -0.2803344   -0.9246425    0.3639737
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0834369   -0.8758547    1.0427285
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1881421   -0.7854431    1.1617272
6 months    NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.3274826   -0.0688020    0.7237673
6 months    NIH-Birth       BANGLADESH                     >5%                  0%                 0.3266465   -0.0801683    0.7334614
6 months    NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0555534   -0.2831368    0.1720300
6 months    NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0802073   -0.3115273    0.1511127
6 months    PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.4657472   -0.0339540    0.9654483
6 months    PROVIDE         BANGLADESH                     >5%                  0%                 0.4708195   -0.0429578    0.9845968
6 months    SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                 0.2781752   -0.1348386    0.6911890
6 months    SAS-FoodSuppl   INDIA                          >5%                  0%                 0.1632956   -0.1421870    0.4687782
24 months   JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]             0%                 0.0212572   -0.1824516    0.2249660
24 months   JiVitA-4        BANGLADESH                     >5%                  0%                -0.0900736   -0.3047875    0.1246403
24 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.2523974   -0.7705377    0.2657429
24 months   MAL-ED          BANGLADESH                     >5%                  0%                -0.3494956   -0.8814895    0.1824983
24 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED          NEPAL                          (0%, 5%]             0%                 0.0843362   -0.4021601    0.5708326
24 months   MAL-ED          NEPAL                          >5%                  0%                 0.0296266   -0.4847184    0.5439717
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.6224038   -0.3875995    1.6324072
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.5791346   -0.4479836    1.6062529
24 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.5210914   -0.7057196   -0.3364632
24 months   NIH-Birth       BANGLADESH                     >5%                  0%                -0.5567126   -0.7575284   -0.3558969
24 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0399340   -0.2836578    0.2037898
24 months   NIH-Crypto      BANGLADESH                     >5%                  0%                -0.2356167   -0.4869731    0.0157396
24 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.3890253    0.0240060    0.7540446
24 months   PROVIDE         BANGLADESH                     >5%                  0%                 0.3545115   -0.0324820    0.7415049


### Parameter: PAR


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-4        BANGLADESH                     0%                   NA                 0.0644119   -0.3130997    0.4419236
Birth       MAL-ED          BANGLADESH                     0%                   NA                 0.4008671   -0.1429972    0.9447313
Birth       MAL-ED          INDIA                          0%                   NA                -0.2816170   -0.9920768    0.4288428
Birth       MAL-ED          PERU                           0%                   NA                -0.2102553   -0.4922954    0.0717849
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.3666222   -0.3910641    1.1243085
Birth       NIH-Birth       BANGLADESH                     0%                   NA                 0.0575817   -0.1727724    0.2879358
Birth       NIH-Crypto      BANGLADESH                     0%                   NA                -0.0633366   -0.2089905    0.0823172
Birth       PROVIDE         BANGLADESH                     0%                   NA                 0.0424335   -0.1445516    0.2294187
6 months    CONTENT         PERU                           0%                   NA                 0.7782244    0.3595779    1.1968710
6 months    Guatemala BSC   GUATEMALA                      0%                   NA                 0.0282301   -0.3107456    0.3672059
6 months    JiVitA-4        BANGLADESH                     0%                   NA                 0.0281858   -0.1520070    0.2083786
6 months    MAL-ED          BANGLADESH                     0%                   NA                -0.2183264   -0.7904838    0.3538310
6 months    MAL-ED          NEPAL                          0%                   NA                -0.2655632   -0.7771240    0.2459975
6 months    MAL-ED          PERU                           0%                   NA                -0.2536661   -0.8739238    0.3665917
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.1062551   -0.8150201    1.0275302
6 months    NIH-Birth       BANGLADESH                     0%                   NA                 0.3187709   -0.0612257    0.6987675
6 months    NIH-Crypto      BANGLADESH                     0%                   NA                -0.0451818   -0.2313272    0.1409637
6 months    PROVIDE         BANGLADESH                     0%                   NA                 0.4568594   -0.0305278    0.9442466
6 months    SAS-FoodSuppl   INDIA                          0%                   NA                 0.1491886   -0.0944673    0.3928445
24 months   JiVitA-4        BANGLADESH                     0%                   NA                 0.0108196   -0.1849829    0.2066220
24 months   MAL-ED          BANGLADESH                     0%                   NA                -0.2800629   -0.7733515    0.2132257
24 months   MAL-ED          NEPAL                          0%                   NA                 0.0921604   -0.3669122    0.5512330
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.5944393   -0.3837281    1.5726066
24 months   NIH-Birth       BANGLADESH                     0%                   NA                -0.5270579   -0.6871036   -0.3670122
24 months   NIH-Crypto      BANGLADESH                     0%                   NA                -0.0478183   -0.2305009    0.1348644
24 months   PROVIDE         BANGLADESH                     0%                   NA                 0.3725779    0.0198694    0.7252863

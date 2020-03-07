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

agecat      studyid         country                        perdiar24    n_cell      n
----------  --------------  -----------------------------  ----------  -------  -----
Birth       CMIN            BANGLADESH                     0%               12     26
Birth       CMIN            BANGLADESH                     (0%, 5%]          4     26
Birth       CMIN            BANGLADESH                     >5%              10     26
Birth       CONTENT         PERU                           0%                0      2
Birth       CONTENT         PERU                           (0%, 5%]          1      2
Birth       CONTENT         PERU                           >5%               1      2
Birth       EE              PAKISTAN                       0%              161    240
Birth       EE              PAKISTAN                       (0%, 5%]         79    240
Birth       EE              PAKISTAN                       >5%               0    240
Birth       JiVitA-4        BANGLADESH                     0%               76   2823
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]       2449   2823
Birth       JiVitA-4        BANGLADESH                     >5%             298   2823
Birth       MAL-ED          BANGLADESH                     0%               18    231
Birth       MAL-ED          BANGLADESH                     (0%, 5%]        131    231
Birth       MAL-ED          BANGLADESH                     >5%              82    231
Birth       MAL-ED          BRAZIL                         0%               34     65
Birth       MAL-ED          BRAZIL                         (0%, 5%]         29     65
Birth       MAL-ED          BRAZIL                         >5%               2     65
Birth       MAL-ED          INDIA                          0%                5     47
Birth       MAL-ED          INDIA                          (0%, 5%]         33     47
Birth       MAL-ED          INDIA                          >5%               9     47
Birth       MAL-ED          NEPAL                          0%                2     27
Birth       MAL-ED          NEPAL                          (0%, 5%]         19     27
Birth       MAL-ED          NEPAL                          >5%               6     27
Birth       MAL-ED          PERU                           0%               21    233
Birth       MAL-ED          PERU                           (0%, 5%]         89    233
Birth       MAL-ED          PERU                           >5%             123    233
Birth       MAL-ED          SOUTH AFRICA                   0%               42    113
Birth       MAL-ED          SOUTH AFRICA                   (0%, 5%]         70    113
Birth       MAL-ED          SOUTH AFRICA                   >5%               1    113
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9    125
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         85    125
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              31    125
Birth       NIH-Birth       BANGLADESH                     0%               51    605
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]        345    605
Birth       NIH-Birth       BANGLADESH                     >5%             209    605
Birth       NIH-Crypto      BANGLADESH                     0%              151    732
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]        386    732
Birth       NIH-Crypto      BANGLADESH                     >5%             195    732
Birth       PROVIDE         BANGLADESH                     0%               55    539
Birth       PROVIDE         BANGLADESH                     (0%, 5%]        327    539
Birth       PROVIDE         BANGLADESH                     >5%             157    539
6 months    CMIN            BANGLADESH                     0%                2    243
6 months    CMIN            BANGLADESH                     (0%, 5%]        112    243
6 months    CMIN            BANGLADESH                     >5%             129    243
6 months    CONTENT         PERU                           0%                6    215
6 months    CONTENT         PERU                           (0%, 5%]        142    215
6 months    CONTENT         PERU                           >5%              67    215
6 months    EE              PAKISTAN                       0%              256    373
6 months    EE              PAKISTAN                       (0%, 5%]        117    373
6 months    EE              PAKISTAN                       >5%               0    373
6 months    Guatemala BSC   GUATEMALA                      0%               29    299
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]         70    299
6 months    Guatemala BSC   GUATEMALA                      >5%             200    299
6 months    JiVitA-4        BANGLADESH                     0%              156   4831
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]       4153   4831
6 months    JiVitA-4        BANGLADESH                     >5%             522   4831
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
6 months    PROVIDE         BANGLADESH                     0%               12    604
6 months    PROVIDE         BANGLADESH                     (0%, 5%]        409    604
6 months    PROVIDE         BANGLADESH                     >5%             183    604
6 months    SAS-FoodSuppl   INDIA                          0%               73    380
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]         46    380
6 months    SAS-FoodSuppl   INDIA                          >5%             261    380
24 months   CMIN            BANGLADESH                     0%                3    242
24 months   CMIN            BANGLADESH                     (0%, 5%]        114    242
24 months   CMIN            BANGLADESH                     >5%             125    242
24 months   CONTENT         PERU                           0%                4    164
24 months   CONTENT         PERU                           (0%, 5%]        108    164
24 months   CONTENT         PERU                           >5%              52    164
24 months   EE              PAKISTAN                       0%              115    167
24 months   EE              PAKISTAN                       (0%, 5%]         52    167
24 months   EE              PAKISTAN                       >5%               0    167
24 months   JiVitA-4        BANGLADESH                     0%              165   4752
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]       4094   4752
24 months   JiVitA-4        BANGLADESH                     >5%             493   4752
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
24 months   NIH-Birth       BANGLADESH                     0%                5    429
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]        279    429
24 months   NIH-Birth       BANGLADESH                     >5%             145    429
24 months   NIH-Crypto      BANGLADESH                     0%              123    514
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]        276    514
24 months   NIH-Crypto      BANGLADESH                     >5%             115    514
24 months   PROVIDE         BANGLADESH                     0%                9    578
24 months   PROVIDE         BANGLADESH                     (0%, 5%]        395    578
24 months   PROVIDE         BANGLADESH                     >5%             174    578


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
![](/tmp/a66d85b4-26bb-493c-b2b5-1a17c13f45b9/bdb84619-edd8-4837-ad9f-0583b4b279aa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a66d85b4-26bb-493c-b2b5-1a17c13f45b9/bdb84619-edd8-4837-ad9f-0583b4b279aa/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a66d85b4-26bb-493c-b2b5-1a17c13f45b9/bdb84619-edd8-4837-ad9f-0583b4b279aa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-4        BANGLADESH                     0%                   NA                -1.5462178   -1.9443114   -1.1481243
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]             NA                -1.5059610   -1.5588090   -1.4531131
Birth       JiVitA-4        BANGLADESH                     >5%                  NA                -1.6512155   -1.7876518   -1.5147792
Birth       MAL-ED          BANGLADESH                     0%                   NA                -1.6536273   -2.2110534   -1.0962011
Birth       MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.9858878   -1.1561282   -0.8156475
Birth       MAL-ED          BANGLADESH                     >5%                  NA                -1.3127052   -1.5411820   -1.0842285
Birth       MAL-ED          INDIA                          0%                   NA                -0.9220000   -1.6509223   -0.1930777
Birth       MAL-ED          INDIA                          (0%, 5%]             NA                -1.2281818   -1.5833498   -0.8730139
Birth       MAL-ED          INDIA                          >5%                  NA                -1.2700000   -1.9601079   -0.5798921
Birth       MAL-ED          PERU                           0%                   NA                -0.7563864   -1.0616283   -0.4511446
Birth       MAL-ED          PERU                           (0%, 5%]             NA                -0.9031836   -1.0653117   -0.7410555
Birth       MAL-ED          PERU                           >5%                  NA                -0.9054884   -1.0571349   -0.7538420
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.5222222   -2.3091001   -0.7353443
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.2164706   -1.4939186   -0.9390226
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.8822581   -1.1471959   -0.6173203
Birth       NIH-Birth       BANGLADESH                     0%                   NA                -0.9860050   -1.2327104   -0.7392997
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -0.9320135   -1.0420866   -0.8219404
Birth       NIH-Birth       BANGLADESH                     >5%                  NA                -0.9178748   -1.0419366   -0.7938131
Birth       NIH-Crypto      BANGLADESH                     0%                   NA                -0.8449782   -1.0042478   -0.6857085
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.9113756   -1.0159904   -0.8067607
Birth       NIH-Crypto      BANGLADESH                     >5%                  NA                -0.9301107   -1.0461029   -0.8141184
Birth       PROVIDE         BANGLADESH                     0%                   NA                -0.9197854   -1.1123465   -0.7272243
Birth       PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.8663784   -0.9585339   -0.7742229
Birth       PROVIDE         BANGLADESH                     >5%                  NA                -0.8622910   -1.0256785   -0.6989036
6 months    CONTENT         PERU                           0%                   NA                -1.0567500   -1.4658384   -0.6476616
6 months    CONTENT         PERU                           (0%, 5%]             NA                -0.3029472   -0.4697708   -0.1361235
6 months    CONTENT         PERU                           >5%                  NA                -0.1570746   -0.3744579    0.0603086
6 months    Guatemala BSC   GUATEMALA                      0%                   NA                -1.5141816   -1.8717479   -1.1566152
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]             NA                -1.4283602   -1.6368243   -1.2198960
6 months    Guatemala BSC   GUATEMALA                      >5%                  NA                -1.6082015   -1.7472030   -1.4691999
6 months    JiVitA-4        BANGLADESH                     0%                   NA                -1.3833713   -1.5647553   -1.2019873
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]             NA                -1.3337926   -1.3747723   -1.2928129
6 months    JiVitA-4        BANGLADESH                     >5%                  NA                -1.4235962   -1.5116176   -1.3355748
6 months    MAL-ED          BANGLADESH                     0%                   NA                -0.9866667   -1.5612360   -0.4120973
6 months    MAL-ED          BANGLADESH                     (0%, 5%]             NA                -1.0936385   -1.2371707   -0.9501063
6 months    MAL-ED          BANGLADESH                     >5%                  NA                -1.3891039   -1.5904471   -1.1877608
6 months    MAL-ED          NEPAL                          0%                   NA                -0.2278907   -0.7639065    0.3081252
6 months    MAL-ED          NEPAL                          (0%, 5%]             NA                -0.6022396   -0.7392736   -0.4652056
6 months    MAL-ED          NEPAL                          >5%                  NA                -0.5026649   -0.7153810   -0.2899487
6 months    MAL-ED          PERU                           0%                   NA                -1.0700000   -1.6970711   -0.4429289
6 months    MAL-ED          PERU                           (0%, 5%]             NA                -1.3015443   -1.4624676   -1.1406211
6 months    MAL-ED          PERU                           >5%                  NA                -1.3503344   -1.4983707   -1.2022981
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.4750000   -2.4233687   -0.5266313
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.3915631   -1.5359143   -1.2472119
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -1.2868579   -1.5070055   -1.0667103
6 months    NIH-Birth       BANGLADESH                     0%                   NA                -1.7329754   -2.1256581   -1.3402927
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -1.3947063   -1.5085290   -1.2808835
6 months    NIH-Birth       BANGLADESH                     >5%                  NA                -1.4023452   -1.5478174   -1.2568731
6 months    NIH-Crypto      BANGLADESH                     0%                   NA                -1.1344562   -1.3613445   -0.9075678
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -1.2079238   -1.3211333   -1.0947144
6 months    NIH-Crypto      BANGLADESH                     >5%                  NA                -1.1885721   -1.2997142   -1.0774300
6 months    PROVIDE         BANGLADESH                     0%                   NA                -1.5534245   -2.0420487   -1.0648003
6 months    PROVIDE         BANGLADESH                     (0%, 5%]             NA                -1.0839837   -1.1721549   -0.9958124
6 months    PROVIDE         BANGLADESH                     >5%                  NA                -1.0815788   -1.2284482   -0.9347094
6 months    SAS-FoodSuppl   INDIA                          0%                   NA                -2.0081100   -2.2796293   -1.7365906
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                -1.7429952   -2.0547160   -1.4312744
6 months    SAS-FoodSuppl   INDIA                          >5%                  NA                -1.8842161   -2.0206914   -1.7477409
24 months   JiVitA-4        BANGLADESH                     0%                   NA                -1.7729517   -1.9784380   -1.5674653
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]             NA                -1.7701030   -1.8072839   -1.7329221
24 months   JiVitA-4        BANGLADESH                     >5%                  NA                -1.8723767   -1.9611045   -1.7836489
24 months   MAL-ED          BANGLADESH                     0%                   NA                -1.6983333   -2.1891875   -1.2074792
24 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                -1.9507308   -2.1166572   -1.7848043
24 months   MAL-ED          BANGLADESH                     >5%                  NA                -2.0478289   -2.2529623   -1.8426955
24 months   MAL-ED          NEPAL                          0%                   NA                -0.9043827   -1.4158104   -0.3929551
24 months   MAL-ED          NEPAL                          (0%, 5%]             NA                -1.3034860   -1.4537545   -1.1532175
24 months   MAL-ED          NEPAL                          >5%                  NA                -1.3503633   -1.5756489   -1.1250778
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -3.2400000   -4.2371443   -2.2428557
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -2.6175962   -2.7782509   -2.4569414
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -2.6608654   -2.9071887   -2.4145421
24 months   NIH-Birth       BANGLADESH                     0%                   NA                -1.6920000   -1.8179481   -1.5660519
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -2.2130914   -2.3480900   -2.0780928
24 months   NIH-Birth       BANGLADESH                     >5%                  NA                -2.2487126   -2.4051224   -2.0923029
24 months   NIH-Crypto      BANGLADESH                     0%                   NA                -1.4197813   -1.6238528   -1.2157098
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -1.4421355   -1.5823925   -1.3018785
24 months   NIH-Crypto      BANGLADESH                     >5%                  NA                -1.5864298   -1.7245601   -1.4482995
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
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]             0%                 0.0402568   -0.3624963    0.4430099
Birth       JiVitA-4        BANGLADESH                     >5%                  0%                -0.1049977   -0.5249442    0.3149488
Birth       MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.6677395    0.0862283    1.2492507
Birth       MAL-ED          BANGLADESH                     >5%                  0%                 0.3409221   -0.2615751    0.9434192
Birth       MAL-ED          INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          INDIA                          (0%, 5%]             0%                -0.3061818   -1.1170283    0.5046647
Birth       MAL-ED          INDIA                          >5%                  0%                -0.3480000   -1.3517812    0.6557812
Birth       MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          PERU                           (0%, 5%]             0%                -0.1467972   -0.4788391    0.1852448
Birth       MAL-ED          PERU                           >5%                  0%                -0.1491020   -0.4746464    0.1764424
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.3057516   -0.5286070    1.1401102
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.6399642   -0.1903183    1.4702466
Birth       NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.0539916   -0.2035003    0.3114835
Birth       NIH-Birth       BANGLADESH                     >5%                  0%                 0.0681302   -0.1969982    0.3332586
Birth       NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0663974   -0.2501000    0.1173051
Birth       NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0851325   -0.2760302    0.1057652
Birth       PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0534070   -0.1527848    0.2595988
Birth       PROVIDE         BANGLADESH                     >5%                  0%                 0.0574944   -0.1868821    0.3018708
6 months    CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    CONTENT         PERU                           (0%, 5%]             0%                 0.7538028    0.3120071    1.1955985
6 months    CONTENT         PERU                           >5%                  0%                 0.8996754    0.4364165    1.3629343
6 months    Guatemala BSC   GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]             0%                 0.0858214   -0.3278721    0.4995149
6 months    Guatemala BSC   GUATEMALA                      >5%                  0%                -0.0940199   -0.4779913    0.2899515
6 months    JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]             0%                 0.0495787   -0.1358738    0.2350313
6 months    JiVitA-4        BANGLADESH                     >5%                  0%                -0.0402249   -0.2439026    0.1634528
6 months    MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.1069718   -0.6991976    0.4852540
6 months    MAL-ED          BANGLADESH                     >5%                  0%                -0.4024373   -1.0112632    0.2063886
6 months    MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          NEPAL                          (0%, 5%]             0%                -0.3743489   -0.9280530    0.1793551
6 months    MAL-ED          NEPAL                          >5%                  0%                -0.2747742   -0.8525618    0.3030134
6 months    MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          PERU                           (0%, 5%]             0%                -0.2315443   -0.8789349    0.4158462
6 months    MAL-ED          PERU                           >5%                  0%                -0.2803344   -0.9246425    0.3639737
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0834369   -0.8758547    1.0427285
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1881421   -0.7854431    1.1617272
6 months    NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.3382691   -0.0699942    0.7465324
6 months    NIH-Birth       BANGLADESH                     >5%                  0%                 0.3306302   -0.0876761    0.7489365
6 months    NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0734676   -0.3268844    0.1799492
6 months    NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0541159   -0.3063807    0.1981489
6 months    PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.4694408   -0.0266386    0.9655203
6 months    PROVIDE         BANGLADESH                     >5%                  0%                 0.4718457   -0.0384008    0.9820922
6 months    SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                 0.2651148   -0.1481538    0.6783834
6 months    SAS-FoodSuppl   INDIA                          >5%                  0%                 0.1238939   -0.1801434    0.4279311
24 months   JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]             0%                 0.0028487   -0.2062125    0.2119098
24 months   JiVitA-4        BANGLADESH                     >5%                  0%                -0.0994251   -0.3169730    0.1181229
24 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.2523974   -0.7705377    0.2657429
24 months   MAL-ED          BANGLADESH                     >5%                  0%                -0.3494956   -0.8814895    0.1824983
24 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED          NEPAL                          (0%, 5%]             0%                -0.3991033   -0.9326297    0.1344231
24 months   MAL-ED          NEPAL                          >5%                  0%                -0.4459806   -1.0047291    0.1127679
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.6224038   -0.3875995    1.6324072
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.5791346   -0.4479836    1.6062529
24 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.5210914   -0.7057196   -0.3364632
24 months   NIH-Birth       BANGLADESH                     >5%                  0%                -0.5567126   -0.7575284   -0.3558969
24 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0223542   -0.2671503    0.2224420
24 months   NIH-Crypto      BANGLADESH                     >5%                  0%                -0.1666485   -0.4114609    0.0781639
24 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.3890253    0.0240060    0.7540446
24 months   PROVIDE         BANGLADESH                     >5%                  0%                 0.3545115   -0.0324820    0.7415049


### Parameter: PAR


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-4        BANGLADESH                     0%                   NA                 0.0229270   -0.3690316    0.4148857
Birth       MAL-ED          BANGLADESH                     0%                   NA                 0.5355321    0.0038084    1.0672557
Birth       MAL-ED          INDIA                          0%                   NA                -0.2816170   -0.9920768    0.4288428
Birth       MAL-ED          PERU                           0%                   NA                -0.1264033   -0.4128160    0.1600094
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.3666222   -0.3910641    1.1243085
Birth       NIH-Birth       BANGLADESH                     0%                   NA                 0.0546001   -0.1757199    0.2849200
Birth       NIH-Crypto      BANGLADESH                     0%                   NA                -0.0645164   -0.2049377    0.0759050
Birth       PROVIDE         BANGLADESH                     0%                   NA                 0.0346834   -0.1509028    0.2202695
6 months    CONTENT         PERU                           0%                   NA                 0.7782244    0.3595779    1.1968710
6 months    Guatemala BSC   GUATEMALA                      0%                   NA                -0.0477192   -0.3848139    0.2893755
6 months    JiVitA-4        BANGLADESH                     0%                   NA                 0.0385773   -0.1405833    0.2177379
6 months    MAL-ED          BANGLADESH                     0%                   NA                -0.2183264   -0.7904838    0.3538310
6 months    MAL-ED          NEPAL                          0%                   NA                -0.3336912   -0.8534693    0.1860868
6 months    MAL-ED          PERU                           0%                   NA                -0.2536661   -0.8739238    0.3665917
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.1062551   -0.8150201    1.0275302
6 months    NIH-Birth       BANGLADESH                     0%                   NA                 0.3255933   -0.0662268    0.7174135
6 months    NIH-Crypto      BANGLADESH                     0%                   NA                -0.0642221   -0.2756928    0.1472485
6 months    PROVIDE         BANGLADESH                     0%                   NA                 0.4617330   -0.0220191    0.9454851
6 months    SAS-FoodSuppl   INDIA                          0%                   NA                 0.1094258   -0.1328704    0.3517219
24 months   JiVitA-4        BANGLADESH                     0%                   NA                -0.0077701   -0.2087906    0.1932503
24 months   MAL-ED          BANGLADESH                     0%                   NA                -0.2800629   -0.7733515    0.2132257
24 months   MAL-ED          NEPAL                          0%                   NA                -0.4032050   -0.9057800    0.0993701
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.5944393   -0.3837281    1.5726066
24 months   NIH-Birth       BANGLADESH                     0%                   NA                -0.5270579   -0.6871036   -0.3670122
24 months   NIH-Crypto      BANGLADESH                     0%                   NA                -0.0214833   -0.2077481    0.1647815
24 months   PROVIDE         BANGLADESH                     0%                   NA                 0.3725779    0.0198694    0.7252863

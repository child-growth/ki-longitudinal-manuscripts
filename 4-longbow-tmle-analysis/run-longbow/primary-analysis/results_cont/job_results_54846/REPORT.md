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

agecat      studyid                    country                        perdiar24    n_cell      n  outcome_variable 
----------  -------------------------  -----------------------------  ----------  -------  -----  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%               14    215  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        127    215  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%              74    215  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         0%               34     62  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         26     62  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%               2     62  whz              
Birth       ki0047075b-MAL-ED          INDIA                          0%                5     45  whz              
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]         31     45  whz              
Birth       ki0047075b-MAL-ED          INDIA                          >5%               9     45  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          0%                2     26  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]         19     26  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          >5%               5     26  whz              
Birth       ki0047075b-MAL-ED          PERU                           0%               21    228  whz              
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]         87    228  whz              
Birth       ki0047075b-MAL-ED          PERU                           >5%             120    228  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%               42    112  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]         69    112  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    112  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                7    115  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         77    115  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              31    115  whz              
Birth       ki1000109-EE               PAKISTAN                       0%              115    177  whz              
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]         62    177  whz              
Birth       ki1000109-EE               PAKISTAN                       >5%               0    177  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%               46    572  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        327    572  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%             199    572  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%               55    532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        322    532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     >5%             155    532  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%              144    707  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        375    707  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%             188    707  whz              
Birth       ki1114097-CMIN             BANGLADESH                     0%                6     19  whz              
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]          3     19  whz              
Birth       ki1114097-CMIN             BANGLADESH                     >5%              10     19  whz              
Birth       ki1114097-CONTENT          PERU                           0%                0      2  whz              
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]          1      2  whz              
Birth       ki1114097-CONTENT          PERU                           >5%               1      2  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%               61   2396  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       2091   2396  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%             244   2396  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                6    241  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        142    241  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%              93    241  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         0%              106    209  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]        101    209  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         >5%               2    209  whz              
6 months    ki0047075b-MAL-ED          INDIA                          0%                3    236  whz              
6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]        191    236  whz              
6 months    ki0047075b-MAL-ED          INDIA                          >5%              42    236  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          0%               14    236  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        143    236  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          >5%              79    236  whz              
6 months    ki0047075b-MAL-ED          PERU                           0%                7    273  whz              
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]        109    273  whz              
6 months    ki0047075b-MAL-ED          PERU                           >5%             157    273  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%               78    254  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        174    254  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2    254  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9    247  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        177    247  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              61    247  whz              
6 months    ki1000109-EE               PAKISTAN                       0%              258    375  whz              
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]        117    375  whz              
6 months    ki1000109-EE               PAKISTAN                       >5%               0    375  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%               74    380  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         46    380  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%             260    380  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%               15    537  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        339    537  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%             183    537  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%               12    603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        408    603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%             183    603  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%              134    715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        386    715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%             195    715  whz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%               29    299  whz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         70    299  whz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%             200    299  whz              
6 months    ki1114097-CMIN             BANGLADESH                     0%                2    243  whz              
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]        111    243  whz              
6 months    ki1114097-CMIN             BANGLADESH                     >5%             130    243  whz              
6 months    ki1114097-CONTENT          PERU                           0%                6    215  whz              
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]        142    215  whz              
6 months    ki1114097-CONTENT          PERU                           >5%              67    215  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%              156   4833  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       4153   4833  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%             524   4833  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6    212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        130    212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              76    212  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         0%               76    169  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         91    169  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         >5%               2    169  whz              
24 months   ki0047075b-MAL-ED          INDIA                          0%                3    227  whz              
24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        183    227  whz              
24 months   ki0047075b-MAL-ED          INDIA                          >5%              41    227  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          0%               12    228  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        140    228  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          >5%              76    228  whz              
24 months   ki0047075b-MAL-ED          PERU                           0%                1    201  whz              
24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         84    201  whz              
24 months   ki0047075b-MAL-ED          PERU                           >5%             116    201  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               71    238  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        166    238  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    238  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    214  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        156    214  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              52    214  whz              
24 months   ki1000109-EE               PAKISTAN                       0%              116    168  whz              
24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]         52    168  whz              
24 months   ki1000109-EE               PAKISTAN                       >5%               0    168  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    428  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        278    428  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             145    428  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                9    579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        396    579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             174    579  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              123    514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        276    514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             115    514  whz              
24 months   ki1114097-CMIN             BANGLADESH                     0%                3    243  whz              
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]        114    243  whz              
24 months   ki1114097-CMIN             BANGLADESH                     >5%             126    243  whz              
24 months   ki1114097-CONTENT          PERU                           0%                4    164  whz              
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]        108    164  whz              
24 months   ki1114097-CONTENT          PERU                           >5%              52    164  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%              164   4735  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       4082   4735  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             489   4735  whz              


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
![](/tmp/943f529f-e519-49a7-b360-049dafe7445b/c12fd742-0510-4c87-bd78-7659dbada41a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/943f529f-e519-49a7-b360-049dafe7445b/c12fd742-0510-4c87-bd78-7659dbada41a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/943f529f-e519-49a7-b360-049dafe7445b/c12fd742-0510-4c87-bd78-7659dbada41a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.5498187   -1.1645658    0.0649283
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -1.0107128   -1.1932847   -0.8281408
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -0.8854839   -1.1499985   -0.6209694
Birth       ki0047075b-MAL-ED          INDIA                          0%                   NA                -0.8260000   -1.7120476    0.0600476
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]             NA                -1.0574194   -1.3366625   -0.7781762
Birth       ki0047075b-MAL-ED          INDIA                          >5%                  NA                -0.5611111   -1.3534381    0.2312159
Birth       ki0047075b-MAL-ED          PERU                           0%                   NA                 0.1150126   -0.3103954    0.5404206
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                 0.0169138   -0.1881715    0.2219991
Birth       ki0047075b-MAL-ED          PERU                           >5%                  NA                -0.1120021   -0.2909117    0.0669075
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.8928571    0.4313181    1.3543962
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.8712987    0.6273536    1.1152438
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.4625806    0.1300967    0.7950646
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -1.2720004   -1.5668851   -0.9771157
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -1.3474351   -1.4739576   -1.2209126
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -1.3773906   -1.5407417   -1.2140396
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -1.3048993   -1.5061160   -1.1036826
Birth       ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -1.2774918   -1.3722490   -1.1827346
Birth       ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -1.3490646   -1.5047413   -1.1933879
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -1.3663083   -1.5788431   -1.1537734
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -1.2158811   -1.3393320   -1.0924302
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -1.2359733   -1.3868926   -1.0850541
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.7976752   -1.1997299   -0.3956206
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -0.6821949   -0.7376672   -0.6267226
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -0.7145335   -0.8619247   -0.5671422
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.1833333   -0.5948965    0.9615632
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.1581455   -0.3337303    0.0174392
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -0.1271326   -0.3185947    0.0643295
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                 0.1367406   -0.5561929    0.8296740
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                 0.1055408   -0.0665195    0.2776012
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                  NA                 0.2232850    0.0096832    0.4368868
6 months    ki0047075b-MAL-ED          PERU                           0%                   NA                 0.8728571    0.1723061    1.5734082
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                 1.0295260    0.8447495    1.2143025
6 months    ki0047075b-MAL-ED          PERU                           >5%                  NA                 1.0771231    0.9121893    1.2420570
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.2427778   -0.7161220    1.2016775
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.5318644    0.3720281    0.6917007
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.5921585    0.3766024    0.8077146
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                -1.2303986   -1.6672681   -0.7935290
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                -0.7996460   -1.1428374   -0.4564545
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                -1.0568754   -1.2289853   -0.8847655
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.2340976   -0.5968148    0.1286195
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.4283435   -0.5454914   -0.3111956
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -0.5000045   -0.6515347   -0.3484742
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.2355935   -0.6092178    0.1380307
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.2324453   -0.3348655   -0.1300252
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -0.1150729   -0.2637117    0.0335659
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.2354672   -0.0239075    0.4948420
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.0221732   -0.1421991    0.0978527
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                 0.4092938    0.2578054    0.5607823
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                 0.1582706   -0.2417787    0.5583198
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             NA                -0.0849904   -0.3259587    0.1559779
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  NA                -0.1145308   -0.2460379    0.0169763
6 months    ki1114097-CONTENT          PERU                           0%                   NA                 1.4197500    0.8897030    1.9497970
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             NA                 1.0154953    0.8771516    1.1538390
6 months    ki1114097-CONTENT          PERU                           >5%                  NA                 1.1491642    0.9229924    1.3753360
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.2111333   -0.3852650   -0.0370016
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -0.3807649   -0.4196933   -0.3418366
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -0.5199873   -0.6176531   -0.4223215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.7608333   -1.7455859    0.2239193
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.8440769   -0.9945327   -0.6936211
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -0.7815132   -0.9897171   -0.5733093
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.1454977   -0.8061970    0.5152016
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.3675394   -0.5061343   -0.2289445
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -0.3905061   -0.5979775   -0.1830347
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.2433333   -0.4146176    0.9012843
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0989530   -0.0508664    0.2487724
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0994231   -0.3337823    0.1349362
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -1.1800000   -1.4547770   -0.9052230
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.9456415   -1.0692081   -0.8220748
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -0.8370172   -1.0005302   -0.6735043
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -1.0127778   -1.2883897   -0.7371658
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.9233081   -1.0226788   -0.8239373
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -0.8173851   -0.9715768   -0.6631933
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.6263977   -0.8860899   -0.3667056
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.6256545   -0.7724081   -0.4789009
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -0.5346598   -0.6825231   -0.3867965
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -1.2424763   -1.4201536   -1.0647990
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -1.2172599   -1.2500777   -1.1844421
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -1.2662938   -1.3588507   -1.1737369


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
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.4608940   -1.1027633    0.1809753
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.3356652   -1.0053176    0.3339872
Birth       ki0047075b-MAL-ED          INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]             0%                -0.2314194   -1.1604280    0.6975893
Birth       ki0047075b-MAL-ED          INDIA                          >5%                  0%                 0.2648889   -0.9237500    1.4535278
Birth       ki0047075b-MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]             0%                -0.0980988   -0.5724840    0.3762865
Birth       ki0047075b-MAL-ED          PERU                           >5%                  0%                -0.2270147   -0.6858742    0.2318449
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0215584   -0.5436001    0.5004833
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.4302765   -0.9991033    0.1385503
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                -0.0754346   -0.3958570    0.2449877
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                -0.1053902   -0.4420342    0.2312537
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0274075   -0.1908175    0.2456325
Birth       ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                -0.0441653   -0.2947572    0.2064266
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.1504272   -0.0919685    0.3928229
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                 0.1303349   -0.1272219    0.3878917
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                 0.1154804   -0.2874760    0.5184367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                 0.0831418   -0.3434583    0.5097419
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.3414789   -1.1392706    0.4563129
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.3104659   -1.1119018    0.4909699
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0311997   -0.7454303    0.6830308
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                  0%                 0.0865444   -0.6361421    0.8092310
6 months    ki0047075b-MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             0%                 0.1566689   -0.5678407    0.8811784
6 months    ki0047075b-MAL-ED          PERU                           >5%                  0%                 0.2042660   -0.5154387    0.9239707
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.2890866   -0.6830432    1.2612164
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.3493807   -0.6334485    1.3322099
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                 0.4307526   -0.1246219    0.9861271
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0%                 0.1735232   -0.2953986    0.6424449
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                -0.1942459   -0.5753528    0.1868611
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                -0.2659068   -0.6590948    0.1272812
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0031482   -0.3841893    0.3904857
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.1205206   -0.2808520    0.5218932
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.2576405   -0.5423141    0.0270331
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                 0.1738266   -0.1256932    0.4733463
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             0%                -0.2432609   -0.7105972    0.2240753
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  0%                -0.2728014   -0.6932855    0.1476828
6 months    ki1114097-CONTENT          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             0%                -0.4042547   -0.9520583    0.1435489
6 months    ki1114097-CONTENT          PERU                           >5%                  0%                -0.2705858   -0.8468700    0.3056984
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                -0.1696316   -0.3446909    0.0054276
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.3088540   -0.5035687   -0.1141394
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0832436   -1.0794236    0.9129364
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.0206798   -1.0272018    0.9858422
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.2220417   -0.8973239    0.4532405
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.2450084   -0.9375344    0.4475176
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
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.0007432   -0.2946951    0.2961815
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0917379   -0.2049564    0.3884323
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                 0.0252164   -0.1528289    0.2032616
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.0238175   -0.2213085    0.1736734


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.3920417   -0.9871635    0.2030800
Birth       ki0047075b-MAL-ED          INDIA                          0%                   NA                -0.1064444   -0.9346255    0.7217366
Birth       ki0047075b-MAL-ED          PERU                           0%                   NA                -0.1670301   -0.5843768    0.2503166
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1304224   -0.6033978    0.3425531
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.0805433   -0.3670990    0.2060124
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.0064407   -0.1872399    0.2001212
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.1221569   -0.0704778    0.3147916
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.1090484   -0.2835441    0.5016408
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.3210097   -1.0903899    0.4483705
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0263098   -0.6913133    0.6386938
6 months    ki0047075b-MAL-ED          PERU                           0%                   NA                 0.1800244   -0.5130743    0.8731232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.2934435   -0.6391424    1.2260295
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                 0.2182407   -0.2177582    0.6542395
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.2133061   -0.5779200    0.1513077
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.0365029   -0.3374611    0.4104668
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.2057050   -0.4515502    0.0401402
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                -0.2422839   -0.6200249    0.1354570
6 months    ki1114097-CONTENT          PERU                           0%                   NA                -0.3513182   -0.8794617    0.1768252
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.1786722   -0.3475964   -0.0097480
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.0584591   -1.0226814    0.9057631
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.2294146   -0.8681866    0.4093575
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1885358   -0.8399063    0.4628347
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.2684210   -0.0167391    0.5535810
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.1199108   -0.1611490    0.4009705
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.0160475   -0.2131137    0.2452088
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.0193675   -0.1521428    0.1908778

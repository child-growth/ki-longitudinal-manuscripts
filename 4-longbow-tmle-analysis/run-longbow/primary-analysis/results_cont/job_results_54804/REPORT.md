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

agecat      studyid                    country                        perdiar24    n_cell      n  outcome_variable 
----------  -------------------------  -----------------------------  ----------  -------  -----  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%               18    231  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        131    231  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%              82    231  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         0%               34     65  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         29     65  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%               2     65  haz              
Birth       ki0047075b-MAL-ED          INDIA                          0%                5     47  haz              
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]         33     47  haz              
Birth       ki0047075b-MAL-ED          INDIA                          >5%               9     47  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          0%                2     27  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]         19     27  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          >5%               6     27  haz              
Birth       ki0047075b-MAL-ED          PERU                           0%               21    233  haz              
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]         89    233  haz              
Birth       ki0047075b-MAL-ED          PERU                           >5%             123    233  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%               42    113  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]         70    113  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    113  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9    125  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         85    125  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              31    125  haz              
Birth       ki1000109-EE               PAKISTAN                       0%              161    240  haz              
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]         79    240  haz              
Birth       ki1000109-EE               PAKISTAN                       >5%               0    240  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%               51    605  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        345    605  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%             209    605  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%               55    539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        327    539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     >5%             157    539  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%              151    732  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        386    732  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%             195    732  haz              
Birth       ki1114097-CMIN             BANGLADESH                     0%               12     26  haz              
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]          4     26  haz              
Birth       ki1114097-CMIN             BANGLADESH                     >5%              10     26  haz              
Birth       ki1114097-CONTENT          PERU                           0%                0      2  haz              
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]          1      2  haz              
Birth       ki1114097-CONTENT          PERU                           >5%               1      2  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%               76   2823  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       2449   2823  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%             298   2823  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                6    241  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        142    241  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%              93    241  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         0%              106    209  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]        101    209  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         >5%               2    209  haz              
6 months    ki0047075b-MAL-ED          INDIA                          0%                3    236  haz              
6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]        191    236  haz              
6 months    ki0047075b-MAL-ED          INDIA                          >5%              42    236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          0%               14    236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        143    236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          >5%              79    236  haz              
6 months    ki0047075b-MAL-ED          PERU                           0%                7    273  haz              
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]        109    273  haz              
6 months    ki0047075b-MAL-ED          PERU                           >5%             157    273  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%               78    254  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        174    254  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2    254  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9    247  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        177    247  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              61    247  haz              
6 months    ki1000109-EE               PAKISTAN                       0%              256    373  haz              
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]        117    373  haz              
6 months    ki1000109-EE               PAKISTAN                       >5%               0    373  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%               73    380  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         46    380  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%             261    380  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%               15    537  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        339    537  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%             183    537  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%               12    604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        409    604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%             183    604  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%              134    715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        386    715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%             195    715  haz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%               29    299  haz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         70    299  haz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%             200    299  haz              
6 months    ki1114097-CMIN             BANGLADESH                     0%                2    243  haz              
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]        112    243  haz              
6 months    ki1114097-CMIN             BANGLADESH                     >5%             129    243  haz              
6 months    ki1114097-CONTENT          PERU                           0%                6    215  haz              
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]        142    215  haz              
6 months    ki1114097-CONTENT          PERU                           >5%              67    215  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%              156   4831  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       4153   4831  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%             522   4831  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6    212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        130    212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              76    212  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         0%               76    169  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         91    169  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         >5%               2    169  haz              
24 months   ki0047075b-MAL-ED          INDIA                          0%                3    227  haz              
24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        183    227  haz              
24 months   ki0047075b-MAL-ED          INDIA                          >5%              41    227  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          0%               12    228  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        140    228  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          >5%              76    228  haz              
24 months   ki0047075b-MAL-ED          PERU                           0%                1    201  haz              
24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         84    201  haz              
24 months   ki0047075b-MAL-ED          PERU                           >5%             116    201  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               71    238  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        166    238  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    238  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    214  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        156    214  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              52    214  haz              
24 months   ki1000109-EE               PAKISTAN                       0%              115    167  haz              
24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]         52    167  haz              
24 months   ki1000109-EE               PAKISTAN                       >5%               0    167  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    429  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        279    429  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             145    429  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                9    578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        395    578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             174    578  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              123    514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        276    514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             115    514  haz              
24 months   ki1114097-CMIN             BANGLADESH                     0%                3    242  haz              
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]        114    242  haz              
24 months   ki1114097-CMIN             BANGLADESH                     >5%             125    242  haz              
24 months   ki1114097-CONTENT          PERU                           0%                4    164  haz              
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]        108    164  haz              
24 months   ki1114097-CONTENT          PERU                           >5%              52    164  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%              165   4752  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       4094   4752  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             493   4752  haz              


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
![](/tmp/c9ebbfee-f5fd-4f66-9bde-c70746252695/85bbd434-ccd6-40d4-9b61-2551530ad2b4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c9ebbfee-f5fd-4f66-9bde-c70746252695/85bbd434-ccd6-40d4-9b61-2551530ad2b4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c9ebbfee-f5fd-4f66-9bde-c70746252695/85bbd434-ccd6-40d4-9b61-2551530ad2b4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -1.0283484   -1.5614257   -0.4952712
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.9534487   -1.1235552   -0.7833422
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -1.2442049   -1.4733128   -1.0150971
Birth       ki0047075b-MAL-ED          INDIA                          0%                   NA                -0.9220000   -1.6509223   -0.1930777
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]             NA                -1.2281818   -1.5833498   -0.8730139
Birth       ki0047075b-MAL-ED          INDIA                          >5%                  NA                -1.2700000   -1.9601079   -0.5798921
Birth       ki0047075b-MAL-ED          PERU                           0%                   NA                -0.7482577   -1.0644436   -0.4320719
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                -0.8923494   -1.0614504   -0.7232485
Birth       ki0047075b-MAL-ED          PERU                           >5%                  NA                -0.8979489   -1.0487248   -0.7471731
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.5222222   -2.3091001   -0.7353443
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.2164706   -1.4939186   -0.9390226
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.8822581   -1.1471959   -0.6173203
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.9549556   -1.2044235   -0.7054877
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.9362178   -1.0439540   -0.8284816
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -0.9060090   -1.0291211   -0.7828970
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.9033659   -1.0932021   -0.7135297
Birth       ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.8850997   -0.9761310   -0.7940684
Birth       ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -0.8600263   -1.0064261   -0.7136266
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.8713620   -1.0365482   -0.7061758
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.9136992   -1.0274930   -0.7999053
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -0.8405896   -0.9681490   -0.7130303
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -1.5684961   -1.9777340   -1.1592581
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -1.5036038   -1.5565245   -1.4506831
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -1.6629695   -1.7934854   -1.5324537
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.9866667   -1.5612360   -0.4120973
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -1.0936385   -1.2371707   -0.9501063
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -1.3891039   -1.5904471   -1.1877608
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.3561640   -0.8426112    0.1302831
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.6099037   -0.7469283   -0.4728790
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -0.5217257   -0.7319803   -0.3114711
6 months    ki0047075b-MAL-ED          PERU                           0%                   NA                -1.0700000   -1.6970711   -0.4429289
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                -1.3015443   -1.4624676   -1.1406211
6 months    ki0047075b-MAL-ED          PERU                           >5%                  NA                -1.3503344   -1.4983707   -1.2022981
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.4750000   -2.4233687   -0.5266313
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.3915631   -1.5359143   -1.2472119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -1.2868579   -1.5070055   -1.0667103
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                -1.8517000   -2.0649930   -1.6384070
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                -1.6680545   -1.9621026   -1.3740065
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                -1.8626091   -2.0247262   -1.7004920
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -1.6532902   -2.0530118   -1.2535686
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -1.4000712   -1.5138118   -1.2863305
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -1.3977154   -1.5449780   -1.2504529
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -1.5862957   -2.0159309   -1.1566605
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -1.0830287   -1.1712798   -0.9947777
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -1.0749852   -1.2190249   -0.9309455
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -1.1728935   -1.4338464   -0.9119406
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -1.2015251   -1.3190063   -1.0840439
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -1.1381552   -1.2570180   -1.0192924
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                -1.5586336   -1.9512484   -1.1660189
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             NA                -1.4390442   -1.6676941   -1.2103944
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  NA                -1.6163803   -1.7526262   -1.4801344
6 months    ki1114097-CONTENT          PERU                           0%                   NA                -1.0984167   -2.1224703   -0.0743631
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             NA                -0.3610399   -0.5741415   -0.1479383
6 months    ki1114097-CONTENT          PERU                           >5%                  NA                -0.1438060   -0.4445075    0.1568956
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -1.3624264   -1.5470791   -1.1777737
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -1.3319963   -1.3728376   -1.2911549
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -1.4401216   -1.5288349   -1.3514084
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -1.6983333   -2.1891875   -1.2074792
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -1.9507308   -2.1166572   -1.7848043
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -2.0478289   -2.2529623   -1.8426955
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -1.2984925   -1.7223519   -0.8746332
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -1.3197054   -1.4690143   -1.1703965
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -1.3676628   -1.5876017   -1.1477239
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -3.2400000   -4.2371443   -2.2428557
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -2.6175962   -2.7782509   -2.4569414
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -2.6608654   -2.9071887   -2.4145421
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -1.6920000   -1.8179481   -1.5660519
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -2.2130914   -2.3480900   -2.0780928
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -2.2487126   -2.4051224   -2.0923029
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -1.9750000   -2.3266294   -1.6233706
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -1.5859747   -1.6839331   -1.4880162
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -1.6204885   -1.7821075   -1.4588695
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -1.4302054   -1.6440446   -1.2163662
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -1.4349059   -1.5787766   -1.2910352
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -1.5774738   -1.7246453   -1.4303024
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -1.7649783   -1.9776432   -1.5523133
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -1.7662530   -1.8035608   -1.7289452
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -1.9045303   -1.9941264   -1.8149341


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1180952   -1.2525408   -0.9836496
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2036170   -1.4976814   -0.9095527
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1556000   -1.3655361   -0.9456639
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9314050   -1.0202164   -0.8425936
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5232908   -1.5723277   -1.4742539
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3236661   -1.4316775   -1.2156546
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5619008   -1.6727702   -1.4510313
6 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.3139217   -0.4868486   -0.1409948
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7807218   -1.8162478   -1.7451958


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0748997   -0.4841501    0.6339495
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.2158565   -0.7959163    0.3642033
Birth       ki0047075b-MAL-ED          INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]             0%                -0.3061818   -1.1170283    0.5046647
Birth       ki0047075b-MAL-ED          INDIA                          >5%                  0%                -0.3480000   -1.3517812    0.6557812
Birth       ki0047075b-MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]             0%                -0.1440917   -0.4895488    0.2013654
Birth       ki0047075b-MAL-ED          PERU                           >5%                  0%                -0.1496912   -0.4857173    0.1863348
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.3057516   -0.5286070    1.1401102
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.6399642   -0.1903183    1.4702466
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                 0.0187378   -0.2403636    0.2778392
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                 0.0489466   -0.2177056    0.3155988
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0182662   -0.1854702    0.2220026
Birth       ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.0433395   -0.1894330    0.2761121
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0423371   -0.2363002    0.1516260
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0307724   -0.1720110    0.2335559
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                 0.0648923   -0.3486638    0.4784484
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.0944735   -0.5233238    0.3343769
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.1069718   -0.6991976    0.4852540
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.4024373   -1.0112632    0.2063886
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.2537396   -0.7593507    0.2518715
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.1655617   -0.6953896    0.3642663
6 months    ki0047075b-MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             0%                -0.2315443   -0.8789349    0.4158462
6 months    ki0047075b-MAL-ED          PERU                           >5%                  0%                -0.2803344   -0.9246425    0.3639737
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0834369   -0.8758547    1.0427285
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1881421   -0.7854431    1.1617272
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                 0.1836455   -0.1800918    0.5473827
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0%                -0.0109091   -0.2797695    0.2579513
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                 0.2532190   -0.1628327    0.6692708
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                 0.2555748   -0.1702656    0.6814151
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.5032670    0.0646420    0.9418919
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.5113105    0.0581217    0.9644994
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0286316   -0.3150277    0.2577644
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0347383   -0.2517162    0.3211927
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             0%                 0.1195894   -0.3349148    0.5740937
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  0%                -0.0577466   -0.4734698    0.3579765
6 months    ki1114097-CONTENT          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             0%                 0.7373768   -0.3086147    1.7833682
6 months    ki1114097-CONTENT          PERU                           >5%                  0%                 0.9546107   -0.1126790    2.0219003
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                 0.0304301   -0.1578539    0.2187141
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.0776953   -0.2848962    0.1295057
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.2523974   -0.7705377    0.2657429
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.3494956   -0.8814895    0.1824983
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0212129   -0.4701373    0.4277115
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.0691703   -0.5454679    0.4071273
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.6224038   -0.3875995    1.6324072
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.5791346   -0.4479836    1.6062529
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                -0.5210914   -0.7057196   -0.3364632
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                -0.5567126   -0.7575284   -0.3558969
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.3890253    0.0240060    0.7540446
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.3545115   -0.0324820    0.7415049
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0047006   -0.2612819    0.2518808
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.1472685   -0.4065350    0.1119981
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                -0.0012747   -0.2178490    0.2152996
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.1395520   -0.3656497    0.0865458


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.0897468   -0.6015266    0.4220330
Birth       ki0047075b-MAL-ED          INDIA                          0%                   NA                -0.2816170   -0.9920768    0.4288428
Birth       ki0047075b-MAL-ED          PERU                           0%                   NA                -0.1345320   -0.4317762    0.1627122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.3666222   -0.3910641    1.1243085
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.0235507   -0.2095875    0.2566888
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.0182638   -0.1645538    0.2010815
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0381325   -0.1870230    0.1107580
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.0452052   -0.3575930    0.4480035
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.2183264   -0.7904838    0.3538310
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.2054179   -0.6758522    0.2650164
6 months    ki0047075b-MAL-ED          PERU                           0%                   NA                -0.2536661   -0.8739238    0.3665917
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.1062551   -0.8150201    1.0275302
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                -0.0469842   -0.2687281    0.1747597
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.2459081   -0.1537305    0.6455468
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.4946042    0.0690531    0.9201553
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0257849   -0.2726971    0.2211274
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                -0.0032671   -0.3767966    0.3702623
6 months    ki1114097-CONTENT          PERU                           0%                   NA                 0.7844950   -0.2254843    1.7944743
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.0176323   -0.1643280    0.1995927
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.2800629   -0.7733515    0.2132257
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0090952   -0.4269253    0.4087349
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.5944393   -0.3837281    1.5726066
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.5270579   -0.6871036   -0.3670122
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.3725779    0.0198694    0.7252863
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0110592   -0.2071165    0.1849980
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0157435   -0.2239800    0.1924930

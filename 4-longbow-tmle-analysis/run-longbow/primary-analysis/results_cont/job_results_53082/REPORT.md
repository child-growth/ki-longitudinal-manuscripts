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

agecat      studyid                    country                        perdiar24    n_cell      n
----------  -------------------------  -----------------------------  ----------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%               18    231
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        131    231
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%              82    231
Birth       ki0047075b-MAL-ED          BRAZIL                         0%               34     65
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         29     65
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%               2     65
Birth       ki0047075b-MAL-ED          INDIA                          0%                5     47
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]         33     47
Birth       ki0047075b-MAL-ED          INDIA                          >5%               9     47
Birth       ki0047075b-MAL-ED          NEPAL                          0%                2     27
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]         19     27
Birth       ki0047075b-MAL-ED          NEPAL                          >5%               6     27
Birth       ki0047075b-MAL-ED          PERU                           0%               21    233
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]         89    233
Birth       ki0047075b-MAL-ED          PERU                           >5%             123    233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%               42    113
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]         70    113
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9    125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         85    125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              31    125
Birth       ki1000109-EE               PAKISTAN                       0%              161    240
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]         79    240
Birth       ki1000109-EE               PAKISTAN                       >5%               0    240
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%               51    605
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        345    605
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%             209    605
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%               55    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        327    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     >5%             157    539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%              151    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        386    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%             195    732
Birth       ki1114097-CMIN             BANGLADESH                     0%               12     26
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]          4     26
Birth       ki1114097-CMIN             BANGLADESH                     >5%              10     26
Birth       ki1114097-CONTENT          PERU                           0%                0      2
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]          1      2
Birth       ki1114097-CONTENT          PERU                           >5%               1      2
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%               76   2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       2449   2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%             298   2823
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
6 months    ki1000109-EE               PAKISTAN                       0%              256    373
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]        117    373
6 months    ki1000109-EE               PAKISTAN                       >5%               0    373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%               73    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         46    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%             261    380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%               15    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        339    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%             183    537
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%               12    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        409    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%             183    604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%              134    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        386    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%             195    715
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%               29    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         70    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%             200    299
6 months    ki1114097-CMIN             BANGLADESH                     0%                2    243
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]        112    243
6 months    ki1114097-CMIN             BANGLADESH                     >5%             129    243
6 months    ki1114097-CONTENT          PERU                           0%                6    215
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]        142    215
6 months    ki1114097-CONTENT          PERU                           >5%              67    215
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%              156   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       4153   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%             522   4831
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
24 months   ki1000109-EE               PAKISTAN                       0%              115    167
24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]         52    167
24 months   ki1000109-EE               PAKISTAN                       >5%               0    167
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        279    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             145    429
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                9    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        395    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             174    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              123    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        276    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             115    514
24 months   ki1114097-CMIN             BANGLADESH                     0%                3    242
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]        114    242
24 months   ki1114097-CMIN             BANGLADESH                     >5%             125    242
24 months   ki1114097-CONTENT          PERU                           0%                4    164
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]        108    164
24 months   ki1114097-CONTENT          PERU                           >5%              52    164
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%              165   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       4094   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             493   4752


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
![](/tmp/bca13474-1b15-4dd8-abbc-2476794c5260/83ad391e-f061-405b-aadc-847d1906a041/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/bca13474-1b15-4dd8-abbc-2476794c5260/83ad391e-f061-405b-aadc-847d1906a041/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/bca13474-1b15-4dd8-abbc-2476794c5260/83ad391e-f061-405b-aadc-847d1906a041/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -1.4430653   -1.9915562   -0.8945744
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.9571172   -1.1268467   -0.7873877
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -1.2543383   -1.4851150   -1.0235615
Birth       ki0047075b-MAL-ED          INDIA                          0%                   NA                -0.9220000   -1.6509223   -0.1930777
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]             NA                -1.2281818   -1.5833498   -0.8730139
Birth       ki0047075b-MAL-ED          INDIA                          >5%                  NA                -1.2700000   -1.9601079   -0.5798921
Birth       ki0047075b-MAL-ED          PERU                           0%                   NA                -0.7801957   -1.0678087   -0.4925827
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                -0.8916370   -1.0643473   -0.7189268
Birth       ki0047075b-MAL-ED          PERU                           >5%                  NA                -0.8990223   -1.0475959   -0.7504488
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.5222222   -2.3091001   -0.7353443
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.2164706   -1.4939186   -0.9390226
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.8822581   -1.1471959   -0.6173203
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.9340889   -1.1862419   -0.6819360
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.9305142   -1.0385803   -0.8224481
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -0.9046945   -1.0269378   -0.7824513
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.9598370   -1.1383791   -0.7812949
Birth       ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.8797279   -0.9711106   -0.7883453
Birth       ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -0.8714362   -1.0093462   -0.7335262
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.8455307   -1.0181192   -0.6729423
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.9213590   -1.0305657   -0.8121524
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -0.8708469   -0.9950626   -0.7466312
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -1.5632085   -1.9549170   -1.1715001
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -1.5031843   -1.5561069   -1.4502617
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -1.6639576   -1.7928314   -1.5350839
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.9866667   -1.5612360   -0.4120973
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -1.0940728   -1.2377770   -0.9503685
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -1.3897312   -1.5914982   -1.1879641
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.3426281   -0.9400032    0.2547470
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.6083368   -0.7456637   -0.4710099
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -0.5080318   -0.7212686   -0.2947950
6 months    ki0047075b-MAL-ED          PERU                           0%                   NA                -1.0700000   -1.6970711   -0.4429289
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                -1.3052752   -1.4678559   -1.1426946
6 months    ki0047075b-MAL-ED          PERU                           >5%                  NA                -1.3554459   -1.5031027   -1.2077890
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.4750000   -2.4233687   -0.5266313
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.3915631   -1.5359143   -1.2472119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -1.2868579   -1.5070055   -1.0667103
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                -1.8324910   -2.0762765   -1.5887054
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                -1.5606343   -1.8315548   -1.2897138
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                -1.8753488   -2.0349146   -1.7157829
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -1.7473800   -2.1220989   -1.3726611
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -1.3998691   -1.5136786   -1.2860596
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -1.3942663   -1.5420056   -1.2465270
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -1.5746406   -2.0101415   -1.1391397
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -1.0830337   -1.1711965   -0.9948709
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -1.0691924   -1.2138733   -0.9245116
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -1.1607748   -1.4056998   -0.9158498
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -1.1943629   -1.3098156   -1.0789102
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -1.1587801   -1.2732377   -1.0443225
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                -1.6343045   -2.0469852   -1.2216238
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             NA                -1.4032822   -1.6285169   -1.1780476
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  NA                -1.6153045   -1.7525291   -1.4780799
6 months    ki1114097-CONTENT          PERU                           0%                   NA                -1.0984167   -2.1224703   -0.0743631
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             NA                -0.3610399   -0.5741415   -0.1479383
6 months    ki1114097-CONTENT          PERU                           >5%                  NA                -0.1438060   -0.4445075    0.1568956
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -1.3841133   -1.5668700   -1.2013567
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -1.3321268   -1.3729609   -1.2912927
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -1.4378173   -1.5275871   -1.3480476
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -1.6983333   -2.1891875   -1.2074792
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -1.9508077   -2.1168235   -1.7847919
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -2.0491447   -2.2540116   -1.8442779
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -1.1274512   -1.6042759   -0.6506265
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -1.3175901   -1.4665369   -1.1686433
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -1.3690968   -1.5911397   -1.1470538
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -3.2400000   -4.2371443   -2.2428557
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -2.6170513   -2.7775515   -2.4565510
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -2.6608654   -2.9071887   -2.4145421
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -1.6920000   -1.8179481   -1.5660519
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -2.2130914   -2.3480900   -2.0780928
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -2.2487126   -2.4051224   -2.0923029
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -1.9750000   -2.3266294   -1.6233706
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -1.5859747   -1.6839331   -1.4880162
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -1.6204885   -1.7821075   -1.4588695
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -1.4045158   -1.6525638   -1.1564679
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -1.4382886   -1.5759848   -1.3005923
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -1.6030105   -1.7445700   -1.4614509
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -1.7692943   -1.9810553   -1.5575333
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -1.7659785   -1.8032630   -1.7286940
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -1.9049401   -1.9952599   -1.8146202


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
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2054910   -1.3228953   -1.0880867
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3280952   -1.4363364   -1.2198541
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5619008   -1.6727702   -1.4510313
6 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.3139217   -0.4868486   -0.1409948
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3118640   -1.4315132   -1.1922149
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6451636   -2.7802323   -2.5100948
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7807218   -1.8162478   -1.7451958


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.4859481   -0.0876885    1.0595847
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                 0.1887270   -0.4075289    0.7849830
Birth       ki0047075b-MAL-ED          INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]             0%                -0.3061818   -1.1170283    0.5046647
Birth       ki0047075b-MAL-ED          INDIA                          >5%                  0%                -0.3480000   -1.3517812    0.6557812
Birth       ki0047075b-MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]             0%                -0.1114414   -0.4328733    0.2099906
Birth       ki0047075b-MAL-ED          PERU                           >5%                  0%                -0.1188267   -0.4280147    0.1903614
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.3057516   -0.5286070    1.1401102
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.6399642   -0.1903183    1.4702466
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                 0.0035747   -0.2575443    0.2646938
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                 0.0293944   -0.2393066    0.2980954
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0801091   -0.1126925    0.2729106
Birth       ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.0884008   -0.1290733    0.3058749
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0758283   -0.2738300    0.1221735
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0253161   -0.2323474    0.1817152
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                 0.0600242   -0.3364070    0.4564554
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.1007491   -0.5130399    0.3115416
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.1074061   -0.6996736    0.4848614
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.4030645   -1.0120307    0.2059017
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.2657087   -0.8788687    0.3474513
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.1654037   -0.7998589    0.4690516
6 months    ki0047075b-MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             0%                -0.2352752   -0.8830797    0.4125293
6 months    ki0047075b-MAL-ED          PERU                           >5%                  0%                -0.2854459   -0.9296669    0.3587752
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0834369   -0.8758547    1.0427285
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1881421   -0.7854431    1.1617272
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                 0.2718567   -0.0933554    0.6370688
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0%                -0.0428578   -0.3354486    0.2497329
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                 0.3475109   -0.0443415    0.7393633
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                 0.3531137   -0.0495989    0.7558264
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.4916069    0.0472438    0.9359701
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.5054482    0.0467070    0.9641894
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0335881   -0.3036195    0.2364432
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0019947   -0.2670111    0.2710005
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             0%                 0.2310223   -0.2362356    0.6982801
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  0%                 0.0190000   -0.4158033    0.4538034
6 months    ki1114097-CONTENT          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             0%                 0.7373768   -0.3086147    1.7833682
6 months    ki1114097-CONTENT          PERU                           >5%                  0%                 0.9546107   -0.1126790    2.0219003
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                 0.0519865   -0.1345462    0.2385193
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.0537040   -0.2592592    0.1518512
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.2524744   -0.7706433    0.2656946
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.3508114   -0.8827026    0.1810798
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.1901389   -0.6898887    0.3096108
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.2416456   -0.7671726    0.2838815
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.6229487   -0.3870300    1.6329275
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.5791346   -0.4479836    1.6062529
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                -0.5210914   -0.7057196   -0.3364632
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                -0.5567126   -0.7575284   -0.3558969
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.3890253    0.0240060    0.7540446
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.3545115   -0.0324820    0.7415049
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0337727   -0.3153293    0.2477838
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.1984946   -0.4836610    0.0866718
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                 0.0033157   -0.2123026    0.2189341
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.1356458   -0.3611282    0.0898366


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.3249701   -0.1977737    0.8477138
Birth       ki0047075b-MAL-ED          INDIA                          0%                   NA                -0.2816170   -0.9920768    0.4288428
Birth       ki0047075b-MAL-ED          PERU                           0%                   NA                -0.1025940   -0.3739154    0.1687273
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.3666222   -0.3910641    1.1243085
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.0026840   -0.2326922    0.2380602
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.0747350   -0.0967645    0.2462345
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0639638   -0.2195595    0.0916320
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.0399177   -0.3457930    0.4256284
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.2188243   -0.7910194    0.3533707
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.2184312   -0.7974623    0.3606000
6 months    ki0047075b-MAL-ED          PERU                           0%                   NA                -0.2580952   -0.8783930    0.3622025
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.1062551   -0.8150201    1.0275302
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                -0.0661932   -0.3169119    0.1845254
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.3399979   -0.0352032    0.7151991
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.4829491    0.0516395    0.9142587
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0379035   -0.2685432    0.1927362
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                 0.0724037   -0.3207067    0.4655142
6 months    ki1114097-CONTENT          PERU                           0%                   NA                 0.7844950   -0.2254843    1.7944743
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.0393193   -0.1408688    0.2195074
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.2805818   -0.7738686    0.2127051
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.1844128   -0.6534168    0.2845911
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.5948364   -0.3833176    1.5729905
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.5270579   -0.6871036   -0.3670122
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.3725779    0.0198694    0.7252863
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0367487   -0.2690295    0.1955320
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0114275   -0.2187527    0.1958977

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
![](/tmp/e571ac38-7137-47bf-a453-82d29f670f5c/4d13104e-bae9-48eb-b295-e1796b102769/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e571ac38-7137-47bf-a453-82d29f670f5c/4d13104e-bae9-48eb-b295-e1796b102769/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e571ac38-7137-47bf-a453-82d29f670f5c/4d13104e-bae9-48eb-b295-e1796b102769/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -1.6213450   -2.1981932   -1.0444969
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.9686363   -1.1378094   -0.7994632
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -1.2935446   -1.5234208   -1.0636683
Birth       ki0047075b-MAL-ED          INDIA                          0%                   NA                -0.9220000   -1.6509223   -0.1930777
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]             NA                -1.2281818   -1.5833498   -0.8730139
Birth       ki0047075b-MAL-ED          INDIA                          >5%                  NA                -1.2700000   -1.9601079   -0.5798921
Birth       ki0047075b-MAL-ED          PERU                           0%                   NA                -0.7690649   -1.1287981   -0.4093316
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                -0.8887624   -1.0562428   -0.7212820
Birth       ki0047075b-MAL-ED          PERU                           >5%                  NA                -0.8972765   -1.0460503   -0.7485027
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.5222222   -2.3091001   -0.7353443
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.2164706   -1.4939186   -0.9390226
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.8822581   -1.1471959   -0.6173203
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.9141278   -1.1716563   -0.6565994
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.9347492   -1.0425550   -0.8269434
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -0.9094889   -1.0321144   -0.7868634
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.9508128   -1.1268897   -0.7747359
Birth       ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.8844362   -0.9756399   -0.7932325
Birth       ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -0.8572691   -1.0023304   -0.7122077
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.9133031   -1.0869787   -0.7396274
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.9154898   -1.0281785   -0.8028012
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -0.9220368   -1.0412623   -0.8028112
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -1.5979150   -2.0006131   -1.1952168
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -1.5044835   -1.5574292   -1.4515377
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -1.6581445   -1.7916627   -1.5246263
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.9866667   -1.5612360   -0.4120973
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -1.0936385   -1.2371707   -0.9501063
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -1.3891039   -1.5904471   -1.1877608
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.2753840   -0.8818481    0.3310800
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.5971411   -0.7352462   -0.4590360
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -0.5061546   -0.7207670   -0.2915423
6 months    ki0047075b-MAL-ED          PERU                           0%                   NA                -1.0700000   -1.6970711   -0.4429289
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                -1.3015443   -1.4624676   -1.1406211
6 months    ki0047075b-MAL-ED          PERU                           >5%                  NA                -1.3503344   -1.4983707   -1.2022981
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.4750000   -2.4233687   -0.5266313
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.3915631   -1.5359143   -1.2472119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -1.2868579   -1.5070055   -1.0667103
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                -1.8261648   -2.0842810   -1.5680487
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                -1.7113465   -2.0012708   -1.4214221
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                -1.8836006   -2.0437859   -1.7234154
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -1.6572453   -2.0477180   -1.2667725
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -1.4054390   -1.5177818   -1.2930963
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -1.3933485   -1.5409854   -1.2457116
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -1.5849317   -2.0281160   -1.1417473
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -1.0864526   -1.1749033   -0.9980020
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -1.0792716   -1.2237259   -0.9348172
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -1.1611492   -1.4083713   -0.9139272
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -1.2072152   -1.3213079   -1.0931226
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -1.1793887   -1.2959430   -1.0628344
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                -1.5892845   -1.9834808   -1.1950882
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             NA                -1.3972190   -1.6244085   -1.1700295
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  NA                -1.6163383   -1.7532255   -1.4794510
6 months    ki1114097-CONTENT          PERU                           0%                   NA                -1.0984167   -2.1224703   -0.0743631
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             NA                -0.3610399   -0.5741415   -0.1479383
6 months    ki1114097-CONTENT          PERU                           >5%                  NA                -0.1438060   -0.4445075    0.1568956
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -1.3704721   -1.5526494   -1.1882947
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -1.3323242   -1.3731528   -1.2914956
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -1.4389597   -1.5294276   -1.3484919
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -1.6983333   -2.1891875   -1.2074792
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -1.9507308   -2.1166572   -1.7848043
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -2.0478289   -2.2529623   -1.8426955
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -1.0660505   -1.5697304   -0.5623706
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -1.3095826   -1.4586395   -1.1605257
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -1.3535169   -1.5750950   -1.1319387
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -3.2400000   -4.2371443   -2.2428557
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -2.6175962   -2.7782509   -2.4569414
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -2.6608654   -2.9071887   -2.4145421
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -1.6920000   -1.8179481   -1.5660519
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -2.2130914   -2.3480900   -2.0780928
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -2.2487126   -2.4051224   -2.0923029
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -1.9750000   -2.3266294   -1.6233706
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -1.5859747   -1.6839331   -1.4880162
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -1.6204885   -1.7821075   -1.4588695
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -1.4237386   -1.6469756   -1.2005016
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -1.4301805   -1.5668344   -1.2935266
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -1.5417880   -1.6927531   -1.3908230
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -1.7658446   -1.9791642   -1.5525250
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -1.7661908   -1.8035149   -1.7288667
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -1.9092365   -1.9992103   -1.8192626


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
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.6527088    0.0501841    1.2552334
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                 0.3278005   -0.2920880    0.9476890
Birth       ki0047075b-MAL-ED          INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]             0%                -0.3061818   -1.1170283    0.5046647
Birth       ki0047075b-MAL-ED          INDIA                          >5%                  0%                -0.3480000   -1.3517812    0.6557812
Birth       ki0047075b-MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]             0%                -0.1196975   -0.5045643    0.2651692
Birth       ki0047075b-MAL-ED          PERU                           >5%                  0%                -0.1282116   -0.5041296    0.2477064
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.3057516   -0.5286070    1.1401102
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.6399642   -0.1903183    1.4702466
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                -0.0206214   -0.2872544    0.2460116
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                 0.0046389   -0.2699022    0.2791800
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0663766   -0.1250014    0.2577546
Birth       ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.0935437   -0.1273886    0.3144761
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0021868   -0.2028572    0.1984837
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0087337   -0.2139606    0.1964932
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                 0.0934315   -0.3137712    0.5006342
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.0602295   -0.4844205    0.3639614
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.1069718   -0.6991976    0.4852540
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.4024373   -1.0112632    0.2063886
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.3217571   -0.9438511    0.3003369
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.2307706   -0.8742341    0.4126929
6 months    ki0047075b-MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             0%                -0.2315443   -0.8789349    0.4158462
6 months    ki0047075b-MAL-ED          PERU                           >5%                  0%                -0.2803344   -0.9246425    0.3639737
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0834369   -0.8758547    1.0427285
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1881421   -0.7854431    1.1617272
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                 0.1148184   -0.2733245    0.5029612
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0%                -0.0574358   -0.3617497    0.2468780
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                 0.2518062   -0.1538592    0.6574716
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                 0.2638968   -0.1528775    0.6806710
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.4984790    0.0464330    0.9505250
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.5056601    0.0394040    0.9719162
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0460660   -0.3184530    0.2263209
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0182395   -0.2914846    0.2550057
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             0%                 0.1920655   -0.2585330    0.6426640
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  0%                -0.0270538   -0.4450081    0.3909005
6 months    ki1114097-CONTENT          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             0%                 0.7373768   -0.3086147    1.7833682
6 months    ki1114097-CONTENT          PERU                           >5%                  0%                 0.9546107   -0.1126790    2.0219003
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                 0.0381479   -0.1478448    0.2241406
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.0684876   -0.2743078    0.1373326
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.2523974   -0.7705377    0.2657429
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.3494956   -0.8814895    0.1824983
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.2435321   -0.7689881    0.2819240
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.2874664   -0.8378701    0.2629373
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
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0064419   -0.2677929    0.2549091
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.1180494   -0.3875222    0.1514233
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                -0.0003462   -0.2176923    0.2169998
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.1433919   -0.3704656    0.0836818


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.5032498   -0.0473634    1.0538630
Birth       ki0047075b-MAL-ED          INDIA                          0%                   NA                -0.2816170   -0.9920768    0.4288428
Birth       ki0047075b-MAL-ED          PERU                           0%                   NA                -0.1137248   -0.4540922    0.2266425
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.3666222   -0.3910641    1.1243085
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.0172771   -0.2586496    0.2240954
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.0657108   -0.1040384    0.2354600
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.0038085   -0.1530208    0.1606379
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.0746241   -0.3219013    0.4711496
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.2183264   -0.7904838    0.3538310
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.2861979   -0.8745509    0.3021551
6 months    ki0047075b-MAL-ED          PERU                           0%                   NA                -0.2536661   -0.8739238    0.3665917
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.1062551   -0.8150201    1.0275302
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                -0.0725194   -0.3366246    0.1915858
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.2498632   -0.1400164    0.6397427
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.4932402    0.0542891    0.9321912
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0375291   -0.2706664    0.1956081
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                 0.0273837   -0.3470904    0.4018579
6 months    ki1114097-CONTENT          PERU                           0%                   NA                 0.7844950   -0.2254843    1.7944743
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.0256781   -0.1539938    0.2053499
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.2800629   -0.7733515    0.2132257
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.2415372   -0.7364366    0.2533622
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.5944393   -0.3837281    1.5726066
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.5270579   -0.6871036   -0.3670122
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.3725779    0.0198694    0.7252863
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0175260   -0.2232937    0.1882417
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0148772   -0.2239167    0.1941623

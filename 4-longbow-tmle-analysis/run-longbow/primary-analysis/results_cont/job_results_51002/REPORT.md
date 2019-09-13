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
* hhwealth_quart
* hfoodsec
* hdlvry
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_hdlvry
* delta_W_birthwt
* delta_W_birthlen
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%               22    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        146    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%              89    257
Birth       ki0047075b-MAL-ED          BRAZIL                         0%              108    191
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         81    191
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%               2    191
Birth       ki0047075b-MAL-ED          INDIA                          0%               12    206
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]        156    206
Birth       ki0047075b-MAL-ED          INDIA                          >5%              38    206
Birth       ki0047075b-MAL-ED          NEPAL                          0%               14    173
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        103    173
Birth       ki0047075b-MAL-ED          NEPAL                          >5%              56    173
Birth       ki0047075b-MAL-ED          PERU                           0%               27    287
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]        109    287
Birth       ki0047075b-MAL-ED          PERU                           >5%             151    287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%               95    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        154    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               3    252
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                8    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         90    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              25    123
Birth       ki1000109-EE               PAKISTAN                       0%                0      2
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]          2      2
Birth       ki1000109-EE               PAKISTAN                       >5%               0      2
Birth       ki1000109-ResPak           PAKISTAN                       0%                0      6
Birth       ki1000109-ResPak           PAKISTAN                       (0%, 5%]          2      6
Birth       ki1000109-ResPak           PAKISTAN                       >5%               4      6
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                4     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]          8     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%              14     26
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                6     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]         10     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%              11     27
Birth       ki1114097-CMIN             BANGLADESH                     0%               11     13
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]          0     13
Birth       ki1114097-CMIN             BANGLADESH                     >5%               2     13
Birth       ki1114097-CMIN             BRAZIL                         0%                1    115
Birth       ki1114097-CMIN             BRAZIL                         (0%, 5%]         66    115
Birth       ki1114097-CMIN             BRAZIL                         >5%              48    115
Birth       ki1114097-CMIN             PERU                           0%                1     10
Birth       ki1114097-CMIN             PERU                           (0%, 5%]          8     10
Birth       ki1114097-CMIN             PERU                           >5%               1     10
Birth       ki1114097-CONTENT          PERU                           0%                0      2
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]          1      2
Birth       ki1114097-CONTENT          PERU                           >5%               1      2
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%              195    822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]        547    822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%              80    822
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
6 months    ki1000109-EE               PAKISTAN                       0%              271    372
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]         80    372
6 months    ki1000109-EE               PAKISTAN                       >5%              21    372
6 months    ki1000109-ResPak           PAKISTAN                       0%               11    235
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]         70    235
6 months    ki1000109-ResPak           PAKISTAN                       >5%             154    235
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%               73    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         46    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%             261    380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%               15    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        339    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%             183    537
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%               12    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        401    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%             170    583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%              134    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        386    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%             195    715
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%               29    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         70    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%             200    299
6 months    ki1114097-CMIN             BANGLADESH                     0%                2    243
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]        112    243
6 months    ki1114097-CMIN             BANGLADESH                     >5%             129    243
6 months    ki1114097-CMIN             BRAZIL                         0%                1    108
6 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]         60    108
6 months    ki1114097-CMIN             BRAZIL                         >5%              47    108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%               25    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]        332    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%             472    829
6 months    ki1114097-CMIN             PERU                           0%               34    637
6 months    ki1114097-CMIN             PERU                           (0%, 5%]        301    637
6 months    ki1114097-CMIN             PERU                           >5%             302    637
6 months    ki1114097-CONTENT          PERU                           0%                6    215
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]        142    215
6 months    ki1114097-CONTENT          PERU                           >5%              67    215
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%             1243   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3119   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%             469   4831
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        279    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             145    429
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                9    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        394    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             174    577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              123    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        276    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             115    514
24 months   ki1114097-CMIN             BANGLADESH                     0%                3    242
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]        114    242
24 months   ki1114097-CMIN             BANGLADESH                     >5%             125    242
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%               30    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]        182    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%             326    538
24 months   ki1114097-CMIN             PERU                           0%               38    426
24 months   ki1114097-CMIN             PERU                           (0%, 5%]        193    426
24 months   ki1114097-CMIN             PERU                           >5%             195    426
24 months   ki1114097-CONTENT          PERU                           0%                4    164
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]        108    164
24 months   ki1114097-CONTENT          PERU                           >5%              52    164
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%             1211   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3095   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             446   4752


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
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
![](/tmp/7e59ecfd-a2d0-4666-ae25-a09451de3220/ed296c45-f7e1-425f-87e0-9fe31064180c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7e59ecfd-a2d0-4666-ae25-a09451de3220/ed296c45-f7e1-425f-87e0-9fe31064180c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7e59ecfd-a2d0-4666-ae25-a09451de3220/ed296c45-f7e1-425f-87e0-9fe31064180c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -1.4949462   -1.9619456   -1.0279467
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.9416964   -1.1007486   -0.7826441
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -1.2077753   -1.4360018   -0.9795489
Birth       ki0047075b-MAL-ED          INDIA                          0%                   NA                -0.8206376   -1.3024322   -0.3388430
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]             NA                -1.0422031   -1.2027803   -0.8816260
Birth       ki0047075b-MAL-ED          INDIA                          >5%                  NA                -0.9110731   -1.1812626   -0.6408837
Birth       ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.6051905   -1.4498370    0.2394561
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.7013253   -0.8899716   -0.5126791
Birth       ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -0.7534119   -1.0382664   -0.4685574
Birth       ki0047075b-MAL-ED          PERU                           0%                   NA                -0.8532774   -1.3442042   -0.3623507
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                -0.9160544   -1.0889195   -0.7431893
Birth       ki0047075b-MAL-ED          PERU                           >5%                  NA                -0.9568674   -1.1154434   -0.7982915
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.2537500   -2.1121999   -0.3953001
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.9958889   -1.2515539   -0.7402239
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.6080000   -0.9936631   -0.2223369
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -1.3916667   -2.3744611   -0.4088722
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.7940000   -1.4367037   -0.1512963
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -1.2436364   -1.7669142   -0.7203586
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -1.4929560   -1.6493802   -1.3365319
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -1.4818713   -1.5795760   -1.3841666
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -1.5962178   -1.7831763   -1.4092593
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.9866667   -1.5612360   -0.4120973
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -1.0936150   -1.2373445   -0.9498855
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -1.3909140   -1.5928426   -1.1889854
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.4182163   -0.9413834    0.1049507
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.6069984   -0.7470925   -0.4669043
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -0.5123604   -0.7206221   -0.3040988
6 months    ki0047075b-MAL-ED          PERU                           0%                   NA                -1.0700000   -1.6970711   -0.4429289
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                -1.3017584   -1.4646943   -1.1388225
6 months    ki0047075b-MAL-ED          PERU                           >5%                  NA                -1.3556369   -1.5032709   -1.2080030
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.4750000   -2.4233687   -0.5266313
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.3795292   -1.5239903   -1.2350680
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -1.2868579   -1.5070055   -1.0667103
6 months    ki1000109-EE               PAKISTAN                       0%                   NA                -2.2309348   -2.3797438   -2.0821258
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]             NA                -2.0643673   -2.2801797   -1.8485549
6 months    ki1000109-EE               PAKISTAN                       >5%                  NA                -2.3955892   -2.9673218   -1.8238566
6 months    ki1000109-ResPak           PAKISTAN                       0%                   NA                -0.6873662   -1.6410663    0.2663340
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]             NA                -1.2998659   -1.7110289   -0.8887030
6 months    ki1000109-ResPak           PAKISTAN                       >5%                  NA                -1.3872821   -1.6313568   -1.1432075
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                -1.8998701   -2.1049813   -1.6947588
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                -1.7384812   -2.0253276   -1.4516348
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                -1.8832729   -2.0372853   -1.7292606
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -1.7374799   -2.1110944   -1.3638654
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -1.3983835   -1.5124854   -1.2842816
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -1.3969810   -1.5407227   -1.2532394
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -1.5749432   -2.0120370   -1.1378495
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -1.0802531   -1.1698071   -0.9906991
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -1.0685155   -1.2198249   -0.9172060
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -1.1120690   -1.2867451   -0.9373929
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -1.2042452   -1.3041802   -1.1043102
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -1.2187049   -1.3531439   -1.0842659
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                -1.6531322   -2.0427027   -1.2635617
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             NA                -1.4234941   -1.6567685   -1.1902197
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  NA                -1.6106264   -1.7468161   -1.4744366
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                   NA                -0.9383608   -1.3348801   -0.5418415
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             NA                -0.4220204   -0.5336248   -0.3104159
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%                  NA                -0.7135029   -0.8189717   -0.6080341
6 months    ki1114097-CMIN             PERU                           0%                   NA                -0.5890946   -0.9164133   -0.2617760
6 months    ki1114097-CMIN             PERU                           (0%, 5%]             NA                -0.3766511   -0.4993683   -0.2539339
6 months    ki1114097-CMIN             PERU                           >5%                  NA                -0.6408507   -0.7484379   -0.5332635
6 months    ki1114097-CONTENT          PERU                           0%                   NA                -1.0984167   -2.1224703   -0.0743631
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             NA                -0.3610399   -0.5741415   -0.1479383
6 months    ki1114097-CONTENT          PERU                           >5%                  NA                -0.1438060   -0.4445075    0.1568956
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -1.3277763   -1.4039711   -1.2515815
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -1.3341631   -1.3781167   -1.2902095
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -1.4598942   -1.5542157   -1.3655728
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -1.6450000   -2.1387687   -1.1512313
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -1.9155000   -2.0801222   -1.7508778
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -2.0138816   -2.2191890   -1.8085741
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -1.0446283   -1.4722868   -0.6169698
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -1.2824056   -1.4323945   -1.1324166
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -1.2949516   -1.5172116   -1.0726917
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -3.2400000   -4.2371443   -2.2428557
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -2.5751603   -2.7349797   -2.4153408
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -2.6249038   -2.8682232   -2.3815845
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -1.6500000   -1.7451747   -1.5548253
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -2.1683961   -2.3034427   -2.0333494
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -2.2229540   -2.3798407   -2.0660673
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -1.9511111   -2.2983399   -1.6038823
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -1.5681726   -1.6661219   -1.4702233
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -1.6078736   -1.7691497   -1.4465975
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -1.4031516   -1.5752463   -1.2310569
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -1.3979885   -1.5107919   -1.2851851
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -1.5380903   -1.7242677   -1.3519128
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                   NA                -1.9021362   -2.3198982   -1.4843742
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             NA                -1.3786017   -1.5371901   -1.2200133
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                  NA                -1.7115625   -1.8424090   -1.5807160
24 months   ki1114097-CMIN             PERU                           0%                   NA                -1.4643781   -1.7604229   -1.1683333
24 months   ki1114097-CMIN             PERU                           (0%, 5%]             NA                -1.3752622   -1.5206025   -1.2299220
24 months   ki1114097-CMIN             PERU                           >5%                  NA                -1.7989441   -1.9386315   -1.6592567
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -1.7066418   -1.7744755   -1.6388081
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -1.7566183   -1.7977690   -1.7154677
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -1.9022020   -2.0003167   -1.8040874


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0843969   -1.2100768   -0.9587169
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0106311   -1.1499962   -0.8712660
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.9338211   -1.1465079   -0.7211344
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1100000   -1.5086894   -0.7113106
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3601215   -1.4821830   -1.2380600
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.2004704   -2.3234073   -2.0775336
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -1.4029220   -1.6085859   -1.1972581
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5619008   -1.6727702   -1.4510313
6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -0.6003317   -0.6767125   -0.5239510
6 months    ki1114097-CMIN             PERU                           NA                   NA                -0.5132548   -0.5926717   -0.4338380
6 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.3139217   -0.4868486   -0.1409948
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6058879   -2.7403043   -2.4714714
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -1.5996561   -1.6995642   -1.4997481
24 months   ki1114097-CMIN             PERU                           NA                   NA                -1.5759624   -1.6729826   -1.4789423
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7582681   -1.7937283   -1.7228079


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.5532498    0.0601053    1.0463943
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                 0.2871709   -0.2346881    0.8090298
Birth       ki0047075b-MAL-ED          INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]             0%                -0.2215655   -0.7209623    0.2778312
Birth       ki0047075b-MAL-ED          INDIA                          >5%                  0%                -0.0904356   -0.6368543    0.4559831
Birth       ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0961349   -0.9619208    0.7696510
Birth       ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.1482214   -1.0408510    0.7444081
Birth       ki0047075b-MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]             0%                -0.0627769   -0.5809210    0.4553671
Birth       ki0047075b-MAL-ED          PERU                           >5%                  0%                -0.1035900   -0.6170418    0.4098619
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.2578611   -0.6378513    1.1535736
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.6457500   -0.2953516    1.5868516
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.5976667   -0.5766216    1.7719550
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                 0.1480303   -0.9653899    1.2614505
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                 0.0110848   -0.1590591    0.1812286
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.1032617   -0.3385183    0.1319948
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.1069484   -0.6992220    0.4853253
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.4042473   -1.0132671    0.2047724
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.1887821   -0.7304181    0.3528540
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.0941441   -0.6578152    0.4695269
6 months    ki0047075b-MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             0%                -0.2317584   -0.8796522    0.4161353
6 months    ki0047075b-MAL-ED          PERU                           >5%                  0%                -0.2856369   -0.9298527    0.3585789
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0954708   -0.8638373    1.0547790
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1881421   -0.7854431    1.1617272
6 months    ki1000109-EE               PAKISTAN                       0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]             0%                 0.1665675   -0.0929503    0.4260854
6 months    ki1000109-EE               PAKISTAN                       >5%                  0%                -0.1646544   -0.7536674    0.4243586
6 months    ki1000109-ResPak           PAKISTAN                       0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]             0%                -0.6124997   -1.6525382    0.4275388
6 months    ki1000109-ResPak           PAKISTAN                       >5%                  0%                -0.6999159   -1.6824616    0.2826297
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                 0.1613889   -0.1912658    0.5140436
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0%                 0.0165971   -0.2403866    0.2735809
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                 0.3390964   -0.0502374    0.7284302
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                 0.3404989   -0.0579296    0.7389273
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.4946901    0.0484899    0.9408904
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.5064278    0.0438759    0.9689797
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0921762   -0.2938203    0.1094679
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.1066359   -0.3268477    0.1135760
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             0%                 0.2296381   -0.2207056    0.6799818
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  0%                 0.0425058   -0.3702379    0.4552496
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             0%                 0.5163404    0.1044831    0.9281977
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%                  0%                 0.2248579   -0.1854449    0.6351606
6 months    ki1114097-CMIN             PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             PERU                           (0%, 5%]             0%                 0.2124435   -0.1371333    0.5620204
6 months    ki1114097-CMIN             PERU                           >5%                  0%                -0.0517560   -0.3962477    0.2927356
6 months    ki1114097-CONTENT          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             0%                 0.7373768   -0.3086147    1.7833682
6 months    ki1114097-CONTENT          PERU                           >5%                  0%                 0.9546107   -0.1126790    2.0219003
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                -0.0063868   -0.0912255    0.0784519
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.1321180   -0.2528053   -0.0114307
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.2705000   -0.7909882    0.2499882
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.3688816   -0.9036326    0.1658695
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.2377772   -0.6902867    0.2147323
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.2503233   -0.7320723    0.2314257
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.6648397   -0.3450310    1.6747105
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.6150962   -0.4113058    1.6414981
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                -0.5183961   -0.6836105   -0.3531816
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                -0.5729540   -0.7564524   -0.3894557
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.3829385    0.0221590    0.7437181
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.3432375   -0.0396173    0.7260924
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.0051631   -0.1994082    0.2097344
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.1349387   -0.3876028    0.1177255
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             0%                 0.5235345    0.0775214    0.9695477
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                  0%                 0.1905737   -0.2471572    0.6283046
24 months   ki1114097-CMIN             PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             PERU                           (0%, 5%]             0%                 0.0891159   -0.2410932    0.4193249
24 months   ki1114097-CMIN             PERU                           >5%                  0%                -0.3345660   -0.6622341   -0.0068980
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                -0.0499765   -0.1268837    0.0269307
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.1955602   -0.3109390   -0.0801814


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.4105493   -0.0352479    0.8563465
Birth       ki0047075b-MAL-ED          INDIA                          0%                   NA                -0.1899935   -0.6588529    0.2788659
Birth       ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.1037113   -0.9013300    0.6939075
Birth       ki0047075b-MAL-ED          PERU                           0%                   NA                -0.0789525   -0.5389424    0.3810374
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.3199289   -0.5085096    1.1483673
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.2816667   -0.5523333    1.1156666
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0047082   -0.1321172    0.1227008
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.2190111   -0.7912200    0.3531979
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.1428430   -0.6498378    0.3641518
6 months    ki0047075b-MAL-ED          PERU                           0%                   NA                -0.2568010   -0.8771126    0.3635107
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.1148785   -0.8064024    1.0361595
6 months    ki1000109-EE               PAKISTAN                       0%                   NA                 0.0304644   -0.0371406    0.0980693
6 months    ki1000109-ResPak           PAKISTAN                       0%                   NA                -0.7155558   -1.6497904    0.2186788
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                 0.0011859   -0.2126035    0.2149752
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.3300978   -0.0425802    0.7027759
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.4878392    0.0549848    0.9206935
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0866093   -0.2446001    0.0713815
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                 0.0912314   -0.2784698    0.4609326
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                   NA                 0.3380290   -0.0525451    0.7286032
6 months    ki1114097-CMIN             PERU                           0%                   NA                 0.0758398   -0.2432614    0.3949410
6 months    ki1114097-CONTENT          PERU                           0%                   NA                 0.7844950   -0.2254843    1.7944743
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0170178   -0.0789757    0.0449402
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.2981132   -0.7939931    0.1977667
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.2305910   -0.6542071    0.1930252
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.6341121   -0.3439520    1.6121763
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.5307945   -0.6692585   -0.3923305
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.3649933    0.0164680    0.7135185
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0263815   -0.1775400    0.1247771
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                   NA                 0.3024801   -0.1036361    0.7085963
24 months   ki1114097-CMIN             PERU                           0%                   NA                -0.1115844   -0.3972717    0.1741030
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0516263   -0.1078742    0.0046217

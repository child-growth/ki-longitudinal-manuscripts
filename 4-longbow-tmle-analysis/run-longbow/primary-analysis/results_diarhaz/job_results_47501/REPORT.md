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
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        146    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%              89    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%               22    257
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         81    191
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%               2    191
Birth       ki0047075b-MAL-ED          BRAZIL                         0%              108    191
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]        156    206
Birth       ki0047075b-MAL-ED          INDIA                          >5%              38    206
Birth       ki0047075b-MAL-ED          INDIA                          0%               12    206
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        103    173
Birth       ki0047075b-MAL-ED          NEPAL                          >5%              56    173
Birth       ki0047075b-MAL-ED          NEPAL                          0%               14    173
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]        109    287
Birth       ki0047075b-MAL-ED          PERU                           >5%             151    287
Birth       ki0047075b-MAL-ED          PERU                           0%               27    287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        154    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               3    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%               95    252
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         90    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              25    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                8    123
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]          2      2
Birth       ki1000109-EE               PAKISTAN                       >5%               0      2
Birth       ki1000109-EE               PAKISTAN                       0%                0      2
Birth       ki1000109-ResPak           PAKISTAN                       (0%, 5%]          2      6
Birth       ki1000109-ResPak           PAKISTAN                       >5%               4      6
Birth       ki1000109-ResPak           PAKISTAN                       0%                0      6
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]          8     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%              14     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                4     26
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]         10     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%              11     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                6     27
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]          0     13
Birth       ki1114097-CMIN             BANGLADESH                     >5%               2     13
Birth       ki1114097-CMIN             BANGLADESH                     0%               11     13
Birth       ki1114097-CMIN             BRAZIL                         (0%, 5%]         66    115
Birth       ki1114097-CMIN             BRAZIL                         >5%              48    115
Birth       ki1114097-CMIN             BRAZIL                         0%                1    115
Birth       ki1114097-CMIN             PERU                           (0%, 5%]          8     10
Birth       ki1114097-CMIN             PERU                           >5%               1     10
Birth       ki1114097-CMIN             PERU                           0%                1     10
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]          1      2
Birth       ki1114097-CONTENT          PERU                           >5%               1      2
Birth       ki1114097-CONTENT          PERU                           0%                0      2
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]        547    822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%              80    822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%              195    822
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        142    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%              93    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                6    241
6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]        101    209
6 months    ki0047075b-MAL-ED          BRAZIL                         >5%               2    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0%              106    209
6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]        191    236
6 months    ki0047075b-MAL-ED          INDIA                          >5%              42    236
6 months    ki0047075b-MAL-ED          INDIA                          0%                3    236
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        143    236
6 months    ki0047075b-MAL-ED          NEPAL                          >5%              79    236
6 months    ki0047075b-MAL-ED          NEPAL                          0%               14    236
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]        109    273
6 months    ki0047075b-MAL-ED          PERU                           >5%             157    273
6 months    ki0047075b-MAL-ED          PERU                           0%                7    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        174    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%               78    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        177    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              61    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9    247
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]         80    372
6 months    ki1000109-EE               PAKISTAN                       >5%              21    372
6 months    ki1000109-EE               PAKISTAN                       0%              271    372
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]         70    235
6 months    ki1000109-ResPak           PAKISTAN                       >5%             154    235
6 months    ki1000109-ResPak           PAKISTAN                       0%               11    235
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         46    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%             261    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%               73    380
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        339    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%             183    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%               15    537
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        401    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%             170    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%               12    583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        386    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%             195    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%              134    715
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         70    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%             200    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%               29    299
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]        112    243
6 months    ki1114097-CMIN             BANGLADESH                     >5%             129    243
6 months    ki1114097-CMIN             BANGLADESH                     0%                2    243
6 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]         60    108
6 months    ki1114097-CMIN             BRAZIL                         >5%              47    108
6 months    ki1114097-CMIN             BRAZIL                         0%                1    108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]        332    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%             472    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%               25    829
6 months    ki1114097-CMIN             PERU                           (0%, 5%]        301    637
6 months    ki1114097-CMIN             PERU                           >5%             302    637
6 months    ki1114097-CMIN             PERU                           0%               34    637
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]        142    215
6 months    ki1114097-CONTENT          PERU                           >5%              67    215
6 months    ki1114097-CONTENT          PERU                           0%                6    215
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3119   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%             469   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%             1243   4831
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        130    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              76    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6    212
24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         91    169
24 months   ki0047075b-MAL-ED          BRAZIL                         >5%               2    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0%               76    169
24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        183    227
24 months   ki0047075b-MAL-ED          INDIA                          >5%              41    227
24 months   ki0047075b-MAL-ED          INDIA                          0%                3    227
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        140    228
24 months   ki0047075b-MAL-ED          NEPAL                          >5%              76    228
24 months   ki0047075b-MAL-ED          NEPAL                          0%               12    228
24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         84    201
24 months   ki0047075b-MAL-ED          PERU                           >5%             116    201
24 months   ki0047075b-MAL-ED          PERU                           0%                1    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        166    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               71    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        156    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              52    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    214
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        279    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             145    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    429
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        394    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             174    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                9    577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        276    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             115    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              123    514
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]        114    242
24 months   ki1114097-CMIN             BANGLADESH                     >5%             125    242
24 months   ki1114097-CMIN             BANGLADESH                     0%                3    242
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]        182    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%             326    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%               30    538
24 months   ki1114097-CMIN             PERU                           (0%, 5%]        193    426
24 months   ki1114097-CMIN             PERU                           >5%             195    426
24 months   ki1114097-CMIN             PERU                           0%               38    426
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]        108    164
24 months   ki1114097-CONTENT          PERU                           >5%              52    164
24 months   ki1114097-CONTENT          PERU                           0%                4    164
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3095   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             446   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%             1211   4752


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
![](/tmp/8bd52310-7250-4193-9b2e-1c250d444271/8f88a592-27f6-4bbf-9bb4-f489a5273c12/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8bd52310-7250-4193-9b2e-1c250d444271/8f88a592-27f6-4bbf-9bb4-f489a5273c12/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8bd52310-7250-4193-9b2e-1c250d444271/8f88a592-27f6-4bbf-9bb4-f489a5273c12/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.9395770   -1.0970637   -0.7820902
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -1.1988780   -1.4218947   -0.9758612
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -1.4831472   -1.9340481   -1.0322464
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]             NA                -1.0414106   -1.2019739   -0.8808473
Birth       ki0047075b-MAL-ED          INDIA                          >5%                  NA                -0.8841978   -1.1504072   -0.6179884
Birth       ki0047075b-MAL-ED          INDIA                          0%                   NA                -0.7807258   -1.2272203   -0.3342312
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.6984681   -0.8898813   -0.5070549
Birth       ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -0.7445614   -1.0273660   -0.4617567
Birth       ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.6817643   -1.5345393    0.1710106
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                -0.9097820   -1.0820940   -0.7374701
Birth       ki0047075b-MAL-ED          PERU                           >5%                  NA                -0.9612810   -1.1185796   -0.8039824
Birth       ki0047075b-MAL-ED          PERU                           0%                   NA                -0.8919033   -1.4022121   -0.3815945
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.9958889   -1.2515539   -0.7402239
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.6080000   -0.9936631   -0.2223369
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.2537500   -2.1121999   -0.3953001
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.7940000   -1.4367037   -0.1512963
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -1.2436364   -1.7669142   -0.7203586
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -1.3916667   -2.3744611   -0.4088722
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -1.4801533   -1.5781048   -1.3822018
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -1.5832733   -1.7668149   -1.3997317
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -1.4808145   -1.6366036   -1.3250254
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -1.0936150   -1.2373445   -0.9498855
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -1.3909140   -1.5928426   -1.1889854
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.9866667   -1.5612360   -0.4120973
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.6089052   -0.7474358   -0.4703745
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -0.5091818   -0.7163136   -0.3020499
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.3672830   -0.8588544    0.1242884
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                -1.3017584   -1.4646943   -1.1388225
6 months    ki0047075b-MAL-ED          PERU                           >5%                  NA                -1.3556369   -1.5032709   -1.2080030
6 months    ki0047075b-MAL-ED          PERU                           0%                   NA                -1.0700000   -1.6970711   -0.4429289
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.3795292   -1.5239903   -1.2350680
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -1.2868579   -1.5070055   -1.0667103
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.4750000   -2.4233687   -0.5266313
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]             NA                -2.1102326   -2.3231075   -1.8973576
6 months    ki1000109-EE               PAKISTAN                       >5%                  NA                -2.5180323   -3.0613186   -1.9747461
6 months    ki1000109-EE               PAKISTAN                       0%                   NA                -2.2438392   -2.3935168   -2.0941615
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]             NA                -1.3846712   -1.8034708   -0.9658716
6 months    ki1000109-ResPak           PAKISTAN                       >5%                  NA                -1.3855531   -1.6320510   -1.1390552
6 months    ki1000109-ResPak           PAKISTAN                       0%                   NA                -1.0022537   -2.2169501    0.2124427
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                -1.6103552   -1.8847608   -1.3359497
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                -1.8838811   -2.0372949   -1.7304673
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                -1.7858081   -1.9954664   -1.5761497
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -1.3959155   -1.5106221   -1.2812089
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -1.4095829   -1.5575253   -1.2616406
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -1.7807202   -2.1778700   -1.3835705
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -1.0788073   -1.1681982   -0.9894164
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -1.0715164   -1.2229596   -0.9200732
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -1.5724200   -2.0083075   -1.1365324
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -1.1949512   -1.2943791   -1.0955232
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -1.2211795   -1.3556494   -1.0867095
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -1.1236855   -1.2869380   -0.9604329
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             NA                -1.4108739   -1.6438212   -1.1779266
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  NA                -1.6138529   -1.7505350   -1.4771709
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                -1.6439592   -2.0219056   -1.2660128
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             NA                -0.4124079   -0.5243307   -0.3004850
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%                  NA                -0.7071353   -0.8128601   -0.6014106
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                   NA                -0.8246006   -1.2564787   -0.3927226
6 months    ki1114097-CMIN             PERU                           (0%, 5%]             NA                -0.3826826   -0.5047791   -0.2605861
6 months    ki1114097-CMIN             PERU                           >5%                  NA                -0.6462451   -0.7533095   -0.5391807
6 months    ki1114097-CMIN             PERU                           0%                   NA                -0.7230694   -1.0674604   -0.3786783
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             NA                -0.3610399   -0.5741415   -0.1479383
6 months    ki1114097-CONTENT          PERU                           >5%                  NA                -0.1438060   -0.4445075    0.1568956
6 months    ki1114097-CONTENT          PERU                           0%                   NA                -1.0984167   -2.1224703   -0.0743631
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -1.3341697   -1.3781293   -1.2902101
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -1.4613831   -1.5564594   -1.3663068
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -1.3283550   -1.4043238   -1.2523861
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -1.9155000   -2.0801222   -1.7508778
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -2.0138816   -2.2191890   -1.8085741
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -1.6450000   -2.1387687   -1.1512313
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -1.2729413   -1.4219199   -1.1239627
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -1.2920150   -1.5172608   -1.0667692
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -1.1225644   -1.6272042   -0.6179246
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -2.5751603   -2.7349797   -2.4153408
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -2.6249038   -2.8682232   -2.3815845
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -3.2400000   -4.2371443   -2.2428557
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -2.1683961   -2.3034427   -2.0333494
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -2.2229540   -2.3798407   -2.0660673
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -1.6500000   -1.7451747   -1.5548253
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -1.5681726   -1.6661219   -1.4702233
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -1.6078736   -1.7691497   -1.4465975
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -1.9511111   -2.2983399   -1.6038823
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -1.4027920   -1.5160304   -1.2895536
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -1.5581410   -1.7449158   -1.3713662
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -1.4097681   -1.5797385   -1.2397977
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             NA                -1.3778502   -1.5362320   -1.2194684
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                  NA                -1.7139161   -1.8452173   -1.5826148
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                   NA                -1.9212023   -2.3330041   -1.5094005
24 months   ki1114097-CMIN             PERU                           (0%, 5%]             NA                -1.3741713   -1.5186413   -1.2297013
24 months   ki1114097-CMIN             PERU                           >5%                  NA                -1.8083334   -1.9487271   -1.6679397
24 months   ki1114097-CMIN             PERU                           0%                   NA                -1.4452918   -1.7359147   -1.1546690
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -1.7554275   -1.7966394   -1.7142157
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -1.9025187   -2.0002197   -1.8048176
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -1.7106069   -1.7785372   -1.6426767


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
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                  (0%, 5%]          -0.2593010   -0.5330981    0.0144961
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   (0%, 5%]          -0.5435703   -1.0209429   -0.0661977
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          >5%                  (0%, 5%]           0.1572128   -0.1395041    0.4539297
Birth       ki0047075b-MAL-ED          INDIA                          0%                   (0%, 5%]           0.2606848   -0.2057851    0.7271547
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          >5%                  (0%, 5%]          -0.0460932   -0.3881184    0.2959320
Birth       ki0047075b-MAL-ED          NEPAL                          0%                   (0%, 5%]           0.0167038   -0.8573992    0.8908068
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           >5%                  (0%, 5%]          -0.0514989   -0.2817559    0.1787580
Birth       ki0047075b-MAL-ED          PERU                           0%                   (0%, 5%]           0.0178787   -0.5189490    0.5547065
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]           0.3878889   -0.0748212    0.8505990
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          -0.2578611   -1.1535736    0.6378513
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  (0%, 5%]          -0.4496364   -1.2784233    0.3791505
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                   (0%, 5%]          -0.5976667   -1.7719550    0.5766216
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                  (0%, 5%]          -0.1031200   -0.3026235    0.0963835
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   (0%, 5%]          -0.0006612   -0.1706876    0.1693653
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  (0%, 5%]          -0.2972990   -0.5451564   -0.0494415
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   (0%, 5%]           0.1069484   -0.4853253    0.6992220
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                  (0%, 5%]           0.0997234   -0.1497149    0.3491617
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   (0%, 5%]           0.2416222   -0.2691363    0.7523806
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           >5%                  (0%, 5%]          -0.0538785   -0.2737510    0.1659939
6 months    ki0047075b-MAL-ED          PERU                           0%                   (0%, 5%]           0.2317584   -0.4161353    0.8796522
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]           0.0926713   -0.1706422    0.3559847
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          -0.0954708   -1.0547790    0.8638373
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       >5%                  (0%, 5%]          -0.4077998   -0.9908236    0.1752240
6 months    ki1000109-EE               PAKISTAN                       0%                   (0%, 5%]          -0.1336066   -0.3921860    0.1249727
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       >5%                  (0%, 5%]          -0.0008820   -0.4889539    0.4871900
6 months    ki1000109-ResPak           PAKISTAN                       0%                   (0%, 5%]           0.3824175   -0.9074006    1.6722356
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  (0%, 5%]          -0.2735259   -0.5879073    0.0408556
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   (0%, 5%]          -0.1754529   -0.5221779    0.1712722
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  (0%, 5%]          -0.0136674   -0.2004227    0.1730879
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   (0%, 5%]          -0.3848047   -0.7978605    0.0282511
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  (0%, 5%]           0.0072909   -0.1681431    0.1827249
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   (0%, 5%]          -0.4936127   -0.9384217   -0.0488037
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  (0%, 5%]          -0.0262283   -0.1936188    0.1411623
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   (0%, 5%]           0.0712657   -0.1203964    0.2629278
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  (0%, 5%]          -0.2029790   -0.4728913    0.0669332
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   (0%, 5%]          -0.2330853   -0.6744810    0.2083104
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%                  (0%, 5%]          -0.2947275   -0.4487959   -0.1406591
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                   (0%, 5%]          -0.4121928   -0.8582530    0.0338674
6 months    ki1114097-CMIN             PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             PERU                           >5%                  (0%, 5%]          -0.2635625   -0.4262186   -0.1009064
6 months    ki1114097-CMIN             PERU                           0%                   (0%, 5%]          -0.3403868   -0.7061062    0.0253326
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           >5%                  (0%, 5%]           0.2172339   -0.1513224    0.5857902
6 months    ki1114097-CONTENT          PERU                           0%                   (0%, 5%]          -0.7373768   -1.7833682    0.3086147
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  (0%, 5%]          -0.1272134   -0.2307779   -0.0236490
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   (0%, 5%]           0.0058147   -0.0788533    0.0904827
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  (0%, 5%]          -0.0983816   -0.3615386    0.1647755
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   (0%, 5%]           0.2705000   -0.2499882    0.7909882
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  (0%, 5%]          -0.0190736   -0.2886770    0.2505297
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   (0%, 5%]           0.1503770   -0.3760311    0.6767851
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          -0.0497436   -0.3408562    0.2413690
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          -0.6648397   -1.6747105    0.3450310
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  (0%, 5%]          -0.0545580   -0.2615629    0.1524470
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   (0%, 5%]           0.5183961    0.3531816    0.6836105
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  (0%, 5%]          -0.0397010   -0.2283913    0.1489894
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   (0%, 5%]          -0.3829385   -0.7437181   -0.0221590
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  (0%, 5%]          -0.1553489   -0.3730174    0.0623195
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   (0%, 5%]          -0.0069760   -0.2090452    0.1950932
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                  (0%, 5%]          -0.3360659   -0.5418519   -0.1302799
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                   (0%, 5%]          -0.5433521   -0.9838529   -0.1028514
24 months   ki1114097-CMIN             PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             PERU                           >5%                  (0%, 5%]          -0.4341621   -0.6360480   -0.2322762
24 months   ki1114097-CMIN             PERU                           0%                   (0%, 5%]          -0.0711205   -0.3959396    0.2536986
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  (0%, 5%]          -0.1470911   -0.2482455   -0.0459368
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   (0%, 5%]           0.0448206   -0.0321538    0.1217950


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.1448199   -0.2571080   -0.0325318
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]             NA                 0.0307795   -0.0331411    0.0947001
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.0104336   -0.1511196    0.1302524
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                -0.0224479   -0.1627199    0.1178241
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0620678   -0.0601809    0.1843164
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.3160000   -0.8317954    0.1997954
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -0.0175109   -0.0655536    0.0305318
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.1120627   -0.2126299   -0.0114955
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                 0.0478459   -0.0471711    0.1428628
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                -0.0250426   -0.1557403    0.1056552
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0194077   -0.0571336    0.0959491
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]             NA                -0.0902379   -0.2914149    0.1109392
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]             NA                -0.0182508   -0.3606209    0.3241192
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                -0.2883290   -0.5516426   -0.0250154
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.0114665   -0.0778183    0.0548852
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.0082968   -0.0613837    0.0447901
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.0037271   -0.0724166    0.0649623
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             NA                -0.1510269   -0.3618604    0.0598067
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             NA                -0.1879239   -0.2798772   -0.0959706
6 months    ki1114097-CMIN             PERU                           (0%, 5%]             NA                -0.1305722   -0.2154420   -0.0457025
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             NA                 0.0471182   -0.0766943    0.1709307
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -0.0106244   -0.0363675    0.0151187
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.0276132   -0.1263746    0.0711482
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.0022780   -0.1002234    0.0956675
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0307276   -0.1105452    0.0490900
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.0123984   -0.0836931    0.0588962
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.0179453   -0.0764431    0.0405525
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.0267410   -0.1044929    0.0510108
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             NA                -0.2218060   -0.3570394   -0.0865725
24 months   ki1114097-CMIN             PERU                           (0%, 5%]             NA                -0.2017911   -0.3090450   -0.0945373
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -0.0028406   -0.0260597    0.0203785

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%               18    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        142    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%              81    241
Birth       ki0047075b-MAL-ED          BRAZIL                         0%              105    183
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         76    183
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%               2    183
Birth       ki0047075b-MAL-ED          INDIA                          0%               12    203
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]        153    203
Birth       ki0047075b-MAL-ED          INDIA                          >5%              38    203
Birth       ki0047075b-MAL-ED          NEPAL                          0%               13    168
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        101    168
Birth       ki0047075b-MAL-ED          NEPAL                          >5%              54    168
Birth       ki0047075b-MAL-ED          PERU                           0%               26    279
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]        107    279
Birth       ki0047075b-MAL-ED          PERU                           >5%             146    279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%               95    250
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        152    250
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               3    250
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                8    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         86    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              24    118
Birth       ki1000109-EE               PAKISTAN                       0%                0      1
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]          1      1
Birth       ki1000109-EE               PAKISTAN                       >5%               0      1
Birth       ki1000109-ResPak           PAKISTAN                       0%                0      5
Birth       ki1000109-ResPak           PAKISTAN                       (0%, 5%]          1      5
Birth       ki1000109-ResPak           PAKISTAN                       >5%               4      5
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                4     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]          8     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%              14     26
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                4     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]         10     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%               9     23
Birth       ki1114097-CMIN             BANGLADESH                     0%                6      8
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]          0      8
Birth       ki1114097-CMIN             BANGLADESH                     >5%               2      8
Birth       ki1114097-CMIN             BRAZIL                         0%                1    111
Birth       ki1114097-CMIN             BRAZIL                         (0%, 5%]         63    111
Birth       ki1114097-CMIN             BRAZIL                         >5%              47    111
Birth       ki1114097-CMIN             PERU                           0%                1     10
Birth       ki1114097-CMIN             PERU                           (0%, 5%]          8     10
Birth       ki1114097-CMIN             PERU                           >5%               1     10
Birth       ki1114097-CONTENT          PERU                           0%                0      2
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]          1      2
Birth       ki1114097-CONTENT          PERU                           >5%               1      2
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%              162    683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]        457    683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%              64    683
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
6 months    ki1000109-EE               PAKISTAN                       0%              275    376
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]         80    376
6 months    ki1000109-EE               PAKISTAN                       >5%              21    376
6 months    ki1000109-ResPak           PAKISTAN                       0%               11    235
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]         70    235
6 months    ki1000109-ResPak           PAKISTAN                       >5%             154    235
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%               74    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         46    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%             260    380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%               15    536
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        338    536
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%             183    536
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%               12    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        400    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%             170    582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%              134    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        386    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%             195    715
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%               29    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         70    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%             200    299
6 months    ki1114097-CMIN             BANGLADESH                     0%                2    243
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]        111    243
6 months    ki1114097-CMIN             BANGLADESH                     >5%             130    243
6 months    ki1114097-CMIN             BRAZIL                         0%                1    108
6 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]         60    108
6 months    ki1114097-CMIN             BRAZIL                         >5%              47    108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%               25    830
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]        332    830
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%             473    830
6 months    ki1114097-CMIN             PERU                           0%               34    636
6 months    ki1114097-CMIN             PERU                           (0%, 5%]        301    636
6 months    ki1114097-CMIN             PERU                           >5%             301    636
6 months    ki1114097-CONTENT          PERU                           0%                6    215
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]        142    215
6 months    ki1114097-CONTENT          PERU                           >5%              67    215
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%             1243   4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3119   4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%             471   4833
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    428
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        278    428
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             145    428
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                9    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        395    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             174    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              123    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        276    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             115    514
24 months   ki1114097-CMIN             BANGLADESH                     0%                3    243
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]        114    243
24 months   ki1114097-CMIN             BANGLADESH                     >5%             126    243
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%               30    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]        182    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%             326    538
24 months   ki1114097-CMIN             PERU                           0%               38    426
24 months   ki1114097-CMIN             PERU                           (0%, 5%]        193    426
24 months   ki1114097-CMIN             PERU                           >5%             195    426
24 months   ki1114097-CONTENT          PERU                           0%                4    164
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]        108    164
24 months   ki1114097-CONTENT          PERU                           >5%              52    164
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%             1207   4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3085   4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             443   4735


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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/9013d5ce-58d9-4926-845c-45011fd1a0d7/772bc66d-9a9a-4e13-90ab-a3474dcf9a2e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9013d5ce-58d9-4926-845c-45011fd1a0d7/772bc66d-9a9a-4e13-90ab-a3474dcf9a2e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9013d5ce-58d9-4926-845c-45011fd1a0d7/772bc66d-9a9a-4e13-90ab-a3474dcf9a2e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.5496672   -1.0268637   -0.0724706
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.9716970   -1.1401622   -0.8032319
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -1.0260919   -1.2815475   -0.7706362
Birth       ki0047075b-MAL-ED          INDIA                          0%                   NA                -0.7760240   -1.4201453   -0.1319026
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]             NA                -1.0372928   -1.1914868   -0.8830988
Birth       ki0047075b-MAL-ED          INDIA                          >5%                  NA                -0.9837306   -1.3384525   -0.6290086
Birth       ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.8652325   -1.7819752    0.0515101
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.9121509   -1.0745821   -0.7497197
Birth       ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -0.9030050   -1.1673571   -0.6386528
Birth       ki0047075b-MAL-ED          PERU                           0%                   NA                 0.1021039   -0.3959988    0.6002066
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                -0.0702717   -0.2589808    0.1184373
Birth       ki0047075b-MAL-ED          PERU                           >5%                  NA                -0.1782994   -0.3291566   -0.0274423
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.5450000   -0.1026423    1.1926423
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.8427907    0.6121065    1.0734749
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.6983333    0.2488389    1.1478277
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.2498678   -0.4199751   -0.0797605
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -0.4136330   -0.5069569   -0.3203092
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -0.3403436   -0.5582622   -0.1224250
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.1833333   -0.5948965    0.9615632
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.1588556   -0.3343778    0.0166665
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -0.1315412   -0.3244223    0.0613399
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.1263804   -0.8605483    0.6077875
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                 0.0813675   -0.0895334    0.2522684
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                  NA                 0.1241391   -0.0873186    0.3355967
6 months    ki0047075b-MAL-ED          PERU                           0%                   NA                 0.8728571    0.1723061    1.5734082
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                 1.0287156    0.8430187    1.2144124
6 months    ki0047075b-MAL-ED          PERU                           >5%                  NA                 1.0803185    0.9156342    1.2450028
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.2427778   -0.7161220    1.2016775
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.5185028    0.3601992    0.6768064
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.5533060    0.3421515    0.7644605
6 months    ki1000109-EE               PAKISTAN                       0%                   NA                -0.7357947   -0.8658796   -0.6057097
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]             NA                -0.6828981   -0.9551850   -0.4106111
6 months    ki1000109-EE               PAKISTAN                       >5%                  NA                -0.4234173   -0.8733227    0.0264881
6 months    ki1000109-ResPak           PAKISTAN                       0%                   NA                -0.1077795   -1.2699163    1.0543573
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]             NA                -0.2830315   -0.6416201    0.0755570
6 months    ki1000109-ResPak           PAKISTAN                       >5%                  NA                -0.0412010   -0.2617532    0.1793511
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                -1.2025140   -1.6314774   -0.7735506
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                -0.6930823   -1.1126748   -0.2734897
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                -1.0618858   -1.2380131   -0.8857584
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.0860024   -0.4430939    0.2710892
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.4114448   -0.5254202   -0.2974693
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -0.4848484   -0.6364516   -0.3332451
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.2774812   -0.6554982    0.1005357
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.2401126   -0.3435183   -0.1367069
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -0.1403639   -0.2956687    0.0149409
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.0746657   -0.1165628    0.2658942
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.0158112   -0.1202124    0.0885900
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                 0.1054449   -0.0498351    0.2607248
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                 0.1391756   -0.2486683    0.5270195
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             NA                -0.0933105   -0.3356548    0.1490338
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  NA                -0.1088959   -0.2405084    0.0227166
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                   NA                -0.0524922   -0.4253843    0.3203998
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             NA                -0.0862723   -0.2207124    0.0481679
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%                  NA                 0.0058551   -0.0957434    0.1074536
6 months    ki1114097-CMIN             PERU                           0%                   NA                 0.9812540    0.5857498    1.3767583
6 months    ki1114097-CMIN             PERU                           (0%, 5%]             NA                 0.8032281    0.6722605    0.9341957
6 months    ki1114097-CMIN             PERU                           >5%                  NA                 0.5040492    0.3786045    0.6294939
6 months    ki1114097-CONTENT          PERU                           0%                   NA                 1.4197500    0.8897030    1.9497970
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             NA                 1.0154953    0.8771516    1.1538390
6 months    ki1114097-CONTENT          PERU                           >5%                  NA                 1.1491642    0.9229924    1.3753360
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.3352953   -0.4065099   -0.2640807
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -0.3939358   -0.4375326   -0.3503391
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -0.5023420   -0.6064787   -0.3982054
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.7608333   -1.7455859    0.2239193
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.8470769   -0.9974369   -0.6967170
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -0.7806579   -0.9895925   -0.5717233
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.1774221   -0.9353259    0.5804817
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.3858702   -0.5259163   -0.2458241
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -0.3908720   -0.5989455   -0.1827985
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.2433333   -0.4146176    0.9012843
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0925000   -0.0570221    0.2420221
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0994231   -0.3337823    0.1349362
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -1.1800000   -1.4547770   -0.9052230
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.9456415   -1.0692081   -0.8220748
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -0.8370172   -1.0005302   -0.6735043
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.9977778   -1.2776954   -0.7178602
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.9191899   -1.0188848   -0.8194949
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -0.8113218   -0.9660153   -0.6566284
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.4551078   -0.6754685   -0.2347472
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.6299569   -0.7609078   -0.4990061
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -0.7328042   -0.8875382   -0.5780703
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                   NA                -0.1044693   -0.4372847    0.2283461
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             NA                -0.0962886   -0.2617235    0.0691464
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                  NA                -0.1810518   -0.2954881   -0.0666156
24 months   ki1114097-CMIN             PERU                           0%                   NA                 0.5925658    0.3448380    0.8402936
24 months   ki1114097-CMIN             PERU                           (0%, 5%]             NA                 0.7705425    0.6506737    0.8904113
24 months   ki1114097-CMIN             PERU                           >5%                  NA                 0.5217975    0.4038981    0.6396970
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -1.2676005   -1.3361637   -1.1990372
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -1.2013911   -1.2362914   -1.1664907
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -1.2550955   -1.3533087   -1.1568823


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0691133   -1.2078629   -0.9303637
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7932203    0.5962220    0.9902187
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3683163   -0.4490504   -0.2875821
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5170513    0.3872178    0.6468847
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.7212766   -0.8346857   -0.6078675
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.1683617   -0.3528233    0.0160999
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0840134   -0.1945572    0.0265305
6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -0.0373373   -0.1163695    0.0416948
6 months    ki1114097-CMIN             PERU                           NA                   NA                 0.6721017    0.5829735    0.7612299
6 months    ki1114097-CONTENT          PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0500935   -0.0748234    0.1750103
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -0.1445508   -0.2343737   -0.0547279
24 months   ki1114097-CMIN             PERU                           NA                   NA                 0.6487715    0.5686942    0.7288488
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2231088   -1.2549632   -1.1912543


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.4220299   -0.9283369    0.0842772
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.4764247   -1.0176215    0.0647720
Birth       ki0047075b-MAL-ED          INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]             0%                -0.2612688   -0.9244477    0.4019101
Birth       ki0047075b-MAL-ED          INDIA                          >5%                  0%                -0.2077066   -0.9433320    0.5279189
Birth       ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0469184   -0.9779640    0.8841272
Birth       ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.0377724   -0.9920296    0.9164847
Birth       ki0047075b-MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]             0%                -0.1723757   -0.7052035    0.3604521
Birth       ki0047075b-MAL-ED          PERU                           >5%                  0%                -0.2804034   -0.8009016    0.2400949
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.2977907   -0.3897089    0.9852903
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1533333   -0.6350103    0.9416770
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                -0.1637652   -0.3510998    0.0235693
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.0904758   -0.3608197    0.1798681
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.3421890   -1.1399669    0.4555890
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.3148746   -1.1166506    0.4869015
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                 0.2077479   -0.5474357    0.9629315
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                  0%                 0.2505195   -0.5119205    1.0129595
6 months    ki0047075b-MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             0%                 0.1558585   -0.5688864    0.8806033
6 months    ki0047075b-MAL-ED          PERU                           >5%                  0%                 0.2074613   -0.5121863    0.9271089
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.2757250   -0.6961539    1.2476040
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.3105282   -0.6713450    1.2924014
6 months    ki1000109-EE               PAKISTAN                       0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]             0%                 0.0528966   -0.2485912    0.3543844
6 months    ki1000109-EE               PAKISTAN                       >5%                  0%                 0.3123774   -0.1569767    0.7817315
6 months    ki1000109-ResPak           PAKISTAN                       0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]             0%                -0.1752520   -1.3951905    1.0446864
6 months    ki1000109-ResPak           PAKISTAN                       >5%                  0%                 0.0665785   -1.1171088    1.2502657
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                 0.5094317   -0.0903842    1.1092476
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0%                 0.1406282   -0.3223611    0.6036175
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                -0.3254424   -0.7001032    0.0492184
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                -0.3988460   -0.7872181   -0.0104739
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0373686   -0.3541225    0.4288598
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.1371173   -0.2710295    0.5452642
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0904769   -0.3074593    0.1265055
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0307792   -0.2144461    0.2760044
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             0%                -0.2324861   -0.6900469    0.2250746
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  0%                -0.2480715   -0.6565724    0.1604293
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             0%                -0.0337800   -0.4298543    0.3622943
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%                  0%                 0.0583473   -0.3280097    0.4447044
6 months    ki1114097-CMIN             PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             PERU                           (0%, 5%]             0%                -0.1780260   -0.5945824    0.2385305
6 months    ki1114097-CMIN             PERU                           >5%                  0%                -0.4772049   -0.8919067   -0.0625030
6 months    ki1114097-CONTENT          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             0%                -0.4042547   -0.9520583    0.1435489
6 months    ki1114097-CONTENT          PERU                           >5%                  0%                -0.2705858   -0.8468700    0.3056984
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                -0.0586405   -0.1393822    0.0221012
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.1670467   -0.2899464   -0.0441470
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0862436   -1.0824091    0.9099219
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.0198246   -1.0264979    0.9868488
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.2084482   -0.9792806    0.5623842
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.2134500   -0.9994201    0.5725201
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.1508333   -0.8255602    0.5238935
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.3427564   -1.0412002    0.3556873
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                 0.2343585   -0.0669240    0.5356410
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                 0.3429828    0.0232346    0.6627310
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0785879   -0.2185534    0.3757292
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.1864559   -0.1333626    0.5062745
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.1748491   -0.4303343    0.0806361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.2776964   -0.5463241   -0.0090687
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             0%                 0.0081807   -0.3635278    0.3798892
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                  0%                -0.0765825   -0.4284881    0.2753230
24 months   ki1114097-CMIN             PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             PERU                           (0%, 5%]             0%                 0.1779767   -0.0978409    0.4537942
24 months   ki1114097-CMIN             PERU                           >5%                  0%                -0.0707683   -0.3452034    0.2036669
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                 0.0662094   -0.0082944    0.1407133
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                 0.0125050   -0.1068112    0.1318212


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.4134034   -0.8740455   0.0472387
Birth       ki0047075b-MAL-ED          INDIA                          0%                   NA                -0.2930893   -0.9159080   0.3297294
Birth       ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0392318   -0.9092184   0.8307548
Birth       ki0047075b-MAL-ED          PERU                           0%                   NA                -0.1756882   -0.6672290   0.3158527
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.2482203   -0.3853218   0.8817624
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.1184485   -0.2592856   0.0223887
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.3231293   -1.0925572   0.4462985
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                 0.2374256   -0.4702796   0.9451308
6 months    ki0047075b-MAL-ED          PERU                           0%                   NA                 0.1815385   -0.5115810   0.8746579
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.2742735   -0.6581096   1.2066566
6 months    ki1000109-EE               PAKISTAN                       0%                   NA                 0.0145181   -0.0569020   0.0859382
6 months    ki1000109-ResPak           PAKISTAN                       0%                   NA                -0.0605822   -1.1958489   1.0746845
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                 0.1903561   -0.2379286   0.6186408
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.3529078   -0.7118998   0.0060843
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.0691107   -0.3090814   0.4473028
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0449035   -0.2176399   0.1278330
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                -0.2231890   -0.5889104   0.1425324
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                   NA                 0.0151549   -0.3531164   0.3834262
6 months    ki1114097-CMIN             PERU                           0%                   NA                -0.3091524   -0.6926458   0.0743411
6 months    ki1114097-CONTENT          PERU                           0%                   NA                -0.3513182   -0.8794617   0.1768252
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0545102   -0.1135211   0.0045007
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.0599921   -1.0242302   0.9042459
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.1990253   -0.9349016   0.5368509
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1932399   -0.8445684   0.4580887
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.2684210   -0.0167391   0.5535810
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.1098366   -0.1753178   0.3949910
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.1552424   -0.3412852   0.0308004
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                   NA                -0.0400815   -0.3675104   0.2873473
24 months   ki1114097-CMIN             PERU                           0%                   NA                 0.0562057   -0.1823264   0.2947379
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.0444917   -0.0111962   0.1001797

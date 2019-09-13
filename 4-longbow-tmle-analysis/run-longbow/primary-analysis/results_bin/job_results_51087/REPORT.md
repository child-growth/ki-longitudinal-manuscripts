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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** safeh20

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        safeh20    stunted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0        0     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1        0     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                0      196     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                1       38     234
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0        0     124
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1        0     124
Birth       ki0047075b-MAL-ED          BRAZIL                         0                0      113     124
Birth       ki0047075b-MAL-ED          BRAZIL                         0                1       11     124
Birth       ki0047075b-MAL-ED          INDIA                          1                0        0     191
Birth       ki0047075b-MAL-ED          INDIA                          1                1        0     191
Birth       ki0047075b-MAL-ED          INDIA                          0                0      161     191
Birth       ki0047075b-MAL-ED          INDIA                          0                1       30     191
Birth       ki0047075b-MAL-ED          NEPAL                          1                0        1     168
Birth       ki0047075b-MAL-ED          NEPAL                          1                1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          0                0      150     168
Birth       ki0047075b-MAL-ED          NEPAL                          0                1       17     168
Birth       ki0047075b-MAL-ED          PERU                           1                0        8     247
Birth       ki0047075b-MAL-ED          PERU                           1                1        1     247
Birth       ki0047075b-MAL-ED          PERU                           0                0      211     247
Birth       ki0047075b-MAL-ED          PERU                           0                1       27     247
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       31     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        2     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      164     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       19     216
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       72     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        7     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       30     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        9     118
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                0       27      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0       22      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0      27
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0    13239   19593
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1     6319   19593
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0       20   19593
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1       15   19593
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0      575     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1      247     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1        0     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0        0     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        0     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0      195     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1       45     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0        0     142
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0     142
6 months    ki0047075b-MAL-ED          BRAZIL                         0                0      140     142
6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        2     142
6 months    ki0047075b-MAL-ED          INDIA                          1                0        0     235
6 months    ki0047075b-MAL-ED          INDIA                          1                1        0     235
6 months    ki0047075b-MAL-ED          INDIA                          0                0      190     235
6 months    ki0047075b-MAL-ED          INDIA                          0                1       45     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                0        1     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                1        0     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                0      221     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                1       11     233
6 months    ki0047075b-MAL-ED          PERU                           1                0        8     259
6 months    ki0047075b-MAL-ED          PERU                           1                1        3     259
6 months    ki0047075b-MAL-ED          PERU                           0                0      195     259
6 months    ki0047075b-MAL-ED          PERU                           0                1       53     259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       27     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1       10     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      172     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       39     248
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0      131     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       37     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       58     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       20     246
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0      217     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1      163     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                0        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                1        0     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0      391     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1      144     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                0        2     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                1        0     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      487     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1       94     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0        0     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        0     581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      565     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1      150     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     715
6 months    ki1114097-CONTENT          PERU                           1                0       52      57
6 months    ki1114097-CONTENT          PERU                           1                1        2      57
6 months    ki1114097-CONTENT          PERU                           0                0        3      57
6 months    ki1114097-CONTENT          PERU                           0                1        0      57
6 months    ki1148112-LCNI-5           MALAWI                         1                0      428     816
6 months    ki1148112-LCNI-5           MALAWI                         1                1      244     816
6 months    ki1148112-LCNI-5           MALAWI                         0                0       92     816
6 months    ki1148112-LCNI-5           MALAWI                         0                1       52     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0    12567   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1     4216   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0       12   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1        8   16803
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     3607    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1     1217    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0        1    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    4825
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      114     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1       98     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0        0     113
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     113
24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      110     113
24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        3     113
24 months   ki0047075b-MAL-ED          INDIA                          1                0        0     227
24 months   ki0047075b-MAL-ED          INDIA                          1                1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          0                0      132     227
24 months   ki0047075b-MAL-ED          INDIA                          0                1       95     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                0        1     226
24 months   ki0047075b-MAL-ED          NEPAL                          1                1        0     226
24 months   ki0047075b-MAL-ED          NEPAL                          0                0      176     226
24 months   ki0047075b-MAL-ED          NEPAL                          0                1       49     226
24 months   ki0047075b-MAL-ED          PERU                           1                0        3     193
24 months   ki0047075b-MAL-ED          PERU                           1                1        4     193
24 months   ki0047075b-MAL-ED          PERU                           0                0      117     193
24 months   ki0047075b-MAL-ED          PERU                           0                1       69     193
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       22     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1       12     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      131     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       72     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       41     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1      104     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       19     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       49     213
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0      190     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1      237     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0        1     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1        1     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      386     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1      190     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0        0     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1        0     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      382     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1      132     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0        0     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     514
24 months   ki1114097-CONTENT          PERU                           1                0       42      48
24 months   ki1114097-CONTENT          PERU                           1                1        3      48
24 months   ki1114097-CONTENT          PERU                           0                0        3      48
24 months   ki1114097-CONTENT          PERU                           0                1        0      48
24 months   ki1148112-LCNI-5           MALAWI                         1                0      265     574
24 months   ki1148112-LCNI-5           MALAWI                         1                1      210     574
24 months   ki1148112-LCNI-5           MALAWI                         0                0       57     574
24 months   ki1148112-LCNI-5           MALAWI                         0                1       42     574
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     4388    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     4224    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0        3    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1        8    8623
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     2884    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1     1862    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0        1    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    4747


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
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/71754add-5606-4927-adcf-f7ad1e8f3702/3c1c21fa-54f6-4640-bc93-80b4a1f268e1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/71754add-5606-4927-adcf-f7ad1e8f3702/3c1c21fa-54f6-4640-bc93-80b4a1f268e1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/71754add-5606-4927-adcf-f7ad1e8f3702/3c1c21fa-54f6-4640-bc93-80b4a1f268e1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/71754add-5606-4927-adcf-f7ad1e8f3702/3c1c21fa-54f6-4640-bc93-80b4a1f268e1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0886076   0.0256757   0.1515395
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2307692   0.0979744   0.3635641
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.3230791   0.3152382   0.3309199
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.4196030   0.4073970   0.4318090
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.2847579   0.1356586   0.4338571
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.1835822   0.1313026   0.2358618
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2128588   0.1502164   0.2755012
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2592574   0.1621072   0.3564075
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                0.3639157   0.3277383   0.4000931
6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                0.3585406   0.2811600   0.4359212
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.2512066   0.2428938   0.2595194
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.4000000   0.3887912   0.4112088
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.3489261   0.1900049   0.5078472
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.3533345   0.2872110   0.4194580
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7077217   0.6344493   0.7809940
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7269495   0.6183442   0.8355549
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.4441821   0.3995800   0.4887843
24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.4324804   0.3355329   0.5294279


### Parameter: E(Y)


agecat      studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1355932   0.0735587   0.1976277
Birth       kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                0.3232787   0.3156210   0.3309364
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.1975806   0.1479246   0.2472367
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2317073   0.1788752   0.2845395
6 months    ki1148112-LCNI-5    MALAWI                         NA                   NA                0.3627451   0.3297365   0.3957537
6 months    kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                0.2513837   0.2432545   0.2595129
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.3544304   0.2934024   0.4154584
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7183099   0.6577588   0.7788609
24 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.4390244   0.3983906   0.4796582


### Parameter: RR


agecat      studyid             country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 2.6043956   1.0440510   6.496690
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 1.2987627   1.2508730   1.348486
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 0.6446958   0.3552901   1.169840
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 1.2179782   0.7603869   1.950942
6 months    ki1148112-LCNI-5    MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5    MALAWI                         0                    1                 0.9852299   0.7785037   1.246851
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 1.5923150   1.5266883   1.660763
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 1.0126343   0.6183669   1.658284
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0271687   0.8569770   1.231160
24 months   ki1148112-LCNI-5    MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5    MALAWI                         0                    1                 0.9736555   0.7620722   1.243983


### Parameter: PAR


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0469856   -0.0030720   0.0970432
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                 0.0001997   -0.0001665   0.0005658
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0871772   -0.2227876   0.0484332
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0188485   -0.0174109   0.0551079
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0011706   -0.0159900   0.0136489
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                 0.0001771   -0.0001696   0.0005239
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0055043   -0.1428349   0.1538436
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0105882   -0.0306632   0.0518396
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0051578   -0.0235309   0.0132154


### Parameter: PAF


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3465190   -0.1012469   0.6122237
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                 0.0006176   -0.0005227   0.0017566
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.4412235   -1.3165572   0.1033569
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0813463   -0.0895192   0.2254155
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0032270   -0.0449251   0.0368072
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                 0.0007045   -0.0006877   0.0020948
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0155301   -0.5059391   0.3564275
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0147404   -0.0444092   0.0705401
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0117482   -0.0544900   0.0292611

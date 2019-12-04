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

**Outcome Variable:** sstunted

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
* W_mwtkg
* W_mbmi
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
* delta_W_mwtkg
* delta_W_mbmi
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

agecat      studyid                    country                        safeh20    sstunted   n_cell       n
----------  -------------------------  -----------------------------  --------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0        0     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1        0     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0      207     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1        6     213
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0        0      41
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        0      41
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0       38      41
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        3      41
Birth       ki0047075b-MAL-ED          INDIA                          1                 0        0      41
Birth       ki0047075b-MAL-ED          INDIA                          1                 1        0      41
Birth       ki0047075b-MAL-ED          INDIA                          0                 0       39      41
Birth       ki0047075b-MAL-ED          INDIA                          0                 1        2      41
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0       24      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1        1      26
Birth       ki0047075b-MAL-ED          PERU                           1                 0        9     207
Birth       ki0047075b-MAL-ED          PERU                           1                 1        0     207
Birth       ki0047075b-MAL-ED          PERU                           0                 0      194     207
Birth       ki0047075b-MAL-ED          PERU                           0                 1        4     207
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       13      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       82      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       74     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        5     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       37     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        3     119
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 0      587     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 1       19     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 0        2     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 1        0     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 0       45      45
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 1        0      45
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                 0        0      45
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                 1        0      45
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      722     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       10     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 0        0     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        0     732
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0    19952   22432
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2440   22432
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0       32   22432
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1        8   22432
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0     2587    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1      233    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0        0    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1        0    2820
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0        0     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        0     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0      232     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        8     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0        0     142
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        0     142
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0      142     142
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     142
6 months    ki0047075b-MAL-ED          INDIA                          1                 0        0     235
6 months    ki0047075b-MAL-ED          INDIA                          1                 1        0     235
6 months    ki0047075b-MAL-ED          INDIA                          0                 0      226     235
6 months    ki0047075b-MAL-ED          INDIA                          0                 1        9     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0        1     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        0     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      232     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        0     233
6 months    ki0047075b-MAL-ED          PERU                           1                 0       11     259
6 months    ki0047075b-MAL-ED          PERU                           1                 1        0     259
6 months    ki0047075b-MAL-ED          PERU                           0                 0      239     259
6 months    ki0047075b-MAL-ED          PERU                           0                 1        9     259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       35     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        2     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      207     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        4     248
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0      159     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        9     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       73     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        5     246
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0      326     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 1       54     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                 0        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                 1        0     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 0      500     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 1       35     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 0        2     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 1        0     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0       11      11
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        0      11
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0        0      11
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1        0      11
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      692     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       23     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 0        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        0     715
6 months    ki1114097-CONTENT          PERU                           1                 0       54      57
6 months    ki1114097-CONTENT          PERU                           1                 1        0      57
6 months    ki1114097-CONTENT          PERU                           0                 0        3      57
6 months    ki1114097-CONTENT          PERU                           0                 1        0      57
6 months    ki1148112-LCNI-5           MALAWI                         1                 0      620     816
6 months    ki1148112-LCNI-5           MALAWI                         1                 1       52     816
6 months    ki1148112-LCNI-5           MALAWI                         0                 0      131     816
6 months    ki1148112-LCNI-5           MALAWI                         0                 1       13     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0    15767   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1     1016   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0       17   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1        3   16803
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0     4553    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1      271    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0        1    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1        0    4825
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0      184     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1       28     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0        0     113
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        0     113
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      113     113
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        0     113
24 months   ki0047075b-MAL-ED          INDIA                          1                 0        0     227
24 months   ki0047075b-MAL-ED          INDIA                          1                 1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          0                 0      197     227
24 months   ki0047075b-MAL-ED          INDIA                          0                 1       30     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0        1     226
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0     226
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      218     226
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        7     226
24 months   ki0047075b-MAL-ED          PERU                           1                 0        5     193
24 months   ki0047075b-MAL-ED          PERU                           1                 1        2     193
24 months   ki0047075b-MAL-ED          PERU                           0                 0      173     193
24 months   ki0047075b-MAL-ED          PERU                           0                 1       13     193
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       29     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        5     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      181     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1       22     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       96     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1       49     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       47     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1       21     213
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 0      332     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 1       95     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 0        2     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 1        0     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0        8       9
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        1       9
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0        0       9
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1        0       9
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      478     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       36     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0        0     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        0     514
24 months   ki1114097-CONTENT          PERU                           1                 0       45      48
24 months   ki1114097-CONTENT          PERU                           1                 1        0      48
24 months   ki1114097-CONTENT          PERU                           0                 0        3      48
24 months   ki1114097-CONTENT          PERU                           0                 1        0      48
24 months   ki1148112-LCNI-5           MALAWI                         1                 0      419     574
24 months   ki1148112-LCNI-5           MALAWI                         1                 1       56     574
24 months   ki1148112-LCNI-5           MALAWI                         0                 0       86     574
24 months   ki1148112-LCNI-5           MALAWI                         0                 1       13     574
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     7268    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     1344    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0       10    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1        1    8623
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     4294    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      452    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0        1    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1        0    4747


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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/ad55372f-6597-407d-98d6-260c68b1456e/75ac1b9c-d3fc-4610-84fa-f945ec489dda/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ad55372f-6597-407d-98d6-260c68b1456e/75ac1b9c-d3fc-4610-84fa-f945ec489dda/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ad55372f-6597-407d-98d6-260c68b1456e/75ac1b9c-d3fc-4610-84fa-f945ec489dda/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ad55372f-6597-407d-98d6-260c68b1456e/75ac1b9c-d3fc-4610-84fa-f945ec489dda/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.1089675   0.1043043   0.1136306
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.2000000   0.1907007   0.2092993
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0535714   0.0194530   0.0876898
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0641026   0.0096351   0.1185700
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                0.0769862   0.0568700   0.0971025
6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                0.0962781   0.0497338   0.1428224
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.1470588   0.0277612   0.2663565
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.1083744   0.0655222   0.1512266
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3312076   0.2548975   0.4075177
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3342682   0.2227501   0.4457862
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.1178201   0.0887734   0.1468668
24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.1281972   0.0603240   0.1960705


### Parameter: E(Y)


agecat      studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                0.1091298   0.1045720   0.1136876
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0569106   0.0279012   0.0859199
6 months    ki1148112-LCNI-5    MALAWI                         NA                   NA                0.0796569   0.0610679   0.0982459
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.1139241   0.0733886   0.1544595
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3286385   0.2654093   0.3918677
24 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.1202091   0.0935816   0.1468365


### Parameter: RR


agecat      studyid             country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 1.8354098   1.7237409   1.954313
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 1.1965812   0.4137839   3.460276
6 months    ki1148112-LCNI-5    MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5    MALAWI                         0                    1                 1.2505883   0.7233287   2.162186
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 0.7369458   0.2988839   1.817057
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0092407   0.6760022   1.506751
24 months   ki1148112-LCNI-5    MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5    MALAWI                         0                    1                 1.0880761   0.6068050   1.951054


### Parameter: PAR


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                 0.0001623   -0.0001034   0.0004281
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0033391   -0.0170487   0.0237270
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0026707   -0.0062030   0.0115444
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0331348   -0.1417241   0.0754545
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0025691   -0.0449094   0.0397712
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0023890   -0.0101557   0.0149336


### Parameter: PAF


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                 0.0014875   -0.0009747   0.0039436
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0586735   -0.3756562   0.3558742
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0335269   -0.0843319   0.1385754
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.2908497   -1.6933735   0.3813361
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0078174   -0.1452498   0.1131229
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0198733   -0.0901785   0.1188156

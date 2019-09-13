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

agecat      studyid                    country                        safeh20    sstunted   n_cell       n
----------  -------------------------  -----------------------------  --------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0        0     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1        0     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0      228     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1        6     234
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0        0     124
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        0     124
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0      120     124
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        4     124
Birth       ki0047075b-MAL-ED          INDIA                          1                 0        0     191
Birth       ki0047075b-MAL-ED          INDIA                          1                 1        0     191
Birth       ki0047075b-MAL-ED          INDIA                          0                 0      184     191
Birth       ki0047075b-MAL-ED          INDIA                          0                 1        7     191
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0        1     168
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0      162     168
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1        5     168
Birth       ki0047075b-MAL-ED          PERU                           1                 0        9     247
Birth       ki0047075b-MAL-ED          PERU                           1                 1        0     247
Birth       ki0047075b-MAL-ED          PERU                           0                 0      231     247
Birth       ki0047075b-MAL-ED          PERU                           0                 1        7     247
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       33     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      182     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1     216
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       76     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        3     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       37     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        2     118
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 0       28      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       26      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 0        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        0      27
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0    17524   19593
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2034   19593
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0       28   19593
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1        7   19593
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0      758     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1       64     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1        0     822
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
6 months    ki0047075b-MAL-ED          PERU                           0                 0      237     259
6 months    ki0047075b-MAL-ED          PERU                           0                 1       11     259
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      567     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       14     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0        0     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1        0     581
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
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0     4554    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1      270    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0        1    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1        0    4825
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0      186     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1       26     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0        0     113
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        0     113
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      113     113
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        0     113
24 months   ki0047075b-MAL-ED          INDIA                          1                 0        0     227
24 months   ki0047075b-MAL-ED          INDIA                          1                 1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          0                 0      199     227
24 months   ki0047075b-MAL-ED          INDIA                          0                 1       28     227
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
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      182     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1       21     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       96     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1       49     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       48     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1       20     213
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 0      334     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 1       93     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 0        2     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 1        0     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      527     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       49     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0        0     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1        0     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      479     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       35     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0        0     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        0     514
24 months   ki1114097-CONTENT          PERU                           1                 0       45      48
24 months   ki1114097-CONTENT          PERU                           1                 1        0      48
24 months   ki1114097-CONTENT          PERU                           0                 0        3      48
24 months   ki1114097-CONTENT          PERU                           0                 1        0      48
24 months   ki1148112-LCNI-5           MALAWI                         1                 0      420     574
24 months   ki1148112-LCNI-5           MALAWI                         1                 1       55     574
24 months   ki1148112-LCNI-5           MALAWI                         0                 0       88     574
24 months   ki1148112-LCNI-5           MALAWI                         0                 1       11     574
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     7269    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     1343    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0       10    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1        1    8623
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     4310    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      436    4747
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
![](/tmp/8e63a2d9-b65e-4eeb-b07a-7d15462d3300/26d614c4-7a37-4866-bde3-0b4ddc0f0dbe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8e63a2d9-b65e-4eeb-b07a-7d15462d3300/26d614c4-7a37-4866-bde3-0b4ddc0f0dbe/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8e63a2d9-b65e-4eeb-b07a-7d15462d3300/26d614c4-7a37-4866-bde3-0b4ddc0f0dbe/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8e63a2d9-b65e-4eeb-b07a-7d15462d3300/26d614c4-7a37-4866-bde3-0b4ddc0f0dbe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.1039984   0.0992162   0.1087805
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.2000000   0.1898289   0.2101711
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0535714   0.0194530   0.0876898
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0641026   0.0096351   0.1185700
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                0.0766337   0.0564888   0.0967785
6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                0.0877010   0.0392884   0.1361135
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.1470588   0.0277612   0.2663565
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.1034483   0.0614658   0.1454307
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3258401   0.2494813   0.4021989
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2825969   0.1738950   0.3912989
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.1156941   0.0868451   0.1445431
24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.1053829   0.0420730   0.1686928


### Parameter: E(Y)


agecat      studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                0.1041699   0.0994949   0.1088448
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0569106   0.0279012   0.0859199
6 months    ki1148112-LCNI-5    MALAWI                         NA                   NA                0.0796569   0.0610679   0.0982459
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.1097046   0.0698323   0.1495770
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3239437   0.2609486   0.3869387
24 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.1149826   0.0888632   0.1411019


### Parameter: RR


agecat      studyid             country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 1.9231072   1.7965427   2.058588
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 1.1965812   0.4137839   3.460276
6 months    ki1148112-LCNI-5    MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5    MALAWI                         0                    1                 1.1444180   0.6218746   2.106039
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 0.7034483   0.2839848   1.742486
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 0.8672871   0.5559522   1.352970
24 months   ki1148112-LCNI-5    MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5    MALAWI                         0                    1                 0.9108750   0.4750185   1.746655


### Parameter: PAR


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                 0.0001715   -0.0001220   0.0004650
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0033391   -0.0170487   0.0237270
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0030232   -0.0058583   0.0119046
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0373542   -0.1456977   0.0709893
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0018964   -0.0432348   0.0394419
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0007115   -0.0125646   0.0111415


### Parameter: PAF


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                 0.0016463   -0.0012009   0.0044854
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0586735   -0.3756562   0.3558742
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0379527   -0.0800958   0.1430991
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.3404977   -1.7895855   0.3558419
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0058542   -0.1418797   0.1139673
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0061883   -0.1147266   0.0917819

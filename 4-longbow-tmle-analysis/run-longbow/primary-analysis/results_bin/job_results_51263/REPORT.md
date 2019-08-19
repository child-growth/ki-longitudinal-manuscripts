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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** earlybf

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_vagbrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                   country                        earlybf    wasted   n_cell       n
----------  ------------------------  -----------------------------  --------  -------  -------  ------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1               0      130     240
Birth       ki0047075b-MAL-ED         BANGLADESH                     1               1       22     240
Birth       ki0047075b-MAL-ED         BANGLADESH                     0               0       70     240
Birth       ki0047075b-MAL-ED         BANGLADESH                     0               1       18     240
Birth       ki0047075b-MAL-ED         BRAZIL                         1               0       77     183
Birth       ki0047075b-MAL-ED         BRAZIL                         1               1        2     183
Birth       ki0047075b-MAL-ED         BRAZIL                         0               0      100     183
Birth       ki0047075b-MAL-ED         BRAZIL                         0               1        4     183
Birth       ki0047075b-MAL-ED         INDIA                          1               0      104     202
Birth       ki0047075b-MAL-ED         INDIA                          1               1       19     202
Birth       ki0047075b-MAL-ED         INDIA                          0               0       65     202
Birth       ki0047075b-MAL-ED         INDIA                          0               1       14     202
Birth       ki0047075b-MAL-ED         NEPAL                          1               0       65     168
Birth       ki0047075b-MAL-ED         NEPAL                          1               1       12     168
Birth       ki0047075b-MAL-ED         NEPAL                          0               0       83     168
Birth       ki0047075b-MAL-ED         NEPAL                          0               1        8     168
Birth       ki0047075b-MAL-ED         PERU                           1               0      207     279
Birth       ki0047075b-MAL-ED         PERU                           1               1        4     279
Birth       ki0047075b-MAL-ED         PERU                           0               0       66     279
Birth       ki0047075b-MAL-ED         PERU                           0               1        2     279
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1               0      148     245
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1               1        6     245
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0               0       81     245
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0               1       10     245
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               0      106     118
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               1        2     118
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               0       10     118
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               1        0     118
Birth       ki1000109-EE              PAKISTAN                       1               0        1       1
Birth       ki1000109-EE              PAKISTAN                       1               1        0       1
Birth       ki1000109-EE              PAKISTAN                       0               0        0       1
Birth       ki1000109-EE              PAKISTAN                       0               1        0       1
Birth       ki1000304b-SAS-CompFeed   INDIA                          1               0       13     158
Birth       ki1000304b-SAS-CompFeed   INDIA                          1               1        0     158
Birth       ki1000304b-SAS-CompFeed   INDIA                          0               0      135     158
Birth       ki1000304b-SAS-CompFeed   INDIA                          0               1       10     158
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1               0       17      23
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1               1        2      23
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0               0        3      23
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0               1        1      23
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1               0     5320   11513
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1               1      821   11513
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0               0     4314   11513
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0               1     1058   11513
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1               0       81   15648
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1               1       12   15648
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0               0    14066   15648
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0               1     1489   15648
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1               0      453     683
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1               1       22     683
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0               0      194     683
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0               1       14     683
6 months    ki0047075b-MAL-ED         BANGLADESH                     1               0      142     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     1               1        5     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0               0       90     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0               1        3     240
6 months    ki0047075b-MAL-ED         BRAZIL                         1               0       94     209
6 months    ki0047075b-MAL-ED         BRAZIL                         1               1        1     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0               0      114     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0               1        0     209
6 months    ki0047075b-MAL-ED         INDIA                          1               0      128     236
6 months    ki0047075b-MAL-ED         INDIA                          1               1       12     236
6 months    ki0047075b-MAL-ED         INDIA                          0               0       90     236
6 months    ki0047075b-MAL-ED         INDIA                          0               1        6     236
6 months    ki0047075b-MAL-ED         NEPAL                          1               0       94     236
6 months    ki0047075b-MAL-ED         NEPAL                          1               1        2     236
6 months    ki0047075b-MAL-ED         NEPAL                          0               0      138     236
6 months    ki0047075b-MAL-ED         NEPAL                          0               1        2     236
6 months    ki0047075b-MAL-ED         PERU                           1               0      202     273
6 months    ki0047075b-MAL-ED         PERU                           1               1        0     273
6 months    ki0047075b-MAL-ED         PERU                           0               0       71     273
6 months    ki0047075b-MAL-ED         PERU                           0               1        0     273
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1               0      151     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1               1        5     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0               0       92     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0               1        2     250
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               0      204     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               1        1     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               0       42     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               1        0     247
6 months    ki1000109-EE              PAKISTAN                       1               0       62     376
6 months    ki1000109-EE              PAKISTAN                       1               1        7     376
6 months    ki1000109-EE              PAKISTAN                       0               0      265     376
6 months    ki1000109-EE              PAKISTAN                       0               1       42     376
6 months    ki1000304b-SAS-CompFeed   INDIA                          1               0       87    1334
6 months    ki1000304b-SAS-CompFeed   INDIA                          1               1       10    1334
6 months    ki1000304b-SAS-CompFeed   INDIA                          0               0     1081    1334
6 months    ki1000304b-SAS-CompFeed   INDIA                          0               1      156    1334
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1               0      601     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1               1       18     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0               0       93     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0               1        3     715
6 months    ki1113344-GMS-Nepal       NEPAL                          1               0      138     510
6 months    ki1113344-GMS-Nepal       NEPAL                          1               1       13     510
6 months    ki1113344-GMS-Nepal       NEPAL                          0               0      324     510
6 months    ki1113344-GMS-Nepal       NEPAL                          0               1       35     510
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1               0     3832    7339
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1               1      119    7339
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0               0     3269    7339
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0               1      119    7339
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1               0       28   16784
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1               1        8   16784
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0               0    15335   16784
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0               1     1413   16784
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1               0     2921    4833
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1               1      174    4833
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0               0     1637    4833
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0               1      101    4833
24 months   ki0047075b-MAL-ED         BANGLADESH                     1               0      116     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     1               1       12     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0               0       74     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0               1        9     211
24 months   ki0047075b-MAL-ED         BRAZIL                         1               0       79     169
24 months   ki0047075b-MAL-ED         BRAZIL                         1               1        1     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0               0       87     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0               1        2     169
24 months   ki0047075b-MAL-ED         INDIA                          1               0      115     227
24 months   ki0047075b-MAL-ED         INDIA                          1               1       19     227
24 months   ki0047075b-MAL-ED         INDIA                          0               0       85     227
24 months   ki0047075b-MAL-ED         INDIA                          0               1        8     227
24 months   ki0047075b-MAL-ED         NEPAL                          1               0       94     228
24 months   ki0047075b-MAL-ED         NEPAL                          1               1        1     228
24 months   ki0047075b-MAL-ED         NEPAL                          0               0      129     228
24 months   ki0047075b-MAL-ED         NEPAL                          0               1        4     228
24 months   ki0047075b-MAL-ED         PERU                           1               0      146     201
24 months   ki0047075b-MAL-ED         PERU                           1               1        3     201
24 months   ki0047075b-MAL-ED         PERU                           0               0       52     201
24 months   ki0047075b-MAL-ED         PERU                           0               1        0     201
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1               0      144     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1               1        0     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0               0       90     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0               1        1     235
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               0      178     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               1        2     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               0       32     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               1        2     214
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1               0      399     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1               1       44     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0               0       70     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0               1        1     514
24 months   ki1113344-GMS-Nepal       NEPAL                          1               0      113     454
24 months   ki1113344-GMS-Nepal       NEPAL                          1               1       23     454
24 months   ki1113344-GMS-Nepal       NEPAL                          0               0      258     454
24 months   ki1113344-GMS-Nepal       NEPAL                          0               1       60     454
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1               0      167     370
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1               1       31     370
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0               0      135     370
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0               1       37     370
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1               0        1    8603
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1               1        0    8603
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0               0     6724    8603
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0               1     1878    8603
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1               0     2433    4735
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1               1      598    4735
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0               0     1382    4735
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0               1      322    4735


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/b2a89e7c-b352-4f4f-b198-9046265c675a/39a8bb34-2e92-4bfc-adca-6b8ffbf4674d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b2a89e7c-b352-4f4f-b198-9046265c675a/39a8bb34-2e92-4bfc-adca-6b8ffbf4674d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b2a89e7c-b352-4f4f-b198-9046265c675a/39a8bb34-2e92-4bfc-adca-6b8ffbf4674d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b2a89e7c-b352-4f4f-b198-9046265c675a/39a8bb34-2e92-4bfc-adca-6b8ffbf4674d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.1447478   0.0882642   0.2012314
Birth       ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.2040258   0.1184719   0.2895798
Birth       ki0047075b-MAL-ED         INDIA          1                    NA                0.1490222   0.0842849   0.2137594
Birth       ki0047075b-MAL-ED         INDIA          0                    NA                0.1619935   0.0757003   0.2482868
Birth       ki0047075b-MAL-ED         NEPAL          1                    NA                0.1558442   0.0745881   0.2371002
Birth       ki0047075b-MAL-ED         NEPAL          0                    NA                0.0879121   0.0295587   0.1462655
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.0389610   0.0083371   0.0695850
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.1098901   0.0455004   0.1742798
Birth       ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.1630700   0.1562335   0.1699065
Birth       ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.1634012   0.1565449   0.1702576
Birth       kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1242288   0.1047731   0.1436846
Birth       kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.0957340   0.0903990   0.1010690
Birth       kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.0464103   0.0235808   0.0692398
Birth       kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.0685827   0.0337094   0.1034559
6 months    ki0047075b-MAL-ED         INDIA          1                    NA                0.0857143   0.0392442   0.1321844
6 months    ki0047075b-MAL-ED         INDIA          0                    NA                0.0625000   0.0139756   0.1110244
6 months    ki1000109-EE              PAKISTAN       1                    NA                0.1014493   0.0301151   0.1727834
6 months    ki1000109-EE              PAKISTAN       0                    NA                0.1368078   0.0983162   0.1752995
6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.1709216   0.0729186   0.2689247
6 months    ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.1258323   0.0989194   0.1527451
6 months    ki1113344-GMS-Nepal       NEPAL          1                    NA                0.0830356   0.0391200   0.1269512
6 months    ki1113344-GMS-Nepal       NEPAL          0                    NA                0.0978664   0.0668637   0.1288690
6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0303331   0.0249764   0.0356897
6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0350699   0.0287764   0.0413635
6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.2222222   0.2115818   0.2328627
6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.0843683   0.0794631   0.0892735
6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.0569266   0.0462428   0.0676105
6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.0569156   0.0418879   0.0719432
24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.0937500   0.0431344   0.1443656
24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.1084337   0.0413836   0.1754839
24 months   ki0047075b-MAL-ED         INDIA          1                    NA                0.1417910   0.0825974   0.2009847
24 months   ki0047075b-MAL-ED         INDIA          0                    NA                0.0860215   0.0289083   0.1431348
24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.1714904   0.1054744   0.2375064
24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.1897645   0.1462164   0.2333126
24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.1599757   0.1088637   0.2110877
24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.2103434   0.1486922   0.2719947
24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.1961394   0.1801596   0.2121192
24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.1919965   0.1683459   0.2156472


### Parameter: E(Y)


agecat      studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.1666667   0.1194187   0.2139146
Birth       ki0047075b-MAL-ED         INDIA          NA                   NA                0.1633663   0.1122571   0.2144755
Birth       ki0047075b-MAL-ED         NEPAL          NA                   NA                0.1190476   0.0699312   0.1681640
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   NA                   NA                0.0653061   0.0343059   0.0963063
Birth       ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.1632068   0.1564561   0.1699575
Birth       kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0959228   0.0907196   0.1011260
Birth       kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.0527086   0.0336587   0.0717585
6 months    ki0047075b-MAL-ED         INDIA          NA                   NA                0.0762712   0.0423347   0.1102077
6 months    ki1000109-EE              PAKISTAN       NA                   NA                0.1303191   0.0962457   0.1643926
6 months    ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.1244378   0.0992652   0.1496104
6 months    ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.0941176   0.0687511   0.1194842
6 months    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0324295   0.0283765   0.0364824
6 months    kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0846640   0.0798626   0.0894653
6 months    kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.0569005   0.0480577   0.0657432
24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.0995261   0.0590366   0.1400156
24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.1189427   0.0767376   0.1611478
24 months   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.1828194   0.1472260   0.2184128
24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.1837838   0.1442661   0.2233014
24 months   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.1942978   0.1810880   0.2075076


### Parameter: RR


agecat      studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH     0                    1                 1.4095265   0.7936650   2.5032791
Birth       ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         INDIA          0                    1                 1.0870434   0.5447217   2.1692972
Birth       ki0047075b-MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         NEPAL          0                    1                 0.5641026   0.2425417   1.3119879
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   0                    1                 2.8205128   1.0581628   7.5180229
Birth       ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 1.0020315   0.9880990   1.0161604
Birth       kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH     0                    1                 0.7706259   0.6509802   0.9122616
Birth       kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH     0                    1                 1.4777474   0.7282190   2.9987369
6 months    ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         INDIA          0                    1                 0.7291667   0.2828607   1.8796674
6 months    ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE              PAKISTAN       0                    1                 1.3485342   0.6323362   2.8759137
6 months    ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA          0                    1                 0.7361986   0.3697876   1.4656746
6 months    ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL          0                    1                 1.1786073   0.6355512   2.1856858
6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 1.1561619   0.8989661   1.4869420
6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    1                 0.3796573   0.3526532   0.4087292
6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    1                 0.9998059   0.7280452   1.3730080
24 months   ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH     0                    1                 1.1566265   0.5089650   2.6284418
24 months   ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         INDIA          0                    1                 0.6066780   0.2769161   1.3291323
24 months   ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL          0                    1                 1.1065605   0.7064052   1.7333904
24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 1.3148462   0.8510042   2.0315065
24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    1                 0.9788780   0.8448389   1.1341833


### Parameter: PAR


agecat      studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0219189   -0.0159298    0.0597676
Birth       ki0047075b-MAL-ED         INDIA          1                    NA                 0.0143442   -0.0280700    0.0567583
Birth       ki0047075b-MAL-ED         NEPAL          1                    NA                -0.0367965   -0.0912266    0.0176335
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                 0.0263451   -0.0004851    0.0531753
Birth       ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0001368   -0.0010237    0.0012974
Birth       kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -0.0283060   -0.0482151   -0.0083969
Birth       kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0062983   -0.0063367    0.0189334
6 months    ki0047075b-MAL-ED         INDIA          1                    NA                -0.0094431   -0.0368123    0.0179261
6 months    ki1000109-EE              PAKISTAN       1                    NA                 0.0288699   -0.0373265    0.0950662
6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0464838   -0.1547824    0.0618147
6 months    ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0110820   -0.0267757    0.0489398
6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0020964   -0.0017245    0.0059173
6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -0.1375583   -0.1488080   -0.1263085
6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0000261   -0.0065618    0.0065096
24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0057761   -0.0272847    0.0388368
24 months   ki0047075b-MAL-ED         INDIA          1                    NA                -0.0228483   -0.0567365    0.0110399
24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0113290   -0.0450915    0.0677495
24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0238081   -0.0137846    0.0614008
24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0018416   -0.0119482    0.0082649


### Parameter: PAF


agecat      studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.1315133   -0.1255782    0.3298829
Birth       ki0047075b-MAL-ED         INDIA          1                    NA                 0.0878037   -0.2126157    0.3137958
Birth       ki0047075b-MAL-ED         NEPAL          1                    NA                -0.3090909   -0.8398806    0.0685705
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                 0.4034091   -0.1048887    0.6778674
Birth       ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0008384   -0.0062974    0.0079237
Birth       kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -0.2950918   -0.5249609   -0.0998727
Birth       kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.1194937   -0.1609458    0.3321898
6 months    ki0047075b-MAL-ED         INDIA          1                    NA                -0.1238095   -0.5418020    0.1808625
6 months    ki1000109-EE              PAKISTAN       1                    NA                 0.2215321   -0.4900633    0.5932976
6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.3735509   -1.6658955    0.2923046
6 months    ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.1177467   -0.3899794    0.4400127
6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0646455   -0.0605428    0.1750563
6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -1.6247556   -1.8169228   -1.4456979
6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0004594   -0.1221795    0.1080580
24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0580357   -0.3393097    0.3374970
24 months   ki0047075b-MAL-ED         INDIA          1                    NA                -0.1920951   -0.5068616    0.0569202
24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0619681   -0.3034129    0.3249232
24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.1295441   -0.0991322    0.3106439
24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0094783   -0.0629158    0.0412725

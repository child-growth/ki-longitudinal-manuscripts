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

agecat      studyid                   country                        earlybf    sstunted   n_cell       n
----------  ------------------------  -----------------------------  --------  ---------  -------  ------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                 0      157     256
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                 1        2     256
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                 0       90     256
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                 1        7     256
Birth       ki0047075b-MAL-ED         BRAZIL                         1                 0       79     191
Birth       ki0047075b-MAL-ED         BRAZIL                         1                 1        4     191
Birth       ki0047075b-MAL-ED         BRAZIL                         0                 0      104     191
Birth       ki0047075b-MAL-ED         BRAZIL                         0                 1        4     191
Birth       ki0047075b-MAL-ED         INDIA                          1                 0      121     205
Birth       ki0047075b-MAL-ED         INDIA                          1                 1        3     205
Birth       ki0047075b-MAL-ED         INDIA                          0                 0       77     205
Birth       ki0047075b-MAL-ED         INDIA                          0                 1        4     205
Birth       ki0047075b-MAL-ED         NEPAL                          1                 0       77     173
Birth       ki0047075b-MAL-ED         NEPAL                          1                 1        2     173
Birth       ki0047075b-MAL-ED         NEPAL                          0                 0       90     173
Birth       ki0047075b-MAL-ED         NEPAL                          0                 1        4     173
Birth       ki0047075b-MAL-ED         PERU                           1                 0      211     287
Birth       ki0047075b-MAL-ED         PERU                           1                 1        3     287
Birth       ki0047075b-MAL-ED         PERU                           0                 0       68     287
Birth       ki0047075b-MAL-ED         PERU                           0                 1        5     287
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                 0      155     247
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                 1        0     247
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                 0       91     247
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                 1        1     247
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 0      107     123
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 1        4     123
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 0       10     123
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 1        2     123
Birth       ki1000109-EE              PAKISTAN                       1                 0        1       2
Birth       ki1000109-EE              PAKISTAN                       1                 1        0       2
Birth       ki1000109-EE              PAKISTAN                       0                 0        1       2
Birth       ki1000109-EE              PAKISTAN                       0                 1        0       2
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                 0       13     177
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                 1        1     177
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                 0      155     177
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                 1        8     177
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                 0       22      27
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                 1        1      27
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                 0        4      27
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                 1        0      27
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                 0     6365   12319
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                 1      168   12319
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                 0     5569   12319
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                 1      217   12319
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                 0      129   19541
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                 1       83   19541
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                 0    17376   19541
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                 1     1953   19541
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                 0      528     822
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                 1       38     822
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                 0      230     822
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                 1       26     822
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                 0      142     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                 1        5     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                 0       90     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                 1        3     240
6 months    ki0047075b-MAL-ED         BRAZIL                         1                 0       95     209
6 months    ki0047075b-MAL-ED         BRAZIL                         1                 1        0     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0                 0      114     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0                 1        0     209
6 months    ki0047075b-MAL-ED         INDIA                          1                 0      135     236
6 months    ki0047075b-MAL-ED         INDIA                          1                 1        5     236
6 months    ki0047075b-MAL-ED         INDIA                          0                 0       92     236
6 months    ki0047075b-MAL-ED         INDIA                          0                 1        4     236
6 months    ki0047075b-MAL-ED         NEPAL                          1                 0       96     236
6 months    ki0047075b-MAL-ED         NEPAL                          1                 1        0     236
6 months    ki0047075b-MAL-ED         NEPAL                          0                 0      139     236
6 months    ki0047075b-MAL-ED         NEPAL                          0                 1        1     236
6 months    ki0047075b-MAL-ED         PERU                           1                 0      192     273
6 months    ki0047075b-MAL-ED         PERU                           1                 1       10     273
6 months    ki0047075b-MAL-ED         PERU                           0                 0       69     273
6 months    ki0047075b-MAL-ED         PERU                           0                 1        2     273
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                 0      155     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                 1        1     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                 0       89     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                 1        5     250
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 0      197     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 1        8     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 0       36     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 1        6     247
6 months    ki1000109-EE              PAKISTAN                       1                 0       52     372
6 months    ki1000109-EE              PAKISTAN                       1                 1       16     372
6 months    ki1000109-EE              PAKISTAN                       0                 0      226     372
6 months    ki1000109-EE              PAKISTAN                       0                 1       78     372
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                 0       92    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                 1        6    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                 0     1116    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                 1      122    1336
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                 0      599     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                 1       20     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                 0       93     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                 1        3     715
6 months    ki1113344-GMS-Nepal       NEPAL                          1                 0      147     510
6 months    ki1113344-GMS-Nepal       NEPAL                          1                 1        4     510
6 months    ki1113344-GMS-Nepal       NEPAL                          0                 0      347     510
6 months    ki1113344-GMS-Nepal       NEPAL                          0                 1       12     510
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                 0     3816    7365
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                 1      152    7365
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                 0     3244    7365
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                 1      153    7365
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                 0       21   16811
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                 1       14   16811
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                 0    15770   16811
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                 1     1006   16811
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                 0     2929    4831
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                 1      165    4831
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                 0     1632    4831
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                 1      105    4831
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                 0      113     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                 1       15     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                 0       72     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                 1       11     211
24 months   ki0047075b-MAL-ED         BRAZIL                         1                 0       79     169
24 months   ki0047075b-MAL-ED         BRAZIL                         1                 1        1     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0                 0       89     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0                 1        0     169
24 months   ki0047075b-MAL-ED         INDIA                          1                 0      114     227
24 months   ki0047075b-MAL-ED         INDIA                          1                 1       20     227
24 months   ki0047075b-MAL-ED         INDIA                          0                 0       85     227
24 months   ki0047075b-MAL-ED         INDIA                          0                 1        8     227
24 months   ki0047075b-MAL-ED         NEPAL                          1                 0       94     228
24 months   ki0047075b-MAL-ED         NEPAL                          1                 1        1     228
24 months   ki0047075b-MAL-ED         NEPAL                          0                 0      127     228
24 months   ki0047075b-MAL-ED         NEPAL                          0                 1        6     228
24 months   ki0047075b-MAL-ED         PERU                           1                 0      136     201
24 months   ki0047075b-MAL-ED         PERU                           1                 1       13     201
24 months   ki0047075b-MAL-ED         PERU                           0                 0       50     201
24 months   ki0047075b-MAL-ED         PERU                           0                 1        2     201
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                 0      125     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                 1       19     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                 0       85     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                 1        6     235
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 0      127     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 1       53     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 0       18     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 1       16     214
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                 0      410     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                 1       33     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                 0       69     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                 1        2     514
24 months   ki1113344-GMS-Nepal       NEPAL                          1                 0      131     455
24 months   ki1113344-GMS-Nepal       NEPAL                          1                 1        5     455
24 months   ki1113344-GMS-Nepal       NEPAL                          0                 0      276     455
24 months   ki1113344-GMS-Nepal       NEPAL                          0                 1       43     455
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                 0      150     399
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                 1       64     399
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                 0      137     399
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                 1       48     399
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                 0        1    8632
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                 1        0    8632
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                 0     7285    8632
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                 1     1346    8632
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                 0     2762    4752
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                 1      280    4752
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                 0     1553    4752
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                 1      157    4752


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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/5c48460c-c563-4465-a11d-a996419b9e7a/67affec1-002d-48b8-bec2-04caa47f668d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5c48460c-c563-4465-a11d-a996419b9e7a/67affec1-002d-48b8-bec2-04caa47f668d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5c48460c-c563-4465-a11d-a996419b9e7a/67affec1-002d-48b8-bec2-04caa47f668d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5c48460c-c563-4465-a11d-a996419b9e7a/67affec1-002d-48b8-bec2-04caa47f668d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.0308257   0.0277342   0.0339171
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.0316815   0.0285294   0.0348336
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1077823   0.1031072   0.1124573
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.1040658   0.0993859   0.1087457
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.0811754   0.0580568   0.1042940
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.0762431   0.0527012   0.0997849
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0390244   0.0124614   0.0655873
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1428571   0.0368142   0.2489001
6 months    ki1000109-EE              PAKISTAN                       1                    NA                0.2322044   0.1276730   0.3367358
6 months    ki1000109-EE              PAKISTAN                       0                    NA                0.2579640   0.2086681   0.3072599
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.0612245   0.0218241   0.1006248
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.0985460   0.0798882   0.1172039
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.0422387   0.0361416   0.0483358
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.0399304   0.0334397   0.0464211
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.3574156   0.3439156   0.3709156
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.0600009   0.0560703   0.0639315
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.0530737   0.0449310   0.0612164
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.0593363   0.0481619   0.0705106
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1149656   0.0589052   0.1710261
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1179036   0.0524912   0.1833160
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.1492537   0.0887869   0.2097205
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.0860215   0.0289083   0.1431348
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.1319444   0.0765505   0.1873384
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.0659341   0.0148369   0.1170313
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2958254   0.2286676   0.3629831
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4527269   0.2835963   0.6218576
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.0367647   0.0051027   0.0684267
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.1347962   0.0972792   0.1723133
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.3001856   0.2396178   0.3607535
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.2606165   0.1973684   0.3238646
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.0919283   0.0804291   0.1034275
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.0914776   0.0755036   0.1074517


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.0312525   0.0281798   0.0343253
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.1041912   0.0995112   0.1088712
Birth       kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.0778589   0.0559066   0.0998111
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0566802   0.0277850   0.0855754
6 months    ki1000109-EE              PAKISTAN                       NA                   NA                0.2526882   0.2084696   0.2969067
6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.0958084   0.0774939   0.1141229
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.0414121   0.0368615   0.0459627
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.0606746   0.0568229   0.0645262
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.0558890   0.0491390   0.0626391
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1232227   0.0787669   0.1676786
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1233480   0.0804760   0.1662200
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.1063830   0.0668780   0.1458880
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3224299   0.2596598   0.3852000
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.1054945   0.0772375   0.1337515
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.2807018   0.2365565   0.3248470
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.0919613   0.0825825   0.1013401


### Parameter: RR


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  -----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                 1.0000000   1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 1.0277630   0.9935282    1.0631775
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 0.9655187   0.9597277    0.9713446
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 0.9392389   0.7713329    1.1436951
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 3.6607143   1.3371210   10.0221514
6 months    ki1000109-EE              PAKISTAN                       1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1000109-EE              PAKISTAN                       0                    1                 1.1109353   0.6816802    1.8104928
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.6095854   0.8339140    3.1067532
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 0.9453514   0.7644873    1.1690046
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 0.1678742   0.1557428    0.1809505
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 1.1179974   0.8826509    1.4160957
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 1.0255555   0.4876495    2.1568032
24 months   ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED         INDIA                          0                    1                 0.5763441   0.2647859    1.2544945
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 0.4997108   0.2069845    1.2064229
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.5303858   0.9911136    2.3630800
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 3.6664577   1.4831414    9.0638102
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 0.8681844   0.6361618    1.1848309
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 0.9950977   0.8045050    1.2308431


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0004269   -0.0001792    0.0010330
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0035911   -0.0041692   -0.0030129
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0033165   -0.0090286    0.0023957
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0176558   -0.0015614    0.0368729
6 months    ki1000109-EE              PAKISTAN                       1                    NA                 0.0204838   -0.0751652    0.1161328
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0345839   -0.0039983    0.0731661
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0008266   -0.0050533    0.0034001
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.2967410   -0.3103999   -0.2830821
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0028154   -0.0019530    0.0075837
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0082571   -0.0295109    0.0460252
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0259057   -0.0602223    0.0084109
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0255615   -0.0550335    0.0039106
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0266045   -0.0034175    0.0566266
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0687298    0.0340649    0.1033947
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0194839   -0.0595334    0.0205656
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0000330   -0.0069753    0.0070413


### Parameter: PAF


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0136588   -0.0058819    0.0328199
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0344661   -0.0403477   -0.0286178
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0425962   -0.1186348    0.0282737
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3114983   -0.0691645    0.5566308
6 months    ki1000109-EE              PAKISTAN                       1                    NA                 0.0810636   -0.3872799    0.3912950
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.3609694   -0.1862100    0.6557438
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0199604   -0.1274213    0.0772577
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -4.8906991   -5.3210317   -4.4896633
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0503740   -0.0389258    0.1319981
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0670099   -0.2945589    0.3275930
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.2100213   -0.5147936    0.0334316
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.2402778   -0.5378475   -0.0002871
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0825126   -0.0154590    0.1710319
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.6515012    0.2152505    0.8452355
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0694114   -0.2221121    0.0642097
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0003586   -0.0788295    0.0737341

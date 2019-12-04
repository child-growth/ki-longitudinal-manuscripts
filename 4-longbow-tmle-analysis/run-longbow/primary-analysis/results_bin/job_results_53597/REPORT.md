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
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
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
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
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
Birth       ki0047075b-MAL-ED         BANGLADESH                     1               0      120     214
Birth       ki0047075b-MAL-ED         BANGLADESH                     1               1       20     214
Birth       ki0047075b-MAL-ED         BANGLADESH                     0               0       58     214
Birth       ki0047075b-MAL-ED         BANGLADESH                     0               1       16     214
Birth       ki0047075b-MAL-ED         BRAZIL                         1               0       25      62
Birth       ki0047075b-MAL-ED         BRAZIL                         1               1        1      62
Birth       ki0047075b-MAL-ED         BRAZIL                         0               0       35      62
Birth       ki0047075b-MAL-ED         BRAZIL                         0               1        1      62
Birth       ki0047075b-MAL-ED         INDIA                          1               0       27      44
Birth       ki0047075b-MAL-ED         INDIA                          1               1        4      44
Birth       ki0047075b-MAL-ED         INDIA                          0               0       12      44
Birth       ki0047075b-MAL-ED         INDIA                          0               1        1      44
Birth       ki0047075b-MAL-ED         NEPAL                          1               0       13      26
Birth       ki0047075b-MAL-ED         NEPAL                          1               1        1      26
Birth       ki0047075b-MAL-ED         NEPAL                          0               0       11      26
Birth       ki0047075b-MAL-ED         NEPAL                          0               1        1      26
Birth       ki0047075b-MAL-ED         PERU                           1               0      169     228
Birth       ki0047075b-MAL-ED         PERU                           1               1        3     228
Birth       ki0047075b-MAL-ED         PERU                           0               0       54     228
Birth       ki0047075b-MAL-ED         PERU                           0               1        2     228
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1               0       64     110
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1               1        5     110
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0               0       36     110
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0               1        5     110
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               0      102     115
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               1        1     115
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               0       12     115
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               1        0     115
Birth       ki1000109-EE              PAKISTAN                       1               0       34     170
Birth       ki1000109-EE              PAKISTAN                       1               1        2     170
Birth       ki1000109-EE              PAKISTAN                       0               0      115     170
Birth       ki1000109-EE              PAKISTAN                       0               1       19     170
Birth       ki1000304b-SAS-CompFeed   INDIA                          1               0       69    1072
Birth       ki1000304b-SAS-CompFeed   INDIA                          1               1       10    1072
Birth       ki1000304b-SAS-CompFeed   INDIA                          0               0      888    1072
Birth       ki1000304b-SAS-CompFeed   INDIA                          0               1      105    1072
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1               0      465     707
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1               1      148     707
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0               0       70     707
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0               1       24     707
Birth       ki1113344-GMS-Nepal       NEPAL                          1               0      129     586
Birth       ki1113344-GMS-Nepal       NEPAL                          1               1       42     586
Birth       ki1113344-GMS-Nepal       NEPAL                          0               0      332     586
Birth       ki1113344-GMS-Nepal       NEPAL                          0               1       83     586
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1               0     5320   11514
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1               1      822   11514
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0               0     4314   11514
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0               1     1058   11514
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1               0       89   17943
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1               1       16   17943
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0               0    15888   17943
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0               1     1950   17943
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1               0     1477    2396
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1               1      147    2396
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0               0      680    2396
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0               1       92    2396
6 months    ki0047075b-MAL-ED         BANGLADESH                     1               0      142     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     1               1        5     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0               0       90     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0               1        3     240
6 months    ki0047075b-MAL-ED         BRAZIL                         1               0       94     209
6 months    ki0047075b-MAL-ED         BRAZIL                         1               1        1     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0               0      114     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0               1        0     209
6 months    ki0047075b-MAL-ED         INDIA                          1               0      127     236
6 months    ki0047075b-MAL-ED         INDIA                          1               1       13     236
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
6 months    ki1000109-EE              PAKISTAN                       1               0       62     364
6 months    ki1000109-EE              PAKISTAN                       1               1        7     364
6 months    ki1000109-EE              PAKISTAN                       0               0      256     364
6 months    ki1000109-EE              PAKISTAN                       0               1       39     364
6 months    ki1000304b-SAS-CompFeed   INDIA                          1               0       87    1334
6 months    ki1000304b-SAS-CompFeed   INDIA                          1               1       10    1334
6 months    ki1000304b-SAS-CompFeed   INDIA                          0               0     1081    1334
6 months    ki1000304b-SAS-CompFeed   INDIA                          0               1      156    1334
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1               0      601     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1               1       18     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0               0       93     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0               1        3     715
6 months    ki1113344-GMS-Nepal       NEPAL                          1               0      138     511
6 months    ki1113344-GMS-Nepal       NEPAL                          1               1       13     511
6 months    ki1113344-GMS-Nepal       NEPAL                          0               0      325     511
6 months    ki1113344-GMS-Nepal       NEPAL                          0               1       35     511
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1               0     3946    7553
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1               1      119    7553
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0               0     3369    7553
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0               1      119    7553
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
24 months   ki0047075b-MAL-ED         PERU                           1               0      145     201
24 months   ki0047075b-MAL-ED         PERU                           1               1        4     201
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
24 months   ki1000109-EE              PAKISTAN                       1               0       28     164
24 months   ki1000109-EE              PAKISTAN                       1               1        4     164
24 months   ki1000109-EE              PAKISTAN                       0               0      106     164
24 months   ki1000109-EE              PAKISTAN                       0               1       26     164
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1               0      399     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1               1       44     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0               0       70     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0               1        1     514
24 months   ki1113344-GMS-Nepal       NEPAL                          1               0      108     444
24 months   ki1113344-GMS-Nepal       NEPAL                          1               1       23     444
24 months   ki1113344-GMS-Nepal       NEPAL                          0               0      253     444
24 months   ki1113344-GMS-Nepal       NEPAL                          0               1       60     444
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1               0      169     379
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1               1       32     379
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0               0      139     379
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0               1       39     379
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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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
![](/tmp/597d7134-f79e-4a44-bf39-181b13260995/9711c50f-6c9a-4037-9e18-04cf13852ca2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/597d7134-f79e-4a44-bf39-181b13260995/9711c50f-6c9a-4037-9e18-04cf13852ca2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/597d7134-f79e-4a44-bf39-181b13260995/9711c50f-6c9a-4037-9e18-04cf13852ca2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/597d7134-f79e-4a44-bf39-181b13260995/9711c50f-6c9a-4037-9e18-04cf13852ca2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.1475231   0.0893369   0.2057094
Birth       ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.2367646   0.1426886   0.3308406
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.0724638   0.0110123   0.1339153
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.1219512   0.0213295   0.2225729
Birth       ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.1800632   0.1035793   0.2565471
Birth       ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.1058739   0.0785273   0.1332206
Birth       ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.2428230   0.2088738   0.2767722
Birth       ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.2438189   0.1552685   0.3323693
Birth       ki1113344-GMS-Nepal       NEPAL          1                    NA                0.2081382   0.1694337   0.2468426
Birth       ki1113344-GMS-Nepal       NEPAL          0                    NA                0.2160006   0.1819026   0.2500987
Birth       ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.1630816   0.1562432   0.1699200
Birth       ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.1635747   0.1566862   0.1704633
Birth       kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1495931   0.1317755   0.1674108
Birth       kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.1093160   0.1040611   0.1145710
Birth       kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.0992562   0.0837755   0.1147370
Birth       kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.1008940   0.0842060   0.1175820
6 months    ki0047075b-MAL-ED         INDIA          1                    NA                0.0928571   0.0446788   0.1410355
6 months    ki0047075b-MAL-ED         INDIA          0                    NA                0.0625000   0.0139756   0.1110244
6 months    ki1000109-EE              PAKISTAN       1                    NA                0.1014493   0.0301120   0.1727866
6 months    ki1000109-EE              PAKISTAN       0                    NA                0.1322034   0.0934986   0.1709082
6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.1709216   0.0729186   0.2689247
6 months    ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.1258323   0.0989194   0.1527451
6 months    ki1113344-GMS-Nepal       NEPAL          1                    NA                0.0878252   0.0427756   0.1328748
6 months    ki1113344-GMS-Nepal       NEPAL          0                    NA                0.0974651   0.0667844   0.1281459
6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0294381   0.0241991   0.0346771
6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0338807   0.0278178   0.0399436
6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.2222222   0.2115818   0.2328627
6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.0843683   0.0794631   0.0892735
6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.0569341   0.0464762   0.0673919
6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.0572616   0.0420169   0.0725063
24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.0937500   0.0431344   0.1443656
24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.1084337   0.0413836   0.1754839
24 months   ki0047075b-MAL-ED         INDIA          1                    NA                0.1417910   0.0825974   0.2009847
24 months   ki0047075b-MAL-ED         INDIA          0                    NA                0.0860215   0.0289083   0.1431348
24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.1758332   0.1106835   0.2409829
24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.1934509   0.1497193   0.2371824
24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.1689276   0.1159703   0.2218849
24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.2067434   0.1468020   0.2666847
24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.1964232   0.1804228   0.2124236
24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.1936469   0.1700052   0.2172885


### Parameter: E(Y)


agecat      studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.1682243   0.1179894   0.2184592
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   NA                   NA                0.0909091   0.0369404   0.1448778
Birth       ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.1072761   0.0774575   0.1370947
Birth       ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.2432815   0.2116319   0.2749310
Birth       ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.2133106   0.1801152   0.2465060
Birth       ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.1632795   0.1565278   0.1700311
Birth       kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.1095692   0.1044330   0.1147054
Birth       kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.0997496   0.0843744   0.1151247
6 months    ki0047075b-MAL-ED         INDIA          NA                   NA                0.0805085   0.0457221   0.1152948
6 months    ki1000109-EE              PAKISTAN       NA                   NA                0.1263736   0.0921925   0.1605547
6 months    ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.1244378   0.0992652   0.1496104
6 months    ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.0939335   0.0686141   0.1192529
6 months    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0315107   0.0275707   0.0354506
6 months    kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0846640   0.0798626   0.0894653
6 months    kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.0569005   0.0480577   0.0657432
24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.0995261   0.0590366   0.1400156
24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.1189427   0.0767376   0.1611478
24 months   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.1869369   0.1506328   0.2232411
24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.1873351   0.1480011   0.2266690
24 months   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.1942978   0.1810880   0.2075076


### Parameter: RR


agecat      studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH     0                    1                 1.6049323   0.9145966   2.8163321
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   0                    1                 1.6829268   0.5154797   5.4943827
Birth       ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA          0                    1                 0.5879820   0.4013737   0.8613489
Birth       ki1017093c-NIH-Crypto     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto     BANGLADESH     0                    1                 1.0041012   0.6803333   1.4819490
Birth       ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal       NEPAL          0                    1                 1.0377753   0.9159760   1.1757705
Birth       ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 1.0030240   0.9880529   1.0182220
Birth       kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH     0                    1                 0.7307558   0.6422462   0.8314631
Birth       kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH     0                    1                 1.0165000   0.9361667   1.1037267
6 months    ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         INDIA          0                    1                 0.6730769   0.2645580   1.7124128
6 months    ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE              PAKISTAN       0                    1                 1.3031477   0.6084070   2.7912135
6 months    ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA          0                    1                 0.7361986   0.3697876   1.4656746
6 months    ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL          0                    1                 1.1097627   0.6078403   2.0261462
6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 1.1509137   0.8945643   1.4807234
6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    1                 0.3796573   0.3526532   0.4087292
6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    1                 1.0057532   0.7325746   1.3808008
24 months   ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH     0                    1                 1.1566265   0.5089650   2.6284418
24 months   ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         INDIA          0                    1                 0.6066780   0.2769161   1.3291323
24 months   ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL          0                    1                 1.1001953   0.7137583   1.6958538
24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 1.2238577   0.7988497   1.8749806
24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    1                 0.9858656   0.8517625   1.1410822


### Parameter: PAR


agecat      studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0207012   -0.0183400    0.0597423
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                 0.0184453   -0.0257292    0.0626198
Birth       ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0727871   -0.1370597   -0.0085145
Birth       ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                 0.0004585   -0.0122052    0.0131221
Birth       ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0051724   -0.0140350    0.0243798
Birth       ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0001979   -0.0010178    0.0014136
Birth       kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -0.0400239   -0.0582132   -0.0218347
Birth       kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0004934   -0.0022044    0.0031912
6 months    ki0047075b-MAL-ED         INDIA          1                    NA                -0.0123487   -0.0402294    0.0155320
6 months    ki1000109-EE              PAKISTAN       1                    NA                 0.0249244   -0.0408632    0.0907119
6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0464838   -0.1547824    0.0618147
6 months    ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0061083   -0.0323780    0.0445945
6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0020726   -0.0016667    0.0058118
6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -0.1375583   -0.1488080   -0.1263085
6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0000336   -0.0064517    0.0063846
24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0057761   -0.0272847    0.0388368
24 months   ki0047075b-MAL-ED         INDIA          1                    NA                -0.0228483   -0.0567365    0.0110399
24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0111037   -0.0440940    0.0663015
24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0184075   -0.0205829    0.0573978
24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0021254   -0.0122349    0.0079841


### Parameter: PAF


agecat      studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.1230570   -0.1383139    0.3244139
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                 0.2028986   -0.4432286    0.5597574
Birth       ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.6785021   -1.3824932   -0.1825298
Birth       ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                 0.0018845   -0.0515478    0.0526017
Birth       ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0242483   -0.0702564    0.1104081
Birth       ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0012120   -0.0062607    0.0086293
Birth       kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -0.3652845   -0.5468583   -0.2050243
Birth       kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0049460   -0.0224437    0.0316019
6 months    ki0047075b-MAL-ED         INDIA          1                    NA                -0.1533835   -0.5504312    0.1419849
6 months    ki1000109-EE              PAKISTAN       1                    NA                 0.1972275   -0.5313880    0.5791767
6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.3735509   -1.6658955    0.2923046
6 months    ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0650276   -0.4484356    0.3964706
6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0657737   -0.0604287    0.1769566
6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -1.6247556   -1.8169228   -1.4456979
6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0005901   -0.1199991    0.1060880
24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0580357   -0.3393097    0.3374970
24 months   ki0047075b-MAL-ED         INDIA          1                    NA                -0.1920951   -0.5068616    0.0569202
24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0593983   -0.2873129    0.3127300
24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0982597   -0.1349102    0.2835243
24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0109389   -0.0643984    0.0398356

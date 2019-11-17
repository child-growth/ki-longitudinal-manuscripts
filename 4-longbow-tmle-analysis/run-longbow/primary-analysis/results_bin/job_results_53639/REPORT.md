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

**Outcome Variable:** swasted

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

agecat      studyid                   country                        earlybf    swasted   n_cell       n
----------  ------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                0      135     214
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                1        5     214
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                0       71     214
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                1        3     214
Birth       ki0047075b-MAL-ED         BRAZIL                         1                0       26      62
Birth       ki0047075b-MAL-ED         BRAZIL                         1                1        0      62
Birth       ki0047075b-MAL-ED         BRAZIL                         0                0       36      62
Birth       ki0047075b-MAL-ED         BRAZIL                         0                1        0      62
Birth       ki0047075b-MAL-ED         INDIA                          1                0       31      44
Birth       ki0047075b-MAL-ED         INDIA                          1                1        0      44
Birth       ki0047075b-MAL-ED         INDIA                          0                0       13      44
Birth       ki0047075b-MAL-ED         INDIA                          0                1        0      44
Birth       ki0047075b-MAL-ED         NEPAL                          1                0       14      26
Birth       ki0047075b-MAL-ED         NEPAL                          1                1        0      26
Birth       ki0047075b-MAL-ED         NEPAL                          0                0       11      26
Birth       ki0047075b-MAL-ED         NEPAL                          0                1        1      26
Birth       ki0047075b-MAL-ED         PERU                           1                0      172     228
Birth       ki0047075b-MAL-ED         PERU                           1                1        0     228
Birth       ki0047075b-MAL-ED         PERU                           0                0       56     228
Birth       ki0047075b-MAL-ED         PERU                           0                1        0     228
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                0       69     110
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                1        0     110
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       41     110
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                1        0     110
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      103     115
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1        0     115
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       12     115
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        0     115
Birth       ki1000109-EE              PAKISTAN                       1                0       34     170
Birth       ki1000109-EE              PAKISTAN                       1                1        2     170
Birth       ki1000109-EE              PAKISTAN                       0                0      130     170
Birth       ki1000109-EE              PAKISTAN                       0                1        4     170
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                0       77    1072
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                1        2    1072
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                0      968    1072
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                1       25    1072
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                0      571     707
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                1       42     707
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                0       89     707
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                1        5     707
Birth       ki1113344-GMS-Nepal       NEPAL                          1                0      162     586
Birth       ki1113344-GMS-Nepal       NEPAL                          1                1        9     586
Birth       ki1113344-GMS-Nepal       NEPAL                          0                0      398     586
Birth       ki1113344-GMS-Nepal       NEPAL                          0                1       17     586
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                0     5862   11514
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                1      280   11514
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                0     4929   11514
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                1      443   11514
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                0      103   17943
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                1        2   17943
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                0    17492   17943
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                1      346   17943
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                0     1611    2396
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                1       13    2396
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                0      754    2396
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                1       18    2396
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                0      147     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                1        0     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                0       91     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                1        2     240
6 months    ki0047075b-MAL-ED         BRAZIL                         1                0       95     209
6 months    ki0047075b-MAL-ED         BRAZIL                         1                1        0     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0                0      114     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0                1        0     209
6 months    ki0047075b-MAL-ED         INDIA                          1                0      136     236
6 months    ki0047075b-MAL-ED         INDIA                          1                1        4     236
6 months    ki0047075b-MAL-ED         INDIA                          0                0       94     236
6 months    ki0047075b-MAL-ED         INDIA                          0                1        2     236
6 months    ki0047075b-MAL-ED         NEPAL                          1                0       96     236
6 months    ki0047075b-MAL-ED         NEPAL                          1                1        0     236
6 months    ki0047075b-MAL-ED         NEPAL                          0                0      140     236
6 months    ki0047075b-MAL-ED         NEPAL                          0                1        0     236
6 months    ki0047075b-MAL-ED         PERU                           1                0      202     273
6 months    ki0047075b-MAL-ED         PERU                           1                1        0     273
6 months    ki0047075b-MAL-ED         PERU                           0                0       71     273
6 months    ki0047075b-MAL-ED         PERU                           0                1        0     273
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                0      153     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                1        3     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       94     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                1        0     250
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      205     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1        0     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       42     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        0     247
6 months    ki1000109-EE              PAKISTAN                       1                0       67     364
6 months    ki1000109-EE              PAKISTAN                       1                1        2     364
6 months    ki1000109-EE              PAKISTAN                       0                0      285     364
6 months    ki1000109-EE              PAKISTAN                       0                1       10     364
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                0       92    1334
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                1        5    1334
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                0     1199    1334
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                1       38    1334
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                0      619     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                1        0     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                0       96     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                1        0     715
6 months    ki1113344-GMS-Nepal       NEPAL                          1                0      148     511
6 months    ki1113344-GMS-Nepal       NEPAL                          1                1        3     511
6 months    ki1113344-GMS-Nepal       NEPAL                          0                0      356     511
6 months    ki1113344-GMS-Nepal       NEPAL                          0                1        4     511
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                0     4030    7553
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                1       35    7553
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                0     3454    7553
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                1       34    7553
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                0       36   16784
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                1        0   16784
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                0    16518   16784
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                1      230   16784
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                0     3073    4833
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                1       22    4833
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                0     1727    4833
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                1       11    4833
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                0      128     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                1        0     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                0       83     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                1        0     211
24 months   ki0047075b-MAL-ED         BRAZIL                         1                0       79     169
24 months   ki0047075b-MAL-ED         BRAZIL                         1                1        1     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0                0       89     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0                1        0     169
24 months   ki0047075b-MAL-ED         INDIA                          1                0      133     227
24 months   ki0047075b-MAL-ED         INDIA                          1                1        1     227
24 months   ki0047075b-MAL-ED         INDIA                          0                0       92     227
24 months   ki0047075b-MAL-ED         INDIA                          0                1        1     227
24 months   ki0047075b-MAL-ED         NEPAL                          1                0       95     228
24 months   ki0047075b-MAL-ED         NEPAL                          1                1        0     228
24 months   ki0047075b-MAL-ED         NEPAL                          0                0      133     228
24 months   ki0047075b-MAL-ED         NEPAL                          0                1        0     228
24 months   ki0047075b-MAL-ED         PERU                           1                0      147     201
24 months   ki0047075b-MAL-ED         PERU                           1                1        2     201
24 months   ki0047075b-MAL-ED         PERU                           0                0       52     201
24 months   ki0047075b-MAL-ED         PERU                           0                1        0     201
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                0      144     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                1        0     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       91     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                1        0     235
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      180     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1        0     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       34     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        0     214
24 months   ki1000109-EE              PAKISTAN                       1                0       32     164
24 months   ki1000109-EE              PAKISTAN                       1                1        0     164
24 months   ki1000109-EE              PAKISTAN                       0                0      128     164
24 months   ki1000109-EE              PAKISTAN                       0                1        4     164
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                0      439     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                1        4     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                0       71     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                1        0     514
24 months   ki1113344-GMS-Nepal       NEPAL                          1                0      129     444
24 months   ki1113344-GMS-Nepal       NEPAL                          1                1        2     444
24 months   ki1113344-GMS-Nepal       NEPAL                          0                0      302     444
24 months   ki1113344-GMS-Nepal       NEPAL                          0                1       11     444
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                0      187     379
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                1       14     379
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                0      163     379
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                1       15     379
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                0        1    8603
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                1        0    8603
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                0     8267    8603
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                1      335    8603
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                0     2957    4735
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                1       74    4735
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                0     1649    4735
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                1       55    4735


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/a862cbb3-11b6-4421-bd1f-1d2b7ad2d3cd/ba459513-71f3-48ea-ab44-2b5e28425970/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a862cbb3-11b6-4421-bd1f-1d2b7ad2d3cd/ba459513-71f3-48ea-ab44-2b5e28425970/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a862cbb3-11b6-4421-bd1f-1d2b7ad2d3cd/ba459513-71f3-48ea-ab44-2b5e28425970/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a862cbb3-11b6-4421-bd1f-1d2b7ad2d3cd/ba459513-71f3-48ea-ab44-2b5e28425970/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093c-NIH-Crypto     BANGLADESH   1                    NA                0.0685155   0.0485027   0.0885283
Birth       ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                0.0531915   0.0077928   0.0985902
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                0.0526316   0.0191348   0.0861284
Birth       ki1113344-GMS-Nepal       NEPAL        0                    NA                0.0409639   0.0218779   0.0600498
Birth       ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0615209   0.0570146   0.0660272
Birth       ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0637644   0.0591577   0.0683712
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0080133   0.0039730   0.0120536
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0236005   0.0091403   0.0380607
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0515464   0.0256358   0.0774570
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0307195   0.0217846   0.0396544
6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0089383   0.0059655   0.0119111
6 months    ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0094658   0.0062487   0.0126829
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0071331   0.0031433   0.0111228
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0063376   0.0026528   0.0100225
24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0710800   0.0356123   0.1065478
24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0821658   0.0418945   0.1224370
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0245386   0.0183027   0.0307746
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0316932   0.0226790   0.0407075


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.0664781   0.0481022   0.0848539
Birth       ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.0443686   0.0276826   0.0610546
Birth       ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0627931   0.0583619   0.0672244
Birth       kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0129382   0.0075150   0.0183614
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0322339   0.0235219   0.0409459
6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0091354   0.0069896   0.0112812
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0068281   0.0038634   0.0097927
24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0765172   0.0497195   0.1033148
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0272439   0.0220352   0.0324527


### Parameter: RR


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1017093c-NIH-Crypto     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto     BANGLADESH   0                    1                 0.7763425   0.3149772   1.913496
Birth       ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal       NEPAL        0                    1                 0.7783133   0.3536728   1.712802
Birth       ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE     0                    1                 1.0364682   1.0011657   1.073015
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    1                 2.9451701   1.3226722   6.557957
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                 0.5959580   0.3210516   1.106258
6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE     0                    1                 1.0590112   0.6582685   1.703719
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 0.8884872   0.4012888   1.967185
24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    1                 1.1559615   0.5773714   2.314363
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.2915643   0.8853630   1.884129


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093c-NIH-Crypto     BANGLADESH   1                    NA                -0.0020374   -0.0086451   0.0045702
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0082630   -0.0355690   0.0190431
Birth       ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0012722    0.0000844   0.0024601
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0049249    0.0000233   0.0098266
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0193125   -0.0457136   0.0070885
6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0001971   -0.0019079   0.0023021
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0003050   -0.0021885   0.0015785
24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0054371   -0.0195064   0.0303807
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0027053   -0.0012325   0.0066430


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093c-NIH-Crypto     BANGLADESH   1                    NA                -0.0306480   -0.1346550   0.0638253
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.1862348   -0.9869502   0.2918026
Birth       ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0202608    0.0012070   0.0389512
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.3806503    0.0094427   0.6127492
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.5991369   -1.7539793   0.0714386
6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0215790   -0.2381650   0.2268335
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0446704   -0.3530983   0.1934539
24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0710576   -0.3186202   0.3455780
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0992985   -0.0569064   0.2324172

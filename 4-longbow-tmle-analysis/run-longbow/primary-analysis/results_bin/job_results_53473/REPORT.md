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

agecat      studyid                   country                        earlybf    sstunted   n_cell       n
----------  ------------------------  -----------------------------  --------  ---------  -------  ------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                 0      145     230
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                 1        2     230
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                 0       76     230
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                 1        7     230
Birth       ki0047075b-MAL-ED         BRAZIL                         1                 0       26      65
Birth       ki0047075b-MAL-ED         BRAZIL                         1                 1        2      65
Birth       ki0047075b-MAL-ED         BRAZIL                         0                 0       36      65
Birth       ki0047075b-MAL-ED         BRAZIL                         0                 1        1      65
Birth       ki0047075b-MAL-ED         INDIA                          1                 0       31      46
Birth       ki0047075b-MAL-ED         INDIA                          1                 1        1      46
Birth       ki0047075b-MAL-ED         INDIA                          0                 0       13      46
Birth       ki0047075b-MAL-ED         INDIA                          0                 1        1      46
Birth       ki0047075b-MAL-ED         NEPAL                          1                 0       14      27
Birth       ki0047075b-MAL-ED         NEPAL                          1                 1        0      27
Birth       ki0047075b-MAL-ED         NEPAL                          0                 0       12      27
Birth       ki0047075b-MAL-ED         NEPAL                          0                 1        1      27
Birth       ki0047075b-MAL-ED         PERU                           1                 0      173     233
Birth       ki0047075b-MAL-ED         PERU                           1                 1        2     233
Birth       ki0047075b-MAL-ED         PERU                           0                 0       56     233
Birth       ki0047075b-MAL-ED         PERU                           0                 1        2     233
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                 0       69     111
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                 1        0     111
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                 0       41     111
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                 1        1     111
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 0      103     125
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 1        8     125
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 0       12     125
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 1        2     125
Birth       ki1000109-EE              PAKISTAN                       1                 0       38     229
Birth       ki1000109-EE              PAKISTAN                       1                 1        6     229
Birth       ki1000109-EE              PAKISTAN                       0                 0      145     229
Birth       ki1000109-EE              PAKISTAN                       0                 1       40     229
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                 0       81    1207
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                 1        5    1207
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                 0     1046    1207
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                 1       75    1207
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                 0      628     732
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                 1        6     732
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                 0       94     732
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                 1        4     732
Birth       ki1113344-GMS-Nepal       NEPAL                          1                 0      176     632
Birth       ki1113344-GMS-Nepal       NEPAL                          1                 1        4     632
Birth       ki1113344-GMS-Nepal       NEPAL                          0                 0      431     632
Birth       ki1113344-GMS-Nepal       NEPAL                          0                 1       21     632
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                 0     6387   12354
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                 1      169   12354
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                 0     5581   12354
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                 1      217   12354
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                 0      142   22370
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                 1       94   22370
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                 0    19786   22370
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                 1     2348   22370
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                 0     1764    2823
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                 1      148    2823
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                 0      826    2823
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                 1       85    2823
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
6 months    ki0047075b-MAL-ED         PERU                           1                 0      193     273
6 months    ki0047075b-MAL-ED         PERU                           1                 1        9     273
6 months    ki0047075b-MAL-ED         PERU                           0                 0       70     273
6 months    ki0047075b-MAL-ED         PERU                           0                 1        1     273
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                 0      155     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                 1        1     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                 0       89     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                 1        5     250
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 0      197     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 1        8     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 0       36     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 1        6     247
6 months    ki1000109-EE              PAKISTAN                       1                 0       54     362
6 months    ki1000109-EE              PAKISTAN                       1                 1       14     362
6 months    ki1000109-EE              PAKISTAN                       0                 0      229     362
6 months    ki1000109-EE              PAKISTAN                       0                 1       65     362
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                 0       92    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                 1        6    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                 0     1116    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                 1      122    1336
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                 0      599     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                 1       20     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                 0       93     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                 1        3     715
6 months    ki1113344-GMS-Nepal       NEPAL                          1                 0      147     511
6 months    ki1113344-GMS-Nepal       NEPAL                          1                 1        4     511
6 months    ki1113344-GMS-Nepal       NEPAL                          0                 0      347     511
6 months    ki1113344-GMS-Nepal       NEPAL                          0                 1       13     511
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                 0     3994    7698
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                 1      152    7698
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                 0     3395    7698
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                 1      157    7698
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                 0       21   16811
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                 1       14   16811
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                 0    15770   16811
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                 1     1006   16811
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                 0     2929    4831
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                 1      165    4831
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                 0     1631    4831
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                 1      106    4831
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                 0      112     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                 1       16     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                 0       71     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                 1       12     211
24 months   ki0047075b-MAL-ED         BRAZIL                         1                 0       79     169
24 months   ki0047075b-MAL-ED         BRAZIL                         1                 1        1     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0                 0       89     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0                 1        0     169
24 months   ki0047075b-MAL-ED         INDIA                          1                 0      114     227
24 months   ki0047075b-MAL-ED         INDIA                          1                 1       20     227
24 months   ki0047075b-MAL-ED         INDIA                          0                 0       83     227
24 months   ki0047075b-MAL-ED         INDIA                          0                 1       10     227
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
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                 0       84     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                 1        7     235
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 0      126     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 1       54     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 0       18     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 1       16     214
24 months   ki1000109-EE              PAKISTAN                       1                 0       20     164
24 months   ki1000109-EE              PAKISTAN                       1                 1       12     164
24 months   ki1000109-EE              PAKISTAN                       0                 0       87     164
24 months   ki1000109-EE              PAKISTAN                       0                 1       45     164
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                 0      409     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                 1       34     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                 0       69     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                 1        2     514
24 months   ki1113344-GMS-Nepal       NEPAL                          1                 0      126     445
24 months   ki1113344-GMS-Nepal       NEPAL                          1                 1        5     445
24 months   ki1113344-GMS-Nepal       NEPAL                          0                 0      271     445
24 months   ki1113344-GMS-Nepal       NEPAL                          0                 1       43     445
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                 0      637    1406
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                 1       80    1406
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                 0      617    1406
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                 1       72    1406
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                 0        1    8632
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                 1        0    8632
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                 0     7284    8632
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                 1     1347    8632
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                 0     2754    4752
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                 1      288    4752
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                 0     1545    4752
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                 1      165    4752


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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
![](/tmp/49288cf9-e28a-46a7-95c3-74aa02d48ee1/52a66ac9-9c18-49f3-9359-940cbd251dda/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/49288cf9-e28a-46a7-95c3-74aa02d48ee1/52a66ac9-9c18-49f3-9359-940cbd251dda/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/49288cf9-e28a-46a7-95c3-74aa02d48ee1/52a66ac9-9c18-49f3-9359-940cbd251dda/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/49288cf9-e28a-46a7-95c3-74aa02d48ee1/52a66ac9-9c18-49f3-9359-940cbd251dda/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000109-EE              PAKISTAN                       1                    NA                0.1363636   0.0347419   0.2379854
Birth       ki1000109-EE              PAKISTAN                       0                    NA                0.2162162   0.1567658   0.2756666
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.0581395   0.0251640   0.0911151
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.0669045   0.0492927   0.0845164
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.0305303   0.0274628   0.0335977
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.0316910   0.0285356   0.0348465
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1107906   0.1030671   0.1185141
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.1091297   0.1045631   0.1136963
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.0823076   0.0701733   0.0944418
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.0836214   0.0717296   0.0955131
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0390244   0.0124614   0.0655873
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1428571   0.0368142   0.2489001
6 months    ki1000109-EE              PAKISTAN                       1                    NA                0.2072727   0.1049793   0.3095661
6 months    ki1000109-EE              PAKISTAN                       0                    NA                0.2232612   0.1754593   0.2710631
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.0612245   0.0218241   0.1006248
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.0985460   0.0798882   0.1172039
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.0404255   0.0345134   0.0463375
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.0394828   0.0331562   0.0458094
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.3875138   0.3745570   0.4004707
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.0599725   0.0560374   0.0639076
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.0534144   0.0451619   0.0616668
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.0600837   0.0487168   0.0714505
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1243554   0.0664462   0.1822646
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1267782   0.0576080   0.1959484
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.1498409   0.0889099   0.2107720
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.0958912   0.0386203   0.1531621
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.1319444   0.0765505   0.1873384
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.0769231   0.0220574   0.1317887
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3062019   0.2386439   0.3737599
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4603179   0.2903015   0.6303342
24 months   ki1000109-EE              PAKISTAN                       1                    NA                0.3780582   0.1946318   0.5614846
24 months   ki1000109-EE              PAKISTAN                       0                    NA                0.3416084   0.2602451   0.4229717
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.0381679   0.0053206   0.0710153
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.1369427   0.0988746   0.1750108
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.1200506   0.0973065   0.1427946
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.0971478   0.0747406   0.1195549
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.0947552   0.0829426   0.1065678
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.0968162   0.0805490   0.1130834


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000109-EE              PAKISTAN                       NA                   NA                0.2008734   0.1488678   0.2528789
Birth       ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.0662800   0.0486880   0.0838721
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.0312449   0.0281769   0.0343130
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.1091641   0.1046058   0.1137223
Birth       kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.0825363   0.0708486   0.0942240
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0566802   0.0277850   0.0855754
6 months    ki1000109-EE              PAKISTAN                       NA                   NA                0.2182320   0.1756239   0.2608402
6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.0958084   0.0774939   0.1141229
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.0401403   0.0357552   0.0445254
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.0606746   0.0568229   0.0645262
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.0560960   0.0493335   0.0628586
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1327014   0.0868175   0.1785853
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1321586   0.0880054   0.1763117
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.1106383   0.0704470   0.1508296
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3271028   0.2640978   0.3901078
24 months   ki1000109-EE              PAKISTAN                       NA                   NA                0.3475610   0.2744572   0.4206647
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.1078652   0.0790107   0.1367196
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.1081081   0.0918715   0.1243447
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.0953283   0.0857752   0.1048814


### Parameter: RR


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  -----------
Birth       ki1000109-EE              PAKISTAN                       1                    1                 1.0000000   1.0000000    1.0000000
Birth       ki1000109-EE              PAKISTAN                       0                    1                 1.5855856   0.7164987    3.5088434
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.1507583   0.6866757    1.9284861
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                 1.0000000   1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 1.0380197   1.0014469    1.0759282
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 0.9850085   0.9280397    1.0454744
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 1.0159620   0.9406973    1.0972487
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 3.6607143   1.3371210   10.0221514
6 months    ki1000109-EE              PAKISTAN                       1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1000109-EE              PAKISTAN                       0                    1                 1.0771375   0.6285009    1.8460199
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.6095854   0.8339140    3.1067532
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 0.9766816   0.7899216    1.2075969
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 0.1547622   0.1436245    0.1667635
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 1.1248597   0.8848094    1.4300361
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 1.0194827   0.4954460    2.0977969
24 months   ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED         INDIA                          0                    1                 0.6399533   0.3097331    1.3222361
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 0.5829960   0.2548159    1.3338424
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.5033147   0.9784374    2.3097597
24 months   ki1000109-EE              PAKISTAN                       1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1000109-EE              PAKISTAN                       0                    1                 0.9035869   0.5257182    1.5530550
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 3.5878971   1.4523513    8.8635618
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 0.8092238   0.6034671    1.0851349
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 1.0217504   0.8305401    1.2569819


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000109-EE              PAKISTAN                       1                    NA                 0.0645097   -0.0306907    0.1597101
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0081405   -0.0199419    0.0362229
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0007147    0.0000694    0.0013600
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0016266   -0.0080480    0.0047948
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0002287   -0.0019020    0.0023594
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0176558   -0.0015614    0.0368729
6 months    ki1000109-EE              PAKISTAN                       1                    NA                 0.0109593   -0.0823027    0.1042213
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0345839   -0.0039983    0.0731661
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0002852   -0.0044116    0.0038412
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.3268392   -0.3401687   -0.3135097
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0026817   -0.0022303    0.0075937
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0083460   -0.0309741    0.0476661
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0176824   -0.0550191    0.0196544
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0213061   -0.0516920    0.0090797
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0209009   -0.0086677    0.0504695
24 months   ki1000109-EE              PAKISTAN                       1                    NA                -0.0304972   -0.1961307    0.1351363
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0696972    0.0339722    0.1054223
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0119425   -0.0273533    0.0034684
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0005731   -0.0065674    0.0077136


### Parameter: PAF


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000109-EE              PAKISTAN                       1                    NA                 0.3211462   -0.3548268    0.6598514
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.1228198   -0.4233308    0.4594052
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0228732    0.0021192    0.0431955
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0149002   -0.0754918    0.0422777
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0027714   -0.0234333    0.0283051
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3114983   -0.0691645    0.5566308
6 months    ki1000109-EE              PAKISTAN                       1                    NA                 0.0502188   -0.4895574    0.3943944
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.3609694   -0.1862100    0.6557438
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0071041   -0.1153676    0.0906508
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -5.3867594   -5.8514828   -4.9535573
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0478054   -0.0439515    0.1314974
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0628931   -0.2842405    0.3161955
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.1337965   -0.4527381    0.1151230
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.1925748   -0.4934545    0.0476880
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0638970   -0.0309116    0.1499864
24 months   ki1000109-EE              PAKISTAN                       1                    NA                -0.0877463   -0.6853035    0.2979353
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.6461513    0.2037010    0.8427615
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.1104677   -0.2630598    0.0236895
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0060115   -0.0717772    0.0781543

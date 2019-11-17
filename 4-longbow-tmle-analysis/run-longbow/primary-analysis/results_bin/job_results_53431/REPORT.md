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

agecat      studyid                   country                        earlybf    stunted   n_cell       n
----------  ------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                0      126     230
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                1       21     230
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                0       60     230
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                1       23     230
Birth       ki0047075b-MAL-ED         BRAZIL                         1                0       26      65
Birth       ki0047075b-MAL-ED         BRAZIL                         1                1        2      65
Birth       ki0047075b-MAL-ED         BRAZIL                         0                0       30      65
Birth       ki0047075b-MAL-ED         BRAZIL                         0                1        7      65
Birth       ki0047075b-MAL-ED         INDIA                          1                0       25      46
Birth       ki0047075b-MAL-ED         INDIA                          1                1        7      46
Birth       ki0047075b-MAL-ED         INDIA                          0                0       11      46
Birth       ki0047075b-MAL-ED         INDIA                          0                1        3      46
Birth       ki0047075b-MAL-ED         NEPAL                          1                0       13      27
Birth       ki0047075b-MAL-ED         NEPAL                          1                1        1      27
Birth       ki0047075b-MAL-ED         NEPAL                          0                0       12      27
Birth       ki0047075b-MAL-ED         NEPAL                          0                1        1      27
Birth       ki0047075b-MAL-ED         PERU                           1                0      158     233
Birth       ki0047075b-MAL-ED         PERU                           1                1       17     233
Birth       ki0047075b-MAL-ED         PERU                           0                0       49     233
Birth       ki0047075b-MAL-ED         PERU                           0                1        9     233
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                0       64     111
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                1        5     111
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       38     111
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                1        4     111
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0       92     125
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1       19     125
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       10     125
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        4     125
Birth       ki1000109-EE              PAKISTAN                       1                0       28     229
Birth       ki1000109-EE              PAKISTAN                       1                1       16     229
Birth       ki1000109-EE              PAKISTAN                       0                0      105     229
Birth       ki1000109-EE              PAKISTAN                       0                1       80     229
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                0       71    1207
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                1       15    1207
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                0      808    1207
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                1      313    1207
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                0      549     732
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                1       85     732
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                0       82     732
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                1       16     732
Birth       ki1113344-GMS-Nepal       NEPAL                          1                0      152     632
Birth       ki1113344-GMS-Nepal       NEPAL                          1                1       28     632
Birth       ki1113344-GMS-Nepal       NEPAL                          0                0      373     632
Birth       ki1113344-GMS-Nepal       NEPAL                          0                1       79     632
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                0     5916   12354
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                1      640   12354
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                0     5168   12354
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                1      630   12354
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                0       85   22370
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                1      151   22370
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                0    14924   22370
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                1     7210   22370
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                0     1344    2823
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                1      568    2823
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                0      622    2823
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                1      289    2823
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                0      124     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                1       23     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                0       72     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                1       21     240
6 months    ki0047075b-MAL-ED         BRAZIL                         1                0       93     209
6 months    ki0047075b-MAL-ED         BRAZIL                         1                1        2     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0                0      110     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0                1        4     209
6 months    ki0047075b-MAL-ED         INDIA                          1                0      115     236
6 months    ki0047075b-MAL-ED         INDIA                          1                1       25     236
6 months    ki0047075b-MAL-ED         INDIA                          0                0       76     236
6 months    ki0047075b-MAL-ED         INDIA                          0                1       20     236
6 months    ki0047075b-MAL-ED         NEPAL                          1                0       92     236
6 months    ki0047075b-MAL-ED         NEPAL                          1                1        4     236
6 months    ki0047075b-MAL-ED         NEPAL                          0                0      132     236
6 months    ki0047075b-MAL-ED         NEPAL                          0                1        8     236
6 months    ki0047075b-MAL-ED         PERU                           1                0      157     273
6 months    ki0047075b-MAL-ED         PERU                           1                1       45     273
6 months    ki0047075b-MAL-ED         PERU                           0                0       56     273
6 months    ki0047075b-MAL-ED         PERU                           0                1       15     273
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                0      126     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                1       30     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       75     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                1       19     250
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      160     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1       45     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       28     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1       14     247
6 months    ki1000109-EE              PAKISTAN                       1                0       36     362
6 months    ki1000109-EE              PAKISTAN                       1                1       32     362
6 months    ki1000109-EE              PAKISTAN                       0                0      149     362
6 months    ki1000109-EE              PAKISTAN                       0                1      145     362
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                0       75    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                1       23    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                0      881    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                1      357    1336
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                0      481     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                1      138     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                0       84     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                1       12     715
6 months    ki1113344-GMS-Nepal       NEPAL                          1                0      125     511
6 months    ki1113344-GMS-Nepal       NEPAL                          1                1       26     511
6 months    ki1113344-GMS-Nepal       NEPAL                          0                0      279     511
6 months    ki1113344-GMS-Nepal       NEPAL                          0                1       81     511
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                0     3511    7698
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                1      635    7698
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                0     2923    7698
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                1      629    7698
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                0       15   16811
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                1       20   16811
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                0    12570   16811
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                1     4206   16811
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                0     2329    4831
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                1      765    4831
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                0     1281    4831
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                1      456    4831
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                0       65     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                1       63     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                0       46     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                1       37     211
24 months   ki0047075b-MAL-ED         BRAZIL                         1                0       78     169
24 months   ki0047075b-MAL-ED         BRAZIL                         1                1        2     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0                0       84     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0                1        5     169
24 months   ki0047075b-MAL-ED         INDIA                          1                0       75     227
24 months   ki0047075b-MAL-ED         INDIA                          1                1       59     227
24 months   ki0047075b-MAL-ED         INDIA                          0                0       55     227
24 months   ki0047075b-MAL-ED         INDIA                          0                1       38     227
24 months   ki0047075b-MAL-ED         NEPAL                          1                0       73     228
24 months   ki0047075b-MAL-ED         NEPAL                          1                1       22     228
24 months   ki0047075b-MAL-ED         NEPAL                          0                0      105     228
24 months   ki0047075b-MAL-ED         NEPAL                          0                1       28     228
24 months   ki0047075b-MAL-ED         PERU                           1                0       88     201
24 months   ki0047075b-MAL-ED         PERU                           1                1       61     201
24 months   ki0047075b-MAL-ED         PERU                           0                0       39     201
24 months   ki0047075b-MAL-ED         PERU                           0                1       13     201
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                0       90     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                1       54     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       63     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                1       28     235
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0       51     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1      129     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0        8     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1       26     214
24 months   ki1000109-EE              PAKISTAN                       1                0       12     164
24 months   ki1000109-EE              PAKISTAN                       1                1       20     164
24 months   ki1000109-EE              PAKISTAN                       0                0       37     164
24 months   ki1000109-EE              PAKISTAN                       0                1       95     164
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                0      320     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                1      123     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                0       62     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                1        9     514
24 months   ki1113344-GMS-Nepal       NEPAL                          1                0       94     445
24 months   ki1113344-GMS-Nepal       NEPAL                          1                1       37     445
24 months   ki1113344-GMS-Nepal       NEPAL                          0                0      151     445
24 months   ki1113344-GMS-Nepal       NEPAL                          0                1      163     445
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                0      475    1406
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                1      242    1406
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                0      439    1406
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                1      250    1406
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                0        1    8632
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                1        0    8632
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                0     4392    8632
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                1     4239    8632
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                0     1811    4752
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                1     1231    4752
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                0     1036    4752
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                1      674    4752


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
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




# Results Detail

## Results Plots
![](/tmp/cb492481-70e9-4877-91cb-f7bfc52526be/f74660e5-a744-490d-a726-b7c12320b308/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cb492481-70e9-4877-91cb-f7bfc52526be/f74660e5-a744-490d-a726-b7c12320b308/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cb492481-70e9-4877-91cb-f7bfc52526be/f74660e5-a744-490d-a726-b7c12320b308/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cb492481-70e9-4877-91cb-f7bfc52526be/f74660e5-a744-490d-a726-b7c12320b308/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1418947   0.0849482   0.1988412
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.2676135   0.1708269   0.3644001
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                0.0971429   0.0531707   0.1411150
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                0.1551724   0.0617912   0.2485536
Birth       ki1000109-EE              PAKISTAN                       1                    NA                0.3413354   0.1935518   0.4891190
Birth       ki1000109-EE              PAKISTAN                       0                    NA                0.4375886   0.3654605   0.5097166
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.1793114   0.0480923   0.3105306
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.2789015   0.2498198   0.3079832
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.1343515   0.1078106   0.1608924
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.1713338   0.0975074   0.2451601
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1847995   0.1475367   0.2220624
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.1626133   0.1326122   0.1926144
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.1024849   0.0971364   0.1078333
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.1028550   0.0974894   0.1082206
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.3396270   0.3289739   0.3502801
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.3289679   0.3215915   0.3363443
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.3014801   0.2813622   0.3215981
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.3073867   0.2825594   0.3322140
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1572036   0.0992023   0.2152049
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.2150373   0.1284184   0.3016562
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                0.1836572   0.1203850   0.2469295
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                0.2123181   0.1301930   0.2944433
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                0.2264134   0.1688778   0.2839491
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                0.2368931   0.1446081   0.3291782
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.1896663   0.1276007   0.2517318
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.1890189   0.1071415   0.2708962
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2200760   0.1631436   0.2770084
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3427369   0.1935991   0.4918747
6 months    ki1000109-EE              PAKISTAN                       1                    NA                0.5225254   0.4117903   0.6332606
6 months    ki1000109-EE              PAKISTAN                       0                    NA                0.4814090   0.4249653   0.5378527
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.2434917   0.1728276   0.3141558
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.2873470   0.2702123   0.3044817
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.2228836   0.1900976   0.2556696
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.1258953   0.0576153   0.1941754
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1751128   0.1162422   0.2339833
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.2192186   0.1771863   0.2612509
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.1614713   0.1505688   0.1723738
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.1672352   0.1553422   0.1791281
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.5587501   0.5450391   0.5724612
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.2507332   0.2424133   0.2590530
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.2450822   0.2279411   0.2622233
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.2667202   0.2428042   0.2906362
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.5227022   0.4389117   0.6064928
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.3967349   0.2940046   0.4994651
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.4451095   0.3619545   0.5282646
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.4099542   0.3102902   0.5096182
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2229434   0.1372207   0.3086660
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2052678   0.1354603   0.2750754
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.4170104   0.3375486   0.4964721
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.2462840   0.1311959   0.3613721
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.3728046   0.2935126   0.4520966
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.3171954   0.2197023   0.4146884
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7166667   0.6506830   0.7826503
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7647059   0.6217907   0.9076211
24 months   ki1000109-EE              PAKISTAN                       1                    NA                0.6209818   0.4446662   0.7972974
24 months   ki1000109-EE              PAKISTAN                       0                    NA                0.7231662   0.6466784   0.7996541
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.2776524   0.2359085   0.3193963
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.1267606   0.0492965   0.2042247
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.2816435   0.2049584   0.3583286
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.5102322   0.4551926   0.5652719
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.3454219   0.3114058   0.3794380
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.3539152   0.3190898   0.3887406
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.4011072   0.3801530   0.4220615
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.3995732   0.3730238   0.4261227


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1913043   0.1403613   0.2422474
Birth       ki0047075b-MAL-ED         PERU                           NA                   NA                0.1115880   0.0710726   0.1521034
Birth       ki1000109-EE              PAKISTAN                       NA                   NA                0.4192140   0.3551658   0.4832621
Birth       ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.2717481   0.2380003   0.3054960
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.1379781   0.1129774   0.1629789
Birth       ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.1693038   0.1400429   0.1985647
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.1028007   0.0974452   0.1081563
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.3290568   0.3216837   0.3364298
Birth       kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.3035778   0.2836422   0.3235133
6 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1833333   0.1342773   0.2323893
6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1906780   0.1404524   0.2409036
6 months    ki0047075b-MAL-ED         PERU                           NA                   NA                0.2197802   0.1705687   0.2689917
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.1960000   0.1466935   0.2453065
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2388664   0.1855834   0.2921494
6 months    ki1000109-EE              PAKISTAN                       NA                   NA                0.4889503   0.4373849   0.5405157
6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.2093933   0.1740812   0.2447055
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.1641985   0.1559224   0.1724746
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.2513830   0.2432594   0.2595066
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.2527427   0.2386864   0.2667990
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.4739336   0.4064004   0.5414669
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.4273128   0.3628178   0.4918077
24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.2192982   0.1654718   0.2731246
24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.3489362   0.2878666   0.4100058
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7242991   0.6642873   0.7843108
24 months   ki1000109-EE              PAKISTAN                       NA                   NA                0.7012195   0.6309515   0.7714875
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.4494382   0.4031687   0.4957077
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.3499289   0.3249898   0.3748679
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.4008838   0.3839145   0.4178532


### Parameter: RR


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    1                 1.8860008   1.0973577   3.2414217
Birth       ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         PERU                           0                    1                 1.5973630   0.7522615   3.3918640
Birth       ki1000109-EE              PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000109-EE              PAKISTAN                       0                    1                 1.2819901   0.8069521   2.0366742
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.5554028   0.8060709   3.0013214
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 1.2752650   0.7940735   2.0480483
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    1                 0.8799443   0.7417170   1.0439318
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 1.0036112   0.9982220   1.0090295
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 0.9686151   0.9461019   0.9916641
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 1.0195919   0.9594706   1.0834804
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 1.3678907   0.7965426   2.3490581
6 months    ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         INDIA                          0                    1                 1.1560564   0.6897394   1.9376396
6 months    ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         PERU                           0                    1                 1.0462857   0.6573725   1.6652869
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 0.9965867   0.5808073   1.7100076
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.5573572   0.9439680   2.5693258
6 months    ki1000109-EE              PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE              PAKISTAN                       0                    1                 0.9213122   0.7304518   1.1620426
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.1801101   0.9044645   1.5397617
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 0.5648480   0.3219767   0.9909203
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.2518709   0.8599444   1.8224209
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 1.0356959   0.9425004   1.1381067
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 0.4487394   0.4304845   0.4677683
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 1.0882885   0.9728330   1.2174462
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 0.7590074   0.5674856   1.0151663
24 months   ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         INDIA                          0                    1                 0.9210188   0.6804644   1.2466128
24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 0.9207175   0.5501772   1.5408140
24 months   ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         PERU                           0                    1                 0.5905944   0.3577871   0.9748864
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 0.8508354   0.5847982   1.2378986
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0670315   0.8663581   1.3141865
24 months   ki1000109-EE              PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1000109-EE              PAKISTAN                       0                    1                 1.1645530   0.8592036   1.5784194
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 0.4565441   0.2433150   0.8566365
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.8116243   1.3557975   2.4207025
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 1.0245881   0.8954452   1.1723562
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 0.9961756   0.9188148   1.0800499


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0494096    0.0077220    0.0910973
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                 0.0144451   -0.0114503    0.0403405
Birth       ki1000109-EE              PAKISTAN                       1                    NA                 0.0778786   -0.0568243    0.2125815
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0924367   -0.0144782    0.1993516
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0036266   -0.0068091    0.0140623
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0154957   -0.0375316    0.0065401
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0003158    0.0000239    0.0006078
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0105702   -0.0183441   -0.0027963
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0020976   -0.0039117    0.0081069
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0261298   -0.0137234    0.0659829
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0070207   -0.0347727    0.0488141
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                -0.0066332   -0.0362602    0.0229938
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0063337   -0.0320032    0.0446707
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0187904   -0.0072943    0.0448752
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -0.0335751   -0.1322129    0.0650627
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0409394   -0.0203150    0.1021939
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0130934   -0.0234860   -0.0027007
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0342806   -0.0152905    0.0838516
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0027272   -0.0045878    0.0100422
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.3073671   -0.3230989   -0.2916354
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0076605   -0.0026962    0.0180172
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0487686   -0.0988008    0.0012636
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0177967   -0.0705265    0.0349330
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0036451   -0.0685033    0.0612131
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0488512   -0.0866869   -0.0110154
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0238684   -0.0720970    0.0243601
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0076324   -0.0174880    0.0327528
24 months   ki1000109-EE              PAKISTAN                       1                    NA                 0.0802377   -0.0785434    0.2390188
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0208430   -0.0338062   -0.0078799
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.1677947    0.1008186    0.2347708
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0045070   -0.0187745    0.0277884
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0002234   -0.0117957    0.0113489


### Parameter: PAF


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.2582777    0.0141996    0.4419236
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                 0.1294505   -0.1316004    0.3302792
Birth       ki1000109-EE              PAKISTAN                       1                    NA                 0.1857729   -0.2090509    0.4516643
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.3401558   -0.2505967    0.6518507
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0262841   -0.0522344    0.0989435
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0915262   -0.2301964    0.0315128
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0030724    0.0002321    0.0059045
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0321229   -0.0560397   -0.0087477
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0069096   -0.0130335    0.0264601
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.1425260   -0.1012606    0.3323455
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0368198   -0.2088045    0.2325341
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                -0.0301811   -0.1743657    0.0963010
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0323150   -0.1845297    0.2094633
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0786650   -0.0368820    0.1813357
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -0.0686678   -0.2909646    0.1153507
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.1439345   -0.1060546    0.3374213
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0624118   -0.1128325   -0.0142756
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.1637138   -0.1095697    0.3696884
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0166091   -0.0289507    0.0601515
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -1.2227043   -1.3134202   -1.1355456
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0303094   -0.0115155    0.0704049
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.1029017   -0.2149050   -0.0012241
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0416480   -0.1728595    0.0748844
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0166217   -0.3597355    0.2399112
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.1326903   -0.2411928   -0.0336729
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0684035   -0.2160122    0.0612874
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0105376   -0.0248074    0.0446637
24 months   ki1000109-EE              PAKISTAN                       1                    NA                 0.1144259   -0.1445885    0.3148267
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0811615   -0.1324602   -0.0321865
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.3733432    0.2046918    0.5062307
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0128796   -0.0559465    0.0772197
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0005573   -0.0298436    0.0278961

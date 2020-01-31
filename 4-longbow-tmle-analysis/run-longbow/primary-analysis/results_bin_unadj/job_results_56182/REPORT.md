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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                   country                        earlybf    stunted   n_cell       n  outcome_variable 
----------  ------------------------  -----------------------------  --------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                0      126     230  stunted          
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                1       21     230  stunted          
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                0       60     230  stunted          
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                1       23     230  stunted          
Birth       ki0047075b-MAL-ED         BRAZIL                         1                0       26      65  stunted          
Birth       ki0047075b-MAL-ED         BRAZIL                         1                1        2      65  stunted          
Birth       ki0047075b-MAL-ED         BRAZIL                         0                0       30      65  stunted          
Birth       ki0047075b-MAL-ED         BRAZIL                         0                1        7      65  stunted          
Birth       ki0047075b-MAL-ED         INDIA                          1                0       25      46  stunted          
Birth       ki0047075b-MAL-ED         INDIA                          1                1        7      46  stunted          
Birth       ki0047075b-MAL-ED         INDIA                          0                0       11      46  stunted          
Birth       ki0047075b-MAL-ED         INDIA                          0                1        3      46  stunted          
Birth       ki0047075b-MAL-ED         NEPAL                          1                0       13      27  stunted          
Birth       ki0047075b-MAL-ED         NEPAL                          1                1        1      27  stunted          
Birth       ki0047075b-MAL-ED         NEPAL                          0                0       12      27  stunted          
Birth       ki0047075b-MAL-ED         NEPAL                          0                1        1      27  stunted          
Birth       ki0047075b-MAL-ED         PERU                           1                0      158     233  stunted          
Birth       ki0047075b-MAL-ED         PERU                           1                1       17     233  stunted          
Birth       ki0047075b-MAL-ED         PERU                           0                0       49     233  stunted          
Birth       ki0047075b-MAL-ED         PERU                           0                1        9     233  stunted          
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                0       64     111  stunted          
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                1        5     111  stunted          
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       38     111  stunted          
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                1        4     111  stunted          
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0       92     125  stunted          
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1       19     125  stunted          
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       10     125  stunted          
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        4     125  stunted          
Birth       ki1000109-EE              PAKISTAN                       1                0       28     229  stunted          
Birth       ki1000109-EE              PAKISTAN                       1                1       16     229  stunted          
Birth       ki1000109-EE              PAKISTAN                       0                0      105     229  stunted          
Birth       ki1000109-EE              PAKISTAN                       0                1       80     229  stunted          
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                0       71    1207  stunted          
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                1       15    1207  stunted          
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                0      808    1207  stunted          
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                1      313    1207  stunted          
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                0      549     732  stunted          
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                1       85     732  stunted          
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                0       82     732  stunted          
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                1       16     732  stunted          
Birth       ki1113344-GMS-Nepal       NEPAL                          1                0      152     632  stunted          
Birth       ki1113344-GMS-Nepal       NEPAL                          1                1       28     632  stunted          
Birth       ki1113344-GMS-Nepal       NEPAL                          0                0      373     632  stunted          
Birth       ki1113344-GMS-Nepal       NEPAL                          0                1       79     632  stunted          
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                0     5916   12354  stunted          
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                1      640   12354  stunted          
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                0     5168   12354  stunted          
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                1      630   12354  stunted          
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                0       85   22370  stunted          
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                1      151   22370  stunted          
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                0    14924   22370  stunted          
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                1     7210   22370  stunted          
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                0     1344    2823  stunted          
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                1      568    2823  stunted          
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                0      622    2823  stunted          
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                1      289    2823  stunted          
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                0      124     240  stunted          
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                1       23     240  stunted          
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                0       72     240  stunted          
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                1       21     240  stunted          
6 months    ki0047075b-MAL-ED         BRAZIL                         1                0       93     209  stunted          
6 months    ki0047075b-MAL-ED         BRAZIL                         1                1        2     209  stunted          
6 months    ki0047075b-MAL-ED         BRAZIL                         0                0      110     209  stunted          
6 months    ki0047075b-MAL-ED         BRAZIL                         0                1        4     209  stunted          
6 months    ki0047075b-MAL-ED         INDIA                          1                0      115     236  stunted          
6 months    ki0047075b-MAL-ED         INDIA                          1                1       25     236  stunted          
6 months    ki0047075b-MAL-ED         INDIA                          0                0       76     236  stunted          
6 months    ki0047075b-MAL-ED         INDIA                          0                1       20     236  stunted          
6 months    ki0047075b-MAL-ED         NEPAL                          1                0       92     236  stunted          
6 months    ki0047075b-MAL-ED         NEPAL                          1                1        4     236  stunted          
6 months    ki0047075b-MAL-ED         NEPAL                          0                0      132     236  stunted          
6 months    ki0047075b-MAL-ED         NEPAL                          0                1        8     236  stunted          
6 months    ki0047075b-MAL-ED         PERU                           1                0      157     273  stunted          
6 months    ki0047075b-MAL-ED         PERU                           1                1       45     273  stunted          
6 months    ki0047075b-MAL-ED         PERU                           0                0       56     273  stunted          
6 months    ki0047075b-MAL-ED         PERU                           0                1       15     273  stunted          
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                0      126     250  stunted          
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                1       30     250  stunted          
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       75     250  stunted          
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                1       19     250  stunted          
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      160     247  stunted          
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1       45     247  stunted          
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       28     247  stunted          
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1       14     247  stunted          
6 months    ki1000109-EE              PAKISTAN                       1                0       36     362  stunted          
6 months    ki1000109-EE              PAKISTAN                       1                1       32     362  stunted          
6 months    ki1000109-EE              PAKISTAN                       0                0      149     362  stunted          
6 months    ki1000109-EE              PAKISTAN                       0                1      145     362  stunted          
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                0       75    1336  stunted          
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                1       23    1336  stunted          
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                0      881    1336  stunted          
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                1      357    1336  stunted          
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                0      481     715  stunted          
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                1      138     715  stunted          
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                0       84     715  stunted          
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                1       12     715  stunted          
6 months    ki1113344-GMS-Nepal       NEPAL                          1                0      125     511  stunted          
6 months    ki1113344-GMS-Nepal       NEPAL                          1                1       26     511  stunted          
6 months    ki1113344-GMS-Nepal       NEPAL                          0                0      279     511  stunted          
6 months    ki1113344-GMS-Nepal       NEPAL                          0                1       81     511  stunted          
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                0     3511    7698  stunted          
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                1      635    7698  stunted          
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                0     2923    7698  stunted          
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                1      629    7698  stunted          
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                0       15   16811  stunted          
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                1       20   16811  stunted          
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                0    12570   16811  stunted          
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                1     4206   16811  stunted          
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                0     2329    4831  stunted          
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                1      765    4831  stunted          
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                0     1281    4831  stunted          
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                1      456    4831  stunted          
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                0       65     211  stunted          
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                1       63     211  stunted          
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                0       46     211  stunted          
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                1       37     211  stunted          
24 months   ki0047075b-MAL-ED         BRAZIL                         1                0       78     169  stunted          
24 months   ki0047075b-MAL-ED         BRAZIL                         1                1        2     169  stunted          
24 months   ki0047075b-MAL-ED         BRAZIL                         0                0       84     169  stunted          
24 months   ki0047075b-MAL-ED         BRAZIL                         0                1        5     169  stunted          
24 months   ki0047075b-MAL-ED         INDIA                          1                0       75     227  stunted          
24 months   ki0047075b-MAL-ED         INDIA                          1                1       59     227  stunted          
24 months   ki0047075b-MAL-ED         INDIA                          0                0       55     227  stunted          
24 months   ki0047075b-MAL-ED         INDIA                          0                1       38     227  stunted          
24 months   ki0047075b-MAL-ED         NEPAL                          1                0       73     228  stunted          
24 months   ki0047075b-MAL-ED         NEPAL                          1                1       22     228  stunted          
24 months   ki0047075b-MAL-ED         NEPAL                          0                0      105     228  stunted          
24 months   ki0047075b-MAL-ED         NEPAL                          0                1       28     228  stunted          
24 months   ki0047075b-MAL-ED         PERU                           1                0       88     201  stunted          
24 months   ki0047075b-MAL-ED         PERU                           1                1       61     201  stunted          
24 months   ki0047075b-MAL-ED         PERU                           0                0       39     201  stunted          
24 months   ki0047075b-MAL-ED         PERU                           0                1       13     201  stunted          
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                0       90     235  stunted          
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                1       54     235  stunted          
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       63     235  stunted          
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                1       28     235  stunted          
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0       51     214  stunted          
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1      129     214  stunted          
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0        8     214  stunted          
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1       26     214  stunted          
24 months   ki1000109-EE              PAKISTAN                       1                0       12     164  stunted          
24 months   ki1000109-EE              PAKISTAN                       1                1       20     164  stunted          
24 months   ki1000109-EE              PAKISTAN                       0                0       37     164  stunted          
24 months   ki1000109-EE              PAKISTAN                       0                1       95     164  stunted          
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                0      320     514  stunted          
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                1      123     514  stunted          
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                0       62     514  stunted          
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                1        9     514  stunted          
24 months   ki1113344-GMS-Nepal       NEPAL                          1                0       94     445  stunted          
24 months   ki1113344-GMS-Nepal       NEPAL                          1                1       37     445  stunted          
24 months   ki1113344-GMS-Nepal       NEPAL                          0                0      151     445  stunted          
24 months   ki1113344-GMS-Nepal       NEPAL                          0                1      163     445  stunted          
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                0      475    1406  stunted          
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                1      242    1406  stunted          
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                0      439    1406  stunted          
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                1      250    1406  stunted          
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                0        1    8632  stunted          
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                1        0    8632  stunted          
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                0     4392    8632  stunted          
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                1     4239    8632  stunted          
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                0     1811    4752  stunted          
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                1     1231    4752  stunted          
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                0     1036    4752  stunted          
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                1      674    4752  stunted          


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
![](/tmp/89cbdb74-ee1c-402e-995f-44f40d9cccac/88d343d7-fd2e-41e3-8fdf-1925359bab1c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/89cbdb74-ee1c-402e-995f-44f40d9cccac/88d343d7-fd2e-41e3-8fdf-1925359bab1c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/89cbdb74-ee1c-402e-995f-44f40d9cccac/88d343d7-fd2e-41e3-8fdf-1925359bab1c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/89cbdb74-ee1c-402e-995f-44f40d9cccac/88d343d7-fd2e-41e3-8fdf-1925359bab1c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1428571   0.0861663   0.1995480
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.2771084   0.1806108   0.3736061
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                0.0971429   0.0531707   0.1411150
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                0.1551724   0.0617912   0.2485536
Birth       ki1000109-EE              PAKISTAN                       1                    NA                0.3636364   0.2211877   0.5060850
Birth       ki1000109-EE              PAKISTAN                       0                    NA                0.4324324   0.3608872   0.5039776
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.1744186   0.0774516   0.2713856
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.2792150   0.2505222   0.3079077
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.1340694   0.1075290   0.1606098
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.1632653   0.0900381   0.2364926
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1555556   0.1025668   0.2085443
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.1747788   0.1397397   0.2098178
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.0976205   0.0904358   0.1048052
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.1086582   0.1006473   0.1166690
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.6398305   0.6104797   0.6691814
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.3257432   0.3182758   0.3332106
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.2970711   0.2728964   0.3212459
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.3172338   0.2807140   0.3537536
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1564626   0.0976116   0.2153135
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.2258065   0.1406522   0.3109607
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                0.1785714   0.1149949   0.2421480
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                0.2083333   0.1269220   0.2897447
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                0.2227723   0.1652847   0.2802599
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                0.2112676   0.1161421   0.3063931
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.1923077   0.1303383   0.2542771
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.2021277   0.1207821   0.2834733
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2195122   0.1627362   0.2762882
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3333333   0.1904775   0.4761892
6 months    ki1000109-EE              PAKISTAN                       1                    NA                0.4705882   0.3517895   0.5893869
6 months    ki1000109-EE              PAKISTAN                       0                    NA                0.4931973   0.4359698   0.5504248
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.2346939   0.1781778   0.2912099
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.2883683   0.2709758   0.3057609
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.2229402   0.1901286   0.2557519
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.1250000   0.0587973   0.1912027
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1721854   0.1119087   0.2324622
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.2250000   0.1818218   0.2681782
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.1531597   0.1421965   0.1641228
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.1770833   0.1645286   0.1896380
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.5714286   0.5579680   0.5848891
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.2507153   0.2423967   0.2590339
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.2472527   0.2296446   0.2648609
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.2625216   0.2381027   0.2869405
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.4921875   0.4053731   0.5790019
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.4457831   0.3385961   0.5529702
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.4402985   0.3560609   0.5245362
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.4086022   0.3084742   0.5087301
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2315789   0.1465650   0.3165928
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2105263   0.1410881   0.2799646
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.4093960   0.3302447   0.4885473
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.2500000   0.1320141   0.3679859
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.3750000   0.2957593   0.4542407
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.3076923   0.2126622   0.4027224
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7166667   0.6506830   0.7826503
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7647059   0.6217907   0.9076211
24 months   ki1000109-EE              PAKISTAN                       1                    NA                0.6250000   0.4567493   0.7932507
24 months   ki1000109-EE              PAKISTAN                       0                    NA                0.7196970   0.6428409   0.7965530
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.2776524   0.2359085   0.3193963
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.1267606   0.0492965   0.2042247
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.2824427   0.2052646   0.3596209
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.5191083   0.4637829   0.5744337
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.3375174   0.3028933   0.3721415
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.3628447   0.3269297   0.3987597
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.4046680   0.3835989   0.4257370
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.3941520   0.3672140   0.4210901


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
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    1                 1.9397590   1.1440815   3.2888086
Birth       ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         PERU                           0                    1                 1.5973630   0.7522615   3.3918640
Birth       ki1000109-EE              PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000109-EE              PAKISTAN                       0                    1                 1.1891892   0.7772699   1.8194079
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.6008326   0.9977650   2.5684054
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 1.2177671   0.7458418   1.9882992
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.1235778   0.7567375   1.6682495
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 1.1130670   1.0029496   1.2352745
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 0.5091086   0.4840905   0.5354196
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 1.0678716   0.9258854   1.2316315
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 1.4431978   0.8472458   2.4583419
6 months    ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         INDIA                          0                    1                 1.1666667   0.6876397   1.9793958
6 months    ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         PERU                           0                    1                 0.9483568   0.5644000   1.5935164
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 1.0510638   0.6276594   1.7600870
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.5185185   0.9205054   2.5050354
6 months    ki1000109-EE              PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE              PAKISTAN                       0                    1                 1.0480442   0.7938099   1.3837024
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.2286999   0.9822774   1.5369419
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 0.5606884   0.3235892   0.9715142
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.3067308   0.8766132   1.9478891
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 1.1562008   1.0453920   1.2787551
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 0.4387518   0.4211672   0.4570705
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 1.0617540   0.9426253   1.1959381
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 0.9057181   0.6721780   1.2203989
24 months   ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         INDIA                          0                    1                 0.9280117   0.6800417   1.2664012
24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 0.9090909   0.5549798   1.4891465
24 months   ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         PERU                           0                    1                 0.6106557   0.3666925   1.0169294
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 0.8205128   0.5643714   1.1929047
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0670315   0.8663581   1.3141865
24 months   ki1000109-EE              PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1000109-EE              PAKISTAN                       0                    1                 1.1515152   0.8619740   1.5383145
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 0.4565441   0.2433150   0.8566365
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.8379239   1.3707188   2.4643745
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 1.0750399   0.9322130   1.2397497
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 0.9740134   0.8955600   1.0593396


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0484472    0.0072051    0.0896893
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                 0.0144451   -0.0114503    0.0403405
Birth       ki1000109-EE              PAKISTAN                       1                    NA                 0.0555776   -0.0732484    0.1844036
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0973295    0.0281469    0.1665122
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0039087   -0.0065438    0.0143613
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0137482   -0.0316899    0.0591864
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0051802    0.0001290    0.0102314
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.3107737   -0.3400102   -0.2815372
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0065066   -0.0077933    0.0208065
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0268707   -0.0134681    0.0672096
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0121065   -0.0299532    0.0541663
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                -0.0029921   -0.0319047    0.0259206
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0036923   -0.0347624    0.0421470
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0193542   -0.0073258    0.0460342
6 months    ki1000109-EE              PAKISTAN                       1                    NA                 0.0183620   -0.0887358    0.1254599
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0497373    0.0017029    0.0977716
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0131500   -0.0233685   -0.0029316
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0372079   -0.0150699    0.0894857
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0110388    0.0033434    0.0187342
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.3200455   -0.3355472   -0.3045439
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0054900   -0.0055156    0.0164955
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0182539   -0.0725988    0.0360911
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0129857   -0.0666322    0.0406607
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0122807   -0.0763263    0.0517649
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0412368   -0.0792445   -0.0032290
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0260638   -0.0741612    0.0220335
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0076324   -0.0174880    0.0327528
24 months   ki1000109-EE              PAKISTAN                       1                    NA                 0.0762195   -0.0727729    0.2252119
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0208430   -0.0338062   -0.0078799
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.1669955    0.0992431    0.2347478
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0124114   -0.0120443    0.0368672
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0037841   -0.0158171    0.0082488


### Parameter: PAF


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.2532468    0.0125306    0.4352833
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                 0.1294505   -0.1316004    0.3302792
Birth       ki1000109-EE              PAKISTAN                       1                    NA                 0.1325758   -0.2364426    0.3914600
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.3581608   -0.0072437    0.5910051
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0283287   -0.0503283    0.1010953
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0812046   -0.2301803    0.3137713
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0503908    0.0000193    0.0982250
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.9444380   -1.0403095   -0.8530715
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0214331   -0.0268004    0.0674009
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.1465677   -0.1016289    0.3388457
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0634921   -0.1847819    0.2597396
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                -0.0136139   -0.1540675    0.1097461
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0188383   -0.1983144    0.1966397
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0810252   -0.0370397    0.1856487
6 months    ki1000109-EE              PAKISTAN                       1                    NA                 0.0375540   -0.2084480    0.2334778
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.1748657   -0.0174063    0.3308017
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0626817   -0.1121491   -0.0154147
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.1776939   -0.1126384    0.3922667
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0672285    0.0192465    0.1128631
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -1.2731391   -1.3644565   -1.1853484
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0217215   -0.0227887    0.0642947
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0385156   -0.1598813    0.0701508
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0303893   -0.1639525    0.0878475
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0560000   -0.3922543    0.1990429
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.1120080   -0.2208379   -0.0128795
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0746951   -0.2218722    0.0547542
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0105376   -0.0248074    0.0446637
24 months   ki1000109-EE              PAKISTAN                       1                    NA                 0.1086957   -0.1323710    0.2984425
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0811615   -0.1324602   -0.0321865
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.3715649    0.2010379    0.5056953
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0354685   -0.0370154    0.1028859
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0094395   -0.0398978    0.0201267

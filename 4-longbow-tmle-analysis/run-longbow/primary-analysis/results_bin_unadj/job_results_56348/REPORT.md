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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                   country                        earlybf    wasted   n_cell       n  outcome_variable 
----------  ------------------------  -----------------------------  --------  -------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1               0      120     214  wasted           
Birth       ki0047075b-MAL-ED         BANGLADESH                     1               1       20     214  wasted           
Birth       ki0047075b-MAL-ED         BANGLADESH                     0               0       58     214  wasted           
Birth       ki0047075b-MAL-ED         BANGLADESH                     0               1       16     214  wasted           
Birth       ki0047075b-MAL-ED         BRAZIL                         1               0       25      62  wasted           
Birth       ki0047075b-MAL-ED         BRAZIL                         1               1        1      62  wasted           
Birth       ki0047075b-MAL-ED         BRAZIL                         0               0       35      62  wasted           
Birth       ki0047075b-MAL-ED         BRAZIL                         0               1        1      62  wasted           
Birth       ki0047075b-MAL-ED         INDIA                          1               0       27      44  wasted           
Birth       ki0047075b-MAL-ED         INDIA                          1               1        4      44  wasted           
Birth       ki0047075b-MAL-ED         INDIA                          0               0       12      44  wasted           
Birth       ki0047075b-MAL-ED         INDIA                          0               1        1      44  wasted           
Birth       ki0047075b-MAL-ED         NEPAL                          1               0       13      26  wasted           
Birth       ki0047075b-MAL-ED         NEPAL                          1               1        1      26  wasted           
Birth       ki0047075b-MAL-ED         NEPAL                          0               0       11      26  wasted           
Birth       ki0047075b-MAL-ED         NEPAL                          0               1        1      26  wasted           
Birth       ki0047075b-MAL-ED         PERU                           1               0      169     228  wasted           
Birth       ki0047075b-MAL-ED         PERU                           1               1        3     228  wasted           
Birth       ki0047075b-MAL-ED         PERU                           0               0       54     228  wasted           
Birth       ki0047075b-MAL-ED         PERU                           0               1        2     228  wasted           
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1               0       64     110  wasted           
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1               1        5     110  wasted           
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0               0       36     110  wasted           
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0               1        5     110  wasted           
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               0      102     115  wasted           
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               1        1     115  wasted           
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               0       12     115  wasted           
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               1        0     115  wasted           
Birth       ki1000109-EE              PAKISTAN                       1               0       34     170  wasted           
Birth       ki1000109-EE              PAKISTAN                       1               1        2     170  wasted           
Birth       ki1000109-EE              PAKISTAN                       0               0      115     170  wasted           
Birth       ki1000109-EE              PAKISTAN                       0               1       19     170  wasted           
Birth       ki1000304b-SAS-CompFeed   INDIA                          1               0       69    1072  wasted           
Birth       ki1000304b-SAS-CompFeed   INDIA                          1               1       10    1072  wasted           
Birth       ki1000304b-SAS-CompFeed   INDIA                          0               0      888    1072  wasted           
Birth       ki1000304b-SAS-CompFeed   INDIA                          0               1      105    1072  wasted           
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1               0      465     707  wasted           
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1               1      148     707  wasted           
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0               0       70     707  wasted           
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0               1       24     707  wasted           
Birth       ki1113344-GMS-Nepal       NEPAL                          1               0      129     586  wasted           
Birth       ki1113344-GMS-Nepal       NEPAL                          1               1       42     586  wasted           
Birth       ki1113344-GMS-Nepal       NEPAL                          0               0      332     586  wasted           
Birth       ki1113344-GMS-Nepal       NEPAL                          0               1       83     586  wasted           
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1               0     5320   11514  wasted           
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1               1      822   11514  wasted           
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0               0     4314   11514  wasted           
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0               1     1058   11514  wasted           
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1               0       89   17943  wasted           
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1               1       16   17943  wasted           
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0               0    15888   17943  wasted           
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0               1     1950   17943  wasted           
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1               0     1477    2396  wasted           
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1               1      147    2396  wasted           
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0               0      680    2396  wasted           
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0               1       92    2396  wasted           
6 months    ki0047075b-MAL-ED         BANGLADESH                     1               0      142     240  wasted           
6 months    ki0047075b-MAL-ED         BANGLADESH                     1               1        5     240  wasted           
6 months    ki0047075b-MAL-ED         BANGLADESH                     0               0       90     240  wasted           
6 months    ki0047075b-MAL-ED         BANGLADESH                     0               1        3     240  wasted           
6 months    ki0047075b-MAL-ED         BRAZIL                         1               0       94     209  wasted           
6 months    ki0047075b-MAL-ED         BRAZIL                         1               1        1     209  wasted           
6 months    ki0047075b-MAL-ED         BRAZIL                         0               0      114     209  wasted           
6 months    ki0047075b-MAL-ED         BRAZIL                         0               1        0     209  wasted           
6 months    ki0047075b-MAL-ED         INDIA                          1               0      127     236  wasted           
6 months    ki0047075b-MAL-ED         INDIA                          1               1       13     236  wasted           
6 months    ki0047075b-MAL-ED         INDIA                          0               0       90     236  wasted           
6 months    ki0047075b-MAL-ED         INDIA                          0               1        6     236  wasted           
6 months    ki0047075b-MAL-ED         NEPAL                          1               0       94     236  wasted           
6 months    ki0047075b-MAL-ED         NEPAL                          1               1        2     236  wasted           
6 months    ki0047075b-MAL-ED         NEPAL                          0               0      138     236  wasted           
6 months    ki0047075b-MAL-ED         NEPAL                          0               1        2     236  wasted           
6 months    ki0047075b-MAL-ED         PERU                           1               0      202     273  wasted           
6 months    ki0047075b-MAL-ED         PERU                           1               1        0     273  wasted           
6 months    ki0047075b-MAL-ED         PERU                           0               0       71     273  wasted           
6 months    ki0047075b-MAL-ED         PERU                           0               1        0     273  wasted           
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1               0      151     250  wasted           
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1               1        5     250  wasted           
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0               0       92     250  wasted           
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0               1        2     250  wasted           
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               0      204     247  wasted           
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               1        1     247  wasted           
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               0       42     247  wasted           
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               1        0     247  wasted           
6 months    ki1000109-EE              PAKISTAN                       1               0       62     364  wasted           
6 months    ki1000109-EE              PAKISTAN                       1               1        7     364  wasted           
6 months    ki1000109-EE              PAKISTAN                       0               0      256     364  wasted           
6 months    ki1000109-EE              PAKISTAN                       0               1       39     364  wasted           
6 months    ki1000304b-SAS-CompFeed   INDIA                          1               0       87    1334  wasted           
6 months    ki1000304b-SAS-CompFeed   INDIA                          1               1       10    1334  wasted           
6 months    ki1000304b-SAS-CompFeed   INDIA                          0               0     1081    1334  wasted           
6 months    ki1000304b-SAS-CompFeed   INDIA                          0               1      156    1334  wasted           
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1               0      601     715  wasted           
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1               1       18     715  wasted           
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0               0       93     715  wasted           
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0               1        3     715  wasted           
6 months    ki1113344-GMS-Nepal       NEPAL                          1               0      138     511  wasted           
6 months    ki1113344-GMS-Nepal       NEPAL                          1               1       13     511  wasted           
6 months    ki1113344-GMS-Nepal       NEPAL                          0               0      325     511  wasted           
6 months    ki1113344-GMS-Nepal       NEPAL                          0               1       35     511  wasted           
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1               0     3946    7553  wasted           
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1               1      119    7553  wasted           
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0               0     3369    7553  wasted           
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0               1      119    7553  wasted           
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1               0       28   16784  wasted           
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1               1        8   16784  wasted           
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0               0    15335   16784  wasted           
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0               1     1413   16784  wasted           
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1               0     2921    4833  wasted           
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1               1      174    4833  wasted           
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0               0     1637    4833  wasted           
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0               1      101    4833  wasted           
24 months   ki0047075b-MAL-ED         BANGLADESH                     1               0      116     211  wasted           
24 months   ki0047075b-MAL-ED         BANGLADESH                     1               1       12     211  wasted           
24 months   ki0047075b-MAL-ED         BANGLADESH                     0               0       74     211  wasted           
24 months   ki0047075b-MAL-ED         BANGLADESH                     0               1        9     211  wasted           
24 months   ki0047075b-MAL-ED         BRAZIL                         1               0       79     169  wasted           
24 months   ki0047075b-MAL-ED         BRAZIL                         1               1        1     169  wasted           
24 months   ki0047075b-MAL-ED         BRAZIL                         0               0       87     169  wasted           
24 months   ki0047075b-MAL-ED         BRAZIL                         0               1        2     169  wasted           
24 months   ki0047075b-MAL-ED         INDIA                          1               0      115     227  wasted           
24 months   ki0047075b-MAL-ED         INDIA                          1               1       19     227  wasted           
24 months   ki0047075b-MAL-ED         INDIA                          0               0       85     227  wasted           
24 months   ki0047075b-MAL-ED         INDIA                          0               1        8     227  wasted           
24 months   ki0047075b-MAL-ED         NEPAL                          1               0       94     228  wasted           
24 months   ki0047075b-MAL-ED         NEPAL                          1               1        1     228  wasted           
24 months   ki0047075b-MAL-ED         NEPAL                          0               0      129     228  wasted           
24 months   ki0047075b-MAL-ED         NEPAL                          0               1        4     228  wasted           
24 months   ki0047075b-MAL-ED         PERU                           1               0      145     201  wasted           
24 months   ki0047075b-MAL-ED         PERU                           1               1        4     201  wasted           
24 months   ki0047075b-MAL-ED         PERU                           0               0       52     201  wasted           
24 months   ki0047075b-MAL-ED         PERU                           0               1        0     201  wasted           
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1               0      144     235  wasted           
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1               1        0     235  wasted           
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0               0       90     235  wasted           
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0               1        1     235  wasted           
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               0      178     214  wasted           
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               1        2     214  wasted           
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               0       32     214  wasted           
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               1        2     214  wasted           
24 months   ki1000109-EE              PAKISTAN                       1               0       28     164  wasted           
24 months   ki1000109-EE              PAKISTAN                       1               1        4     164  wasted           
24 months   ki1000109-EE              PAKISTAN                       0               0      106     164  wasted           
24 months   ki1000109-EE              PAKISTAN                       0               1       26     164  wasted           
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1               0      399     514  wasted           
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1               1       44     514  wasted           
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0               0       70     514  wasted           
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0               1        1     514  wasted           
24 months   ki1113344-GMS-Nepal       NEPAL                          1               0      108     444  wasted           
24 months   ki1113344-GMS-Nepal       NEPAL                          1               1       23     444  wasted           
24 months   ki1113344-GMS-Nepal       NEPAL                          0               0      253     444  wasted           
24 months   ki1113344-GMS-Nepal       NEPAL                          0               1       60     444  wasted           
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1               0      169     379  wasted           
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1               1       32     379  wasted           
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0               0      139     379  wasted           
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0               1       39     379  wasted           
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1               0        1    8603  wasted           
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1               1        0    8603  wasted           
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0               0     6724    8603  wasted           
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0               1     1878    8603  wasted           
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1               0     2433    4735  wasted           
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1               1      598    4735  wasted           
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0               0     1382    4735  wasted           
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0               1      322    4735  wasted           


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




# Results Detail

## Results Plots
![](/tmp/d6ff763d-838f-4aa7-9495-d371f19c6d7a/4bcf6460-65d0-4693-9bcc-c582ef521084/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d6ff763d-838f-4aa7-9495-d371f19c6d7a/4bcf6460-65d0-4693-9bcc-c582ef521084/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d6ff763d-838f-4aa7-9495-d371f19c6d7a/4bcf6460-65d0-4693-9bcc-c582ef521084/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d6ff763d-838f-4aa7-9495-d371f19c6d7a/4bcf6460-65d0-4693-9bcc-c582ef521084/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.1428571   0.0847568   0.2009575
Birth       ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.2162162   0.1222024   0.3102300
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.0724638   0.0110123   0.1339153
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.1219512   0.0213295   0.2225729
Birth       ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.1265823   0.0495234   0.2036412
Birth       ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.1057402   0.0779666   0.1335138
Birth       ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.2414356   0.2075338   0.2753373
Birth       ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.2553191   0.1671091   0.3435292
Birth       ki1113344-GMS-Nepal       NEPAL          1                    NA                0.2456140   0.1810420   0.3101860
Birth       ki1113344-GMS-Nepal       NEPAL          0                    NA                0.2000000   0.1614828   0.2385172
Birth       ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.1338326   0.1253174   0.1423478
Birth       ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.1969471   0.1863119   0.2075823
Birth       kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1523810   0.1348322   0.1699298
Birth       kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.1093172   0.1040620   0.1145723
Birth       kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.0905172   0.0749442   0.1060903
Birth       kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.1191710   0.0865584   0.1517835
6 months    ki0047075b-MAL-ED         INDIA          1                    NA                0.0928571   0.0446788   0.1410355
6 months    ki0047075b-MAL-ED         INDIA          0                    NA                0.0625000   0.0139756   0.1110244
6 months    ki1000109-EE              PAKISTAN       1                    NA                0.1014493   0.0301120   0.1727866
6 months    ki1000109-EE              PAKISTAN       0                    NA                0.1322034   0.0934986   0.1709082
6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.1030928   0.0556218   0.1505638
6 months    ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.1261116   0.0987820   0.1534411
6 months    ki1113344-GMS-Nepal       NEPAL          1                    NA                0.0860927   0.0413091   0.1308763
6 months    ki1113344-GMS-Nepal       NEPAL          0                    NA                0.0972222   0.0665888   0.1278556
6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0292743   0.0240918   0.0344568
6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0341170   0.0280923   0.0401417
6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.2222222   0.2115818   0.2328627
6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.0843683   0.0794631   0.0892735
6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.0562197   0.0456225   0.0668169
6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.0581128   0.0431483   0.0730773
24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.0937500   0.0431344   0.1443656
24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.1084337   0.0413836   0.1754839
24 months   ki0047075b-MAL-ED         INDIA          1                    NA                0.1417910   0.0825974   0.2009847
24 months   ki0047075b-MAL-ED         INDIA          0                    NA                0.0860215   0.0289083   0.1431348
24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.1755725   0.1103486   0.2407964
24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.1916933   0.1480360   0.2353506
24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.1592040   0.1085579   0.2098501
24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.2191011   0.1582552   0.2799470
24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.1972946   0.1812292   0.2133601
24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.1889671   0.1658292   0.2121051


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
Birth       ki0047075b-MAL-ED         BANGLADESH     0                    1                 1.5135135   0.8344854   2.7450727
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   0                    1                 1.6829268   0.5154797   5.4943827
Birth       ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA          0                    1                 0.8353474   0.5199323   1.3421082
Birth       ki1017093c-NIH-Crypto     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto     BANGLADESH     0                    1                 1.0575043   0.7283142   1.5354847
Birth       ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal       NEPAL          0                    1                 0.8142857   0.5878188   1.1280028
Birth       ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 1.4715928   1.3537700   1.5996701
Birth       kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH     0                    1                 0.7173940   0.6327818   0.8133202
Birth       kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH     0                    1                 1.3165556   0.9602279   1.8051118
6 months    ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         INDIA          0                    1                 0.6730769   0.2645580   1.7124128
6 months    ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE              PAKISTAN       0                    1                 1.3031477   0.6084070   2.7912135
6 months    ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA          0                    1                 1.2232821   0.7390414   2.0248110
6 months    ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL          0                    1                 1.1292735   0.6147182   2.0745420
6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 1.1654243   0.9075893   1.4965071
6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    1                 0.3796573   0.3526532   0.4087292
6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    1                 1.0336726   0.7562894   1.4127913
24 months   ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH     0                    1                 1.1566265   0.5089650   2.6284418
24 months   ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         INDIA          0                    1                 0.6066780   0.2769161   1.3291323
24 months   ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL          0                    1                 1.0918183   0.7061683   1.6880782
24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 1.3762289   0.9021857   2.0993528
24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    1                 0.9577916   0.8266020   1.1098023


### Parameter: PAR


agecat      studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0253672   -0.0131356    0.0638699
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                 0.0184453   -0.0257292    0.0626198
Birth       ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0193062   -0.0774143    0.0388020
Birth       ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                 0.0018459   -0.0107233    0.0144151
Birth       ki1113344-GMS-Nepal       NEPAL          1                    NA                -0.0323035   -0.0855769    0.0209700
Birth       ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0294469    0.0230644    0.0358293
Birth       kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -0.0428118   -0.0607469   -0.0248766
Birth       kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0092323   -0.0022663    0.0207310
6 months    ki0047075b-MAL-ED         INDIA          1                    NA                -0.0123487   -0.0402294    0.0155320
6 months    ki1000109-EE              PAKISTAN       1                    NA                 0.0249244   -0.0408632    0.0907119
6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                 0.0213450   -0.0286023    0.0712923
6 months    ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0078407   -0.0303869    0.0460684
6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0022364   -0.0014340    0.0059067
6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -0.1375583   -0.1488080   -0.1263085
6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0006808   -0.0057796    0.0071411
24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0057761   -0.0272847    0.0388368
24 months   ki0047075b-MAL-ED         INDIA          1                    NA                -0.0228483   -0.0567365    0.0110399
24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0113644   -0.0439692    0.0666980
24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0281311   -0.0091717    0.0654339
24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0029968   -0.0131480    0.0071543


### Parameter: PAF


agecat      studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.1507937   -0.1080697    0.3491822
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                 0.2028986   -0.4432286    0.5597574
Birth       ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.1799670   -0.8324442    0.2401831
Birth       ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                 0.0075875   -0.0454428    0.0579279
Birth       ki1113344-GMS-Nepal       NEPAL          1                    NA                -0.1514386   -0.4298194    0.0727424
Birth       ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.1803463    0.1408206    0.2180538
Birth       kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -0.3907281   -0.5700005   -0.2319261
Birth       kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0925552   -0.0255085    0.1970265
6 months    ki0047075b-MAL-ED         INDIA          1                    NA                -0.1533835   -0.5504312    0.1419849
6 months    ki1000109-EE              PAKISTAN       1                    NA                 0.1972275   -0.5313880    0.5791767
6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                 0.1715315   -0.3276061    0.4830093
6 months    ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0834713   -0.4280605    0.4117722
6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0709717   -0.0527651    0.1801651
6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -1.6247556   -1.8169228   -1.4456979
6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0119642   -0.1082323    0.1191244
24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0580357   -0.3393097    0.3374970
24 months   ki0047075b-MAL-ED         INDIA          1                    NA                -0.1920951   -0.5068616    0.0569202
24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0607928   -0.2869813    0.3145897
24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.1501647   -0.0722960    0.3264732
24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0154240   -0.0691279    0.0355823

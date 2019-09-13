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

agecat      studyid                   country                        earlybf    stunted   n_cell       n
----------  ------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                0      134     256
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                1       25     256
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                0       75     256
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                1       22     256
Birth       ki0047075b-MAL-ED         BRAZIL                         1                0       76     191
Birth       ki0047075b-MAL-ED         BRAZIL                         1                1        7     191
Birth       ki0047075b-MAL-ED         BRAZIL                         0                0       94     191
Birth       ki0047075b-MAL-ED         BRAZIL                         0                1       14     191
Birth       ki0047075b-MAL-ED         INDIA                          1                0      106     205
Birth       ki0047075b-MAL-ED         INDIA                          1                1       18     205
Birth       ki0047075b-MAL-ED         INDIA                          0                0       66     205
Birth       ki0047075b-MAL-ED         INDIA                          0                1       15     205
Birth       ki0047075b-MAL-ED         NEPAL                          1                0       72     173
Birth       ki0047075b-MAL-ED         NEPAL                          1                1        7     173
Birth       ki0047075b-MAL-ED         NEPAL                          0                0       83     173
Birth       ki0047075b-MAL-ED         NEPAL                          0                1       11     173
Birth       ki0047075b-MAL-ED         PERU                           1                0      192     287
Birth       ki0047075b-MAL-ED         PERU                           1                1       22     287
Birth       ki0047075b-MAL-ED         PERU                           0                0       61     287
Birth       ki0047075b-MAL-ED         PERU                           0                1       12     287
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                0      143     247
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                1       12     247
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       78     247
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                1       14     247
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0       96     123
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1       15     123
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0        9     123
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        3     123
Birth       ki1000109-EE              PAKISTAN                       1                0        0       2
Birth       ki1000109-EE              PAKISTAN                       1                1        1       2
Birth       ki1000109-EE              PAKISTAN                       0                0        1       2
Birth       ki1000109-EE              PAKISTAN                       0                1        0       2
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                0       13     177
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                1        1     177
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                0      122     177
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                1       41     177
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                0       18      27
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                1        5      27
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                0        4      27
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                1        0      27
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                0     5894   12319
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                1      639   12319
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                0     5157   12319
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                1      629   12319
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                0       76   19541
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                1      136   19541
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                0    13148   19541
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                1     6181   19541
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                0      401     822
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                1      165     822
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                0      174     822
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                1       82     822
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                0      123     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                1       24     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                0       72     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                1       21     240
6 months    ki0047075b-MAL-ED         BRAZIL                         1                0       93     209
6 months    ki0047075b-MAL-ED         BRAZIL                         1                1        2     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0                0      110     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0                1        4     209
6 months    ki0047075b-MAL-ED         INDIA                          1                0      114     236
6 months    ki0047075b-MAL-ED         INDIA                          1                1       26     236
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
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      161     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1       44     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       28     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1       14     247
6 months    ki1000109-EE              PAKISTAN                       1                0       32     372
6 months    ki1000109-EE              PAKISTAN                       1                1       36     372
6 months    ki1000109-EE              PAKISTAN                       0                0      147     372
6 months    ki1000109-EE              PAKISTAN                       0                1      157     372
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                0       75    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                1       23    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                0      881    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                1      357    1336
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                0      481     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                1      138     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                0       84     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                1       12     715
6 months    ki1113344-GMS-Nepal       NEPAL                          1                0      125     510
6 months    ki1113344-GMS-Nepal       NEPAL                          1                1       26     510
6 months    ki1113344-GMS-Nepal       NEPAL                          0                0      280     510
6 months    ki1113344-GMS-Nepal       NEPAL                          0                1       79     510
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                0     3341    7365
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                1      627    7365
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                0     2791    7365
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                1      606    7365
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                0       15   16811
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                1       20   16811
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                0    12570   16811
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                1     4206   16811
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                0     2329    4831
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                1      765    4831
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                0     1282    4831
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                1      455    4831
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                0       67     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                1       61     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                0       47     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                1       36     211
24 months   ki0047075b-MAL-ED         BRAZIL                         1                0       78     169
24 months   ki0047075b-MAL-ED         BRAZIL                         1                1        2     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0                0       85     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0                1        4     169
24 months   ki0047075b-MAL-ED         INDIA                          1                0       77     227
24 months   ki0047075b-MAL-ED         INDIA                          1                1       57     227
24 months   ki0047075b-MAL-ED         INDIA                          0                0       55     227
24 months   ki0047075b-MAL-ED         INDIA                          0                1       38     227
24 months   ki0047075b-MAL-ED         NEPAL                          1                0       73     228
24 months   ki0047075b-MAL-ED         NEPAL                          1                1       22     228
24 months   ki0047075b-MAL-ED         NEPAL                          0                0      106     228
24 months   ki0047075b-MAL-ED         NEPAL                          0                1       27     228
24 months   ki0047075b-MAL-ED         PERU                           1                0       88     201
24 months   ki0047075b-MAL-ED         PERU                           1                1       61     201
24 months   ki0047075b-MAL-ED         PERU                           0                0       39     201
24 months   ki0047075b-MAL-ED         PERU                           0                1       13     201
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                0       90     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                1       54     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       63     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                1       28     235
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0       53     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1      127     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0        8     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1       26     214
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                0      320     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                1      123     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                0       62     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                1        9     514
24 months   ki1113344-GMS-Nepal       NEPAL                          1                0       97     455
24 months   ki1113344-GMS-Nepal       NEPAL                          1                1       39     455
24 months   ki1113344-GMS-Nepal       NEPAL                          0                0      155     455
24 months   ki1113344-GMS-Nepal       NEPAL                          0                1      164     455
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                0       75     399
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                1      139     399
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                0       65     399
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                1      120     399
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                0        1    8632
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                1        0    8632
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                0     4395    8632
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                1     4236    8632
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                0     1833    4752
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                1     1209    4752
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                0     1055    4752
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                1      655    4752


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
![](/tmp/7e3b50c9-32cc-4726-b08c-48e2bcf58e6a/2af2cb2a-b5d8-4a9a-8e9f-72beb5aa2a73/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7e3b50c9-32cc-4726-b08c-48e2bcf58e6a/2af2cb2a-b5d8-4a9a-8e9f-72beb5aa2a73/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7e3b50c9-32cc-4726-b08c-48e2bcf58e6a/2af2cb2a-b5d8-4a9a-8e9f-72beb5aa2a73/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7e3b50c9-32cc-4726-b08c-48e2bcf58e6a/2af2cb2a-b5d8-4a9a-8e9f-72beb5aa2a73/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1537485   0.0965281   0.2109690
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.2137081   0.1293001   0.2981161
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.0843373   0.0243960   0.1442787
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.1296296   0.0661140   0.1931452
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                0.1431744   0.0808876   0.2054612
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                0.1793064   0.0932048   0.2654079
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                0.0886076   0.0257610   0.1514542
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1170213   0.0518509   0.1821917
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                0.1023361   0.0615485   0.1431238
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                0.1793655   0.0913917   0.2673394
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.0774346   0.0348581   0.1200112
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.1499269   0.0761943   0.2236596
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.1027441   0.0973797   0.1081085
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.1030123   0.0976341   0.1083905
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.3428744   0.3307108   0.3550381
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.3231341   0.3154673   0.3308009
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.3005627   0.2649984   0.3361271
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.3003015   0.2646982   0.3359048
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1700499   0.1089845   0.2311154
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.2148018   0.1297309   0.2998727
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                0.1831910   0.1197997   0.2465823
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                0.1988204   0.1209578   0.2766829
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                0.2168553   0.1593345   0.2743761
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                0.1871824   0.0948490   0.2795158
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.1804488   0.1178270   0.2430706
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.1605451   0.0782760   0.2428143
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2137970   0.1577123   0.2698817
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3460997   0.2033663   0.4888331
6 months    ki1000109-EE              PAKISTAN                       1                    NA                0.5417857   0.4270082   0.6565633
6 months    ki1000109-EE              PAKISTAN                       0                    NA                0.5103965   0.4551055   0.5656874
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.2434917   0.1728276   0.3141558
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.2873470   0.2702123   0.3044817
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.2231466   0.1903945   0.2558987
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.1339660   0.0671972   0.2007348
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1649416   0.1061677   0.2237154
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.2194032   0.1765523   0.2622540
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.1657168   0.1544904   0.1769432
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.1679551   0.1557462   0.1801639
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.5316083   0.5181908   0.5450258
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.2507918   0.2424858   0.2590978
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.2450561   0.2279531   0.2621591
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.2654277   0.2412750   0.2895804
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.5009456   0.4169607   0.5849305
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.3905603   0.2882814   0.4928392
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.4255008   0.3430079   0.5079937
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.4155082   0.3166466   0.5143699
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2313560   0.1477645   0.3149475
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2008752   0.1328766   0.2688737
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.4090448   0.3298604   0.4882293
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.2387612   0.1245030   0.3530194
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.3739605   0.2943671   0.4535538
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.3093370   0.2138913   0.4047827
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7055556   0.6388140   0.7722971
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7647059   0.6217907   0.9076211
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.2776524   0.2359085   0.3193963
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.1267606   0.0492965   0.2042247
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.2751165   0.1985787   0.3516542
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.5130489   0.4579836   0.5681142
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.6645672   0.6019583   0.7271762
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.6299870   0.5629274   0.6970466
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.3956086   0.3747267   0.4164904
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.3856471   0.3593614   0.4119328


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1835938   0.1360755   0.2311120
Birth       ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.1099476   0.0654669   0.1544284
Birth       ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1609756   0.1105443   0.2114069
Birth       ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.1040462   0.0584174   0.1496751
Birth       ki0047075b-MAL-ED         PERU                           NA                   NA                0.1184669   0.0810142   0.1559196
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.1052632   0.0669131   0.1436132
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.1029304   0.0975643   0.1082966
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.3232690   0.3156091   0.3309289
Birth       kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.3004866   0.2649179   0.3360553
6 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1875000   0.1380164   0.2369836
6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1949153   0.1442678   0.2455627
6 months    ki0047075b-MAL-ED         PERU                           NA                   NA                0.2197802   0.1705687   0.2689917
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.1960000   0.1466935   0.2453065
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2348178   0.1818480   0.2877876
6 months    ki1000109-EE              PAKISTAN                       NA                   NA                0.5188172   0.4679751   0.5696593
6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.2058824   0.1707553   0.2410094
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.1674134   0.1588863   0.1759405
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.2513830   0.2432594   0.2595066
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.2525357   0.2384780   0.2665934
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.4597156   0.3923103   0.5271210
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.4185022   0.3541865   0.4828179
24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.2149123   0.1614774   0.2683472
24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.3489362   0.2878666   0.4100058
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7149533   0.6543278   0.7755787
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.4461538   0.4004285   0.4918792
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.6491228   0.6022363   0.6960093
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.3922559   0.3752678   0.4092440


### Parameter: RR


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    1                 1.3899847   0.8056606   2.3981037
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    1                 1.5370370   0.6482982   3.6441300
Birth       ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         INDIA                          0                    1                 1.2523630   0.6566143   2.3886369
Birth       ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         NEPAL                          0                    1                 1.3206687   0.5359877   3.2541155
Birth       ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         PERU                           0                    1                 1.7527093   0.9305585   3.3012323
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 1.9361736   0.9250607   4.0524566
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 1.0026100   0.9972849   1.0079635
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 0.9424269   0.9162612   0.9693398
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 0.9991309   0.9940272   1.0042608
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 1.2631691   0.7418823   2.1507404
6 months    ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         INDIA                          0                    1                 1.0853174   0.6533249   1.8029526
6 months    ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         PERU                           0                    1                 0.8631674   0.4921373   1.5139230
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 0.8896990   0.4765442   1.6610511
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.6188239   0.9986658   2.6240920
6 months    ki1000109-EE              PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE              PAKISTAN                       0                    1                 0.9420633   0.7478745   1.1866742
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.1801101   0.9044645   1.5397617
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 0.6003499   0.3570133   1.0095420
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.3301873   0.8862206   1.9965663
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 1.0135066   0.9210060   1.1152975
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 0.4717605   0.4528668   0.4914425
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 1.0831305   0.9675493   1.2125187
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 0.7796461   0.5785481   1.0506440
24 months   ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         INDIA                          0                    1                 0.9765157   0.7238824   1.3173176
24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 0.8682515   0.5362153   1.4058916
24 months   ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         PERU                           0                    1                 0.5837042   0.3504648   0.9721677
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 0.8271917   0.5676431   1.2054160
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0838351   0.8790097   1.3363886
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 0.4565441   0.2433150   0.8566365
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.8648426   1.3843424   2.5121227
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 0.9479658   0.8260883   1.0878245
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 0.9748199   0.8984482   1.0576835


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0298452   -0.0093495    0.0690399
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0256103   -0.0238753    0.0750959
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0178012   -0.0239457    0.0595480
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0154386   -0.0338001    0.0646774
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                 0.0161308   -0.0080723    0.0403339
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0278285   -0.0043511    0.0600081
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0001863   -0.0000977    0.0004704
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0196054   -0.0290285   -0.0101823
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0000761   -0.0005429    0.0003906
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0174501   -0.0238267    0.0587268
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0117242   -0.0282214    0.0516699
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0029249   -0.0269210    0.0327708
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0155512   -0.0245795    0.0556819
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0210208   -0.0048016    0.0468432
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -0.0229685   -0.1254712    0.0795341
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0409394   -0.0203150    0.1021939
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0133564   -0.0237817   -0.0029310
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0409408   -0.0103452    0.0922268
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0016966   -0.0058114    0.0092047
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.2802253   -0.2953545   -0.2650960
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0074796   -0.0028860    0.0178453
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0412300   -0.0912963    0.0088363
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0069986   -0.0582654    0.0442683
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0164437   -0.0789613    0.0460738
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0408856   -0.0773650   -0.0044063
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0250243   -0.0739955    0.0239470
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0093977   -0.0158301    0.0346255
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0208430   -0.0338062   -0.0078799
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.1710374    0.1037508    0.2383240
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0154444   -0.0564396    0.0255507
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0033527   -0.0147096    0.0080043


### Parameter: PAF


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.1625611   -0.0783677    0.3496616
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.2329317   -0.3648710    0.5689016
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                 0.1105831   -0.1891402    0.3347610
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.1483826   -0.4782311    0.5093783
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                 0.1361625   -0.0902714    0.3155693
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.2643709   -0.0964221    0.5064399
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0018100   -0.0009519    0.0045643
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0606473   -0.0902323   -0.0318651
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0002533   -0.0018086    0.0012995
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0930670   -0.1545918    0.2876032
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0601505   -0.1689058    0.2443214
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0133084   -0.1323123    0.1402015
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0793429   -0.1504173    0.2632155
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0895197   -0.0267308    0.1926079
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -0.0442709   -0.2617831    0.1357455
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.1439345   -0.1060546    0.3374213
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0636653   -0.1143046   -0.0153273
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.1988552   -0.0912044    0.4118123
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0101345   -0.0357347    0.0539723
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -1.1147342   -1.1997403   -1.0330131
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0296181   -0.0122691    0.0697720
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0896858   -0.2050884    0.0146656
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0167229   -0.1469217    0.0986957
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0765136   -0.4104882    0.1783826
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.1110542   -0.2148044   -0.0161648
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0717159   -0.2218077    0.0599380
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0131445   -0.0228519    0.0478741
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0811615   -0.1324602   -0.0321865
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.3833597    0.2121657    0.5173537
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0237928   -0.0889414    0.0374582
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0085472   -0.0379039    0.0199792

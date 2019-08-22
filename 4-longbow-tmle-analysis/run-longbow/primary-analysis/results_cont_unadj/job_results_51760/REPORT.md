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

**Outcome Variable:** haz

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

agecat      studyid                   country                        earlybf    n_cell       n
----------  ------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1             159     256
Birth       ki0047075b-MAL-ED         BANGLADESH                     0              97     256
Birth       ki0047075b-MAL-ED         BRAZIL                         1              83     191
Birth       ki0047075b-MAL-ED         BRAZIL                         0             108     191
Birth       ki0047075b-MAL-ED         INDIA                          1             124     205
Birth       ki0047075b-MAL-ED         INDIA                          0              81     205
Birth       ki0047075b-MAL-ED         NEPAL                          1              79     173
Birth       ki0047075b-MAL-ED         NEPAL                          0              94     173
Birth       ki0047075b-MAL-ED         PERU                           1             214     287
Birth       ki0047075b-MAL-ED         PERU                           0              73     287
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1             155     247
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0              92     247
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             111     123
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              12     123
Birth       ki1000109-EE              PAKISTAN                       1               1       2
Birth       ki1000109-EE              PAKISTAN                       0               1       2
Birth       ki1000304b-SAS-CompFeed   INDIA                          1              14     177
Birth       ki1000304b-SAS-CompFeed   INDIA                          0             163     177
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1              23      27
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0               4      27
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1            6533   12319
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0            5786   12319
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1             212   19541
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0           19329   19541
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1             566     822
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0             256     822
6 months    ki0047075b-MAL-ED         BANGLADESH                     1             147     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0              93     240
6 months    ki0047075b-MAL-ED         BRAZIL                         1              95     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0             114     209
6 months    ki0047075b-MAL-ED         INDIA                          1             140     236
6 months    ki0047075b-MAL-ED         INDIA                          0              96     236
6 months    ki0047075b-MAL-ED         NEPAL                          1              96     236
6 months    ki0047075b-MAL-ED         NEPAL                          0             140     236
6 months    ki0047075b-MAL-ED         PERU                           1             202     273
6 months    ki0047075b-MAL-ED         PERU                           0              71     273
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1             156     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0              94     250
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             205     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              42     247
6 months    ki1000109-EE              PAKISTAN                       1              68     372
6 months    ki1000109-EE              PAKISTAN                       0             304     372
6 months    ki1000304b-SAS-CompFeed   INDIA                          1              98    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          0            1238    1336
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1             619     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0              96     715
6 months    ki1113344-GMS-Nepal       NEPAL                          1             151     510
6 months    ki1113344-GMS-Nepal       NEPAL                          0             359     510
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1            3968    7365
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0            3397    7365
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1              35   16811
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0           16776   16811
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1            3094    4831
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0            1737    4831
24 months   ki0047075b-MAL-ED         BANGLADESH                     1             128     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0              83     211
24 months   ki0047075b-MAL-ED         BRAZIL                         1              80     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0              89     169
24 months   ki0047075b-MAL-ED         INDIA                          1             134     227
24 months   ki0047075b-MAL-ED         INDIA                          0              93     227
24 months   ki0047075b-MAL-ED         NEPAL                          1              95     228
24 months   ki0047075b-MAL-ED         NEPAL                          0             133     228
24 months   ki0047075b-MAL-ED         PERU                           1             149     201
24 months   ki0047075b-MAL-ED         PERU                           0              52     201
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             144     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              91     235
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             180     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              34     214
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             443     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              71     514
24 months   ki1113344-GMS-Nepal       NEPAL                          1             136     455
24 months   ki1113344-GMS-Nepal       NEPAL                          0             319     455
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             214     399
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             185     399
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1               1    8632
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0            8631    8632
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1            3042    4752
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0            1710    4752


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

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
![](/tmp/2e03bde3-5e1a-4161-afcc-692b51d09d58/eaed30b6-eddf-4ed7-80d4-7fd1ad7d25b5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2e03bde3-5e1a-4161-afcc-692b51d09d58/eaed30b6-eddf-4ed7-80d4-7fd1ad7d25b5/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2e03bde3-5e1a-4161-afcc-692b51d09d58/eaed30b6-eddf-4ed7-80d4-7fd1ad7d25b5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.9757233   -1.1281269   -0.8233196
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.2710309   -1.4856022   -1.0564596
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.8280723   -1.0673614   -0.5887832
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.7093519   -0.9165880   -0.5021157
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -1.0249194   -1.1875996   -0.8622391
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                -0.9969136   -1.2485576   -0.7452696
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.6668354   -0.8980380   -0.4356329
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.7442553   -0.9571124   -0.5313983
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.8515421   -0.9726039   -0.7304802
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                -1.1687671   -1.4344710   -0.9030633
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.5849032   -0.7353974   -0.4344091
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.8676087   -1.0894452   -0.6457721
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.8765766   -1.0847237   -0.6684295
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.4633333   -2.4355886   -0.4910780
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -1.2107143   -1.5130885   -0.9083401
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -1.3795092   -1.6220416   -1.1369768
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.5152824   -0.5438271   -0.4867378
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.4611614   -0.4947363   -0.4275865
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -2.5772641   -2.6878493   -2.4666790
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -1.5642998   -1.5841960   -1.5444035
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.4627739   -1.5635979   -1.3619498
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.5748047   -1.7282248   -1.4213845
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -1.1579138   -1.3079649   -1.0078628
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.2828495   -1.4726138   -1.0930852
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0133684   -0.2326762    0.2059393
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.1046784   -0.0853754    0.2947322
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -1.2095119   -1.3624204   -1.0566034
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -1.2361979   -1.4232004   -1.0491954
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.6885243   -0.8530343   -0.5240143
6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.4736548   -0.6248834   -0.3224261
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                -1.3275165   -1.4548945   -1.2001385
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                -1.3247653   -1.5300439   -1.1194866
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -1.0512393   -1.2049782   -0.8975005
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -1.0743706   -1.3030216   -0.8457196
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3172520   -1.4447796   -1.1897245
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.5693651   -1.9200719   -1.2186583
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -2.0208088   -2.3380317   -1.7035859
6 months    ki1000109-EE              PAKISTAN                       0                    NA                -2.2406579   -2.3728850   -2.1084308
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -1.2686735   -1.5069719   -1.0303750
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -1.4123990   -1.4871070   -1.3376911
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -1.2285137   -1.3049997   -1.1520277
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -1.0063021   -1.2011819   -0.8114223
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.1379029   -1.2871532   -0.9886526
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.3670427   -1.4640921   -1.2699934
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.8400731   -0.8773156   -0.8028305
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.9372005   -0.9783764   -0.8960245
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -2.3574286   -2.4045861   -2.3102710
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -1.3109144   -1.3345766   -1.2872522
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.3382708   -1.3839008   -1.2926409
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.3564134   -1.4152717   -1.2975550
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -1.9245703   -2.0800940   -1.7690466
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.9590361   -2.1723110   -1.7457613
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0198125   -0.2360963    0.2757213
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0616292   -0.1571691    0.2804276
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -1.8900000   -2.0572797   -1.7227203
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -1.7821505   -1.9726508   -1.5916503
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -1.3450526   -1.5208607   -1.1692445
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -1.2253383   -1.3883056   -1.0623711
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -1.8097651   -1.9510791   -1.6684511
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                -1.5791346   -1.8024632   -1.3558060
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -1.6384375   -1.8141331   -1.4627419
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -1.5765385   -1.7925587   -1.3605183
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.5725278   -2.7168892   -2.4281664
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.7825000   -3.1395140   -2.4254860
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -1.4652144   -1.5571544   -1.3732744
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -1.2069014   -1.3827976   -1.0310052
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.5698162   -1.7139383   -1.4256941
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.9977273   -2.1062810   -1.8891735
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -2.3992056   -2.5666749   -2.2317363
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -2.3398378   -2.5237605   -2.1559152
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.7769954   -1.8213824   -1.7326084
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.7249532   -1.7786544   -1.6712520


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -1.0876172   -1.2136298   -0.9616045
Birth       ki0047075b-MAL-ED         BRAZIL                         NA                   NA                -0.7609424   -0.9178311   -0.6040538
Birth       ki0047075b-MAL-ED         INDIA                          NA                   NA                -1.0138537   -1.1537563   -0.8739510
Birth       ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED         PERU                           NA                   NA                -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.6902024   -0.8168430   -0.5635618
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.9338211   -1.1465079   -0.7211344
Birth       ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -1.3661582   -1.6025814   -1.1297350
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -0.4898628   -0.5117273   -0.4679983
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -1.5752894   -1.5950861   -1.5554927
Birth       kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -1.2063264   -1.3242819   -1.0883709
6 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                -1.2203672   -1.3387619   -1.1019726
6 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED         PERU                           NA                   NA                -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -1.0599367   -1.1887637   -0.9311096
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3601215   -1.4821830   -1.2380600
6 months    ki1000109-EE              PAKISTAN                       NA                   NA                -2.2004704   -2.3234073   -2.0775336
6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.2991993   -1.3810668   -1.2173319
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -0.8848717   -0.9125215   -0.8572218
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -1.3130932   -1.3362359   -1.2899505
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -1.9381280   -2.0644004   -1.8118555
24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -1.6144681   -1.7508611   -1.4780751
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6058879   -2.7403043   -2.4714714
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.8698242   -1.9591140   -1.7805343
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -2.3716792   -2.4955680   -2.2477904
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.7582681   -1.7937283   -1.7228079


### Parameter: ATE


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.2953077   -0.5584952   -0.0321201
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.1187204   -0.1978330    0.4352739
Birth       ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         INDIA                          0                    1                  0.0280058   -0.2716433    0.3276548
Birth       ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0774199   -0.3916853    0.2368456
Birth       ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU                           0                    1                 -0.3172251   -0.6092088   -0.0252413
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.2827055   -0.5507725   -0.0146384
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.5867568   -1.5810432    0.4075297
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.1687949   -0.4353771    0.0977873
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0541210    0.0100521    0.0981899
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  1.0129644    0.9008784    1.1250504
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.1120308   -0.2965034    0.0724417
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.1249356   -0.3668567    0.1169854
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.1180468   -0.1721537    0.4082473
6 months    ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0266860   -0.2682454    0.2148734
6 months    ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL                          0                    1                  0.2148695   -0.0085888    0.4383279
6 months    ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU                           0                    1                  0.0027512   -0.2388362    0.2443387
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0231313   -0.2986615    0.2523990
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2521130   -0.6252867    0.1210606
6 months    ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN                       0                    1                 -0.2198491   -0.5635268    0.1238286
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.1437256   -0.3575331    0.0700819
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.2222116    0.0128597    0.4315636
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.2291398   -0.4071686   -0.0511111
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.0971274   -0.1526473   -0.0416074
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  1.0465142    0.9934505    1.0995779
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0181425   -0.0901389    0.0538539
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0344658   -0.2984238    0.2294921
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0418167   -0.2948761    0.3785095
24 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.1078495   -0.1456715    0.3613704
24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.1197143   -0.1200081    0.3594367
24 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.2306305   -0.0336522    0.4949131
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0618990   -0.2165497    0.3403477
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2099722   -0.5950686    0.1751241
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.2583130    0.0598377    0.4567883
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.4279111   -0.6083414   -0.2474808
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0593678   -0.1893761    0.3081116
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0520422   -0.0151226    0.1192070


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.1118939   -0.2131556   -0.0106322
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0671299   -0.1120592    0.2463189
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0110657   -0.1073471    0.1294785
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0420663   -0.2129205    0.1287879
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.0806879   -0.1566618   -0.0047140
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.1052992   -0.2065963   -0.0040021
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0572446   -0.1590489    0.0445598
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.1554439   -0.4039031    0.0930153
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0254196    0.0047158    0.0461234
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 1.0019748    0.8925872    1.1113623
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0348904   -0.0924593    0.0226785
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0484126   -0.1424740    0.0456489
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0643892   -0.0941034    0.2228818
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0108553   -0.1091311    0.0874204
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.1274650   -0.0057802    0.2607102
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0007155   -0.0621151    0.0635461
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0086974   -0.1123061    0.0949114
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0428694   -0.1074184    0.0216795
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -0.1796616   -0.4606496    0.1013264
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.1331828   -0.3323264    0.0659607
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0298354    0.0011826    0.0584882
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.1612965   -0.2869438   -0.0356491
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0447986   -0.0704303   -0.0191670
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 1.0443354    0.9925501    1.0961206
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0065232   -0.0323973    0.0193509
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0135576   -0.1174144    0.0902991
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0220218   -0.1553179    0.1993615
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0441850   -0.0599103    0.1482804
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0698333   -0.0702153    0.2098820
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0596656   -0.0101241    0.1294553
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0239694   -0.0839246    0.1318634
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0333601   -0.0954059    0.0286857
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0356814    0.0072013    0.0641614
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.3000080   -0.4277844   -0.1722316
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0275264   -0.0878426    0.1428954
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0187273   -0.0054760    0.0429306

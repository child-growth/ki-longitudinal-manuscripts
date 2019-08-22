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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** impfloor

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        impfloor    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              205     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               17     222
Birth       ki0047075b-MAL-ED          BRAZIL                         1              165     167
Birth       ki0047075b-MAL-ED          BRAZIL                         0                2     167
Birth       ki0047075b-MAL-ED          INDIA                          1              178     188
Birth       ki0047075b-MAL-ED          INDIA                          0               10     188
Birth       ki0047075b-MAL-ED          NEPAL                          1               64     159
Birth       ki0047075b-MAL-ED          NEPAL                          0               95     159
Birth       ki0047075b-MAL-ED          PERU                           1               54     252
Birth       ki0047075b-MAL-ED          PERU                           0              198     252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              196     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               20     216
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                7     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              106     113
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               71      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0      71
Birth       ki1000108-IRC              INDIA                          1              253     253
Birth       ki1000108-IRC              INDIA                          0                0     253
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               24      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                4      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               18      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                5      23
Birth       ki1114097-CONTENT          PERU                           1                2       2
Birth       ki1114097-CONTENT          PERU                           0                0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              925   15666
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0            14741   15666
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               58     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0              625     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              221     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               19     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1              207     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                2     209
6 months    ki0047075b-MAL-ED          INDIA                          1              220     235
6 months    ki0047075b-MAL-ED          INDIA                          0               15     235
6 months    ki0047075b-MAL-ED          NEPAL                          1              103     229
6 months    ki0047075b-MAL-ED          NEPAL                          0              126     229
6 months    ki0047075b-MAL-ED          PERU                           1               58     270
6 months    ki0047075b-MAL-ED          PERU                           0              212     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              229     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               20     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               14     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              231     245
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              257     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0     257
6 months    ki1000108-IRC              INDIA                          1              304     304
6 months    ki1000108-IRC              INDIA                          0                0     304
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              476     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               58     534
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              539     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               43     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              537     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              178     715
6 months    ki1113344-GMS-Nepal        NEPAL                          1               78     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0              363     441
6 months    ki1114097-CONTENT          PERU                           1              201     215
6 months    ki1114097-CONTENT          PERU                           0               14     215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             1463   16746
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            15283   16746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              590    4826
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0             4236    4826
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              195     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               17     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1              167     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                2     169
24 months   ki0047075b-MAL-ED          INDIA                          1              212     227
24 months   ki0047075b-MAL-ED          INDIA                          0               15     227
24 months   ki0047075b-MAL-ED          NEPAL                          1               98     221
24 months   ki0047075b-MAL-ED          NEPAL                          0              123     221
24 months   ki0047075b-MAL-ED          PERU                           1               49     201
24 months   ki0047075b-MAL-ED          PERU                           0              152     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              220     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               18     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              200     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              260     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0     260
24 months   ki1000108-IRC              INDIA                          1              305     305
24 months   ki1000108-IRC              INDIA                          0                0     305
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              376     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               50     426
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              532     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               46     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              346     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              168     514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               72     384
24 months   ki1113344-GMS-Nepal        NEPAL                          0              312     384
24 months   ki1114097-CONTENT          PERU                           1              154     164
24 months   ki1114097-CONTENT          PERU                           0               10     164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              672    8580
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             7908    8580
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              565    4729
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             4164    4729


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/17cf63f7-79e2-46e8-b6f2-ad5315b77f2e/e2c78a05-9b25-42e9-a6ae-816d438e244a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/17cf63f7-79e2-46e8-b6f2-ad5315b77f2e/e2c78a05-9b25-42e9-a6ae-816d438e244a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/17cf63f7-79e2-46e8-b6f2-ad5315b77f2e/e2c78a05-9b25-42e9-a6ae-816d438e244a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -1.0056585   -1.1565036   -0.8548135
Birth       ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.8041176   -1.0636460   -0.5445893
Birth       ki0047075b-MAL-ED       INDIA                          1                    NA                -1.0408989   -1.1815195   -0.9002783
Birth       ki0047075b-MAL-ED       INDIA                          0                    NA                -1.2810000   -2.2424635   -0.3195365
Birth       ki0047075b-MAL-ED       NEPAL                          1                    NA                -1.0660938   -1.3033826   -0.8288049
Birth       ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.8491579   -1.0287407   -0.6695751
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                -0.2053704   -0.4882734    0.0775326
Birth       ki0047075b-MAL-ED       PERU                           0                    NA                 0.0070202   -0.1176747    0.1317151
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0313265   -0.1970677    0.1344146
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                 0.2280000   -0.2015347    0.6575347
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5485714   -0.4383071    1.5354500
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.8251887    0.6170513    1.0333260
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.8305556   -1.3428871   -0.3182240
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.4640000   -1.6852927    0.7572927
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.6058486   -0.6852944   -0.5264029
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.7309036   -0.7512122   -0.7105950
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.3244828   -0.5998485   -0.0491170
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.3723840   -0.4574385   -0.2873295
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.1169947   -0.2512921    0.0173027
6 months    ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.3502632   -0.8176916    0.1171653
6 months    ki0047075b-MAL-ED       INDIA                          1                    NA                -0.7077424   -0.8389725   -0.5765124
6 months    ki0047075b-MAL-ED       INDIA                          0                    NA                -0.6752222   -1.0830695   -0.2673750
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.1146926   -0.0804026    0.3097878
6 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                 0.1400265   -0.0434586    0.3235115
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                 1.0806897    0.7945562    1.3668231
6 months    ki0047075b-MAL-ED       PERU                           0                    NA                 1.0450943    0.9097650    1.1804237
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.5385226    0.3750979    0.7019472
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                 0.5610000    0.1590909    0.9629091
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1921429   -0.4103635    0.7946492
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5358947    0.4024112    0.6693782
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.4002433   -0.4954857   -0.3050010
6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.7313793   -0.9725395   -0.4902191
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.1840291   -0.2719730   -0.0960851
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.5134884   -0.7991926   -0.2277841
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0543017   -0.0374388    0.1460422
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0442697   -0.1984281    0.1098888
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.5598291   -0.7980139   -0.3216442
6 months    ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.6411065   -0.7484777   -0.5337353
6 months    ki1114097-CONTENT       PERU                           1                    NA                 1.0474718    0.9267658    1.1681778
6 months    ki1114097-CONTENT       PERU                           0                    NA                 1.3693571    0.9298138    1.8089004
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.4845694   -0.5439941   -0.4251446
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.6030203   -0.6235010   -0.5825397
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.2166102   -0.3160318   -0.1171885
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.4143036   -0.4546038   -0.3740034
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.8094615   -0.9359410   -0.6829821
24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.9511765   -1.4088437   -0.4935092
24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.9366274   -1.0561028   -0.8171519
24 months   ki0047075b-MAL-ED       INDIA                          0                    NA                -1.1736667   -1.6019136   -0.7454198
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.2774490   -0.4507195   -0.1041785
24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.4055285   -0.5571555   -0.2539015
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.1908163   -0.0654759    0.4471085
24 months   ki0047075b-MAL-ED       PERU                           0                    NA                 0.0970395   -0.0381353    0.2322143
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.4226136    0.2955235    0.5497038
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                 0.4766667    0.2087665    0.7445668
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0420833   -0.4589904    0.3748237
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0481000   -0.0825346    0.1787346
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.8863719   -0.9916999   -0.7810439
24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -1.0934000   -1.3612968   -0.8255032
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.8624060   -0.9485916   -0.7762204
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -1.1832609   -1.4736073   -0.8929144
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.6369653   -0.7526951   -0.5212356
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.5555357   -0.7197739   -0.3912975
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -1.2465741   -1.4849736   -1.0081745
24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                -1.1787874   -1.2926824   -1.0648924
24 months   ki1114097-CONTENT       PERU                           1                    NA                 0.5500325    0.4082896    0.6917753
24 months   ki1114097-CONTENT       PERU                           0                    NA                 0.8255000    0.3508595    1.3001405
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -1.1652530   -1.2449551   -1.0855508
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -1.3082410   -1.3317102   -1.2847719
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -1.1248319   -1.2122709   -1.0373929
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -1.2365826   -1.2706295   -1.2025358


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.9902252   -1.1311070   -0.8493435
Birth       ki0047075b-MAL-ED       INDIA                          NA                   NA                -1.0536702   -1.1965043   -0.9108361
Birth       ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.9364780   -1.0810831   -0.7918728
Birth       ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0384921   -0.1542085    0.0772244
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0073148   -0.1632037    0.1485740
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.8080531    0.6030895    1.0130167
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.7508696   -1.2358912   -0.2658480
Birth       kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -0.7235197   -0.7433637   -0.7036757
Birth       kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -0.3683163   -0.4490504   -0.2875821
6 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.1354618   -0.2647919   -0.0061317
6 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.7056667   -0.8312524   -0.5800810
6 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                 0.1286317   -0.0051407    0.2624042
6 months    ki0047075b-MAL-ED       PERU                           NA                   NA                 1.0527407    0.9299728    1.1755087
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                 0.5403280    0.3866002    0.6940558
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5162517    0.3853881    0.6471153
6 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.4362094   -0.5254855   -0.3469333
6 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -0.6267309   -0.7246812   -0.5287807
6 months    ki1114097-CONTENT       PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -0.5926720   -0.6122891   -0.5730549
6 months    kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -0.3901347   -0.4273932   -0.3528762
24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.3487330   -0.4631704   -0.2342957
24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                 0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                 0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0429953   -0.0825155    0.1685060
24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.9106710   -1.0090143   -0.8123277
24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -1.1914974   -1.2943015   -1.0886933
24 months   ki1114097-CONTENT       PERU                           NA                   NA                 0.5668293    0.4302437    0.7034148
24 months   kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -1.2970420   -1.3203145   -1.2737694
24 months   kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -1.2232311   -1.2550891   -1.1913732


### Parameter: ATE


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.2015409   -0.0986410    0.5017228
Birth       ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA                          0                    1                 -0.2401011   -1.2117936    0.7315914
Birth       ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       NEPAL                          0                    1                  0.2169359   -0.0806477    0.5145194
Birth       ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU                           0                    1                  0.2123906   -0.0967743    0.5215555
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.2593265   -0.2010757    0.7197288
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.2766173   -0.7319711    1.2852056
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.3665556   -0.9578460    1.6909571
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.1250550   -0.2063048   -0.0438051
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0479012   -0.3379014    0.2420989
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.2332684   -0.7196070    0.2530701
6 months    ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA                          0                    1                  0.0325202   -0.3959197    0.4609601
6 months    ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL                          0                    1                  0.0253339   -0.2424886    0.2931564
6 months    ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU                           0                    1                 -0.0355953   -0.3521176    0.2809270
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.0224774   -0.4113872    0.4563421
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.3437518   -0.2733638    0.9608674
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.3311360   -0.5904222   -0.0718498
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.3294593   -0.6283925   -0.0305261
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0985713   -0.2779624    0.0808197
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.0812775   -0.3425447    0.1799898
6 months    ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU                           0                    1                  0.3218853   -0.1339307    0.7777014
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.1184510   -0.1803858   -0.0565162
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.1976934   -0.3059101   -0.0894768
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.1417149   -0.6165374    0.3331075
24 months   ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA                          0                    1                 -0.2370393   -0.6816400    0.2075614
24 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.1280795   -0.3583259    0.1021670
24 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.0937769   -0.3835318    0.1959781
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.0540530   -0.2424641    0.3505701
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0901833   -0.3467113    0.5270780
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.2070281   -0.4948869    0.0808307
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.3208549   -0.6237228   -0.0179869
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0814296   -0.1194872    0.2823464
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal     NEPAL                          0                    1                  0.0677867   -0.1964223    0.3319957
24 months   ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU                           0                    1                  0.2754675   -0.2198855    0.7708206
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.1429880   -0.2233666   -0.0626095
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.1117508   -0.2054991   -0.0180024


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0154333   -0.0086151    0.0394817
Birth       ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0127713   -0.0650309    0.0394882
Birth       ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.1296158   -0.0489579    0.3081894
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                 0.1668783   -0.0762761    0.4100327
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0240117   -0.0197862    0.0678096
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2594817   -0.6867083    1.2056717
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0796860   -0.2150777    0.3744497
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.1176711   -0.1941380   -0.0412042
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0438335   -0.3094155    0.2217485
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0184671   -0.0577882    0.0208540
6 months    ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0020758   -0.0252904    0.0294419
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0139392   -0.1334308    0.1613091
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                -0.0279489   -0.2764837    0.2205859
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0018054   -0.0330514    0.0366623
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3241088   -0.2578292    0.9060469
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0359661   -0.0654554   -0.0064767
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0243415   -0.0475127   -0.0011703
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0245394   -0.0693083    0.0202294
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0669019   -0.2819781    0.1481744
6 months    ki1114097-CONTENT       PERU                           1                    NA                 0.0209600   -0.0105708    0.0524907
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.1081026   -0.1646973   -0.0515079
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.1735245   -0.2685294   -0.0785196
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0113639   -0.0497918    0.0270640
24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0156634   -0.0460288    0.0147020
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0712841   -0.1997058    0.0571377
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0709158   -0.2901050    0.1482734
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0040880   -0.0184113    0.0265874
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0850786   -0.3270957    0.4972529
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0242991   -0.0586741    0.0100760
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0255352   -0.0506587   -0.0004116
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0266151   -0.0391373    0.0923676
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                 0.0550767   -0.1596095    0.2697629
24 months   ki1114097-CONTENT       PERU                           1                    NA                 0.0167968   -0.0150576    0.0486512
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.1317890   -0.2058056   -0.0577723
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0983993   -0.1809656   -0.0158329

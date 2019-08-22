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

**Intervention Variable:** nrooms

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        nrooms    n_cell       n
----------  -------------------------  -----------------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+            12     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            135     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     2             47     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     3             28     222
Birth       ki0047075b-MAL-ED          BRAZIL                         4+            99     167
Birth       ki0047075b-MAL-ED          BRAZIL                         1              3     167
Birth       ki0047075b-MAL-ED          BRAZIL                         2             19     167
Birth       ki0047075b-MAL-ED          BRAZIL                         3             46     167
Birth       ki0047075b-MAL-ED          INDIA                          4+            22     188
Birth       ki0047075b-MAL-ED          INDIA                          1             68     188
Birth       ki0047075b-MAL-ED          INDIA                          2             66     188
Birth       ki0047075b-MAL-ED          INDIA                          3             32     188
Birth       ki0047075b-MAL-ED          NEPAL                          4+            94     166
Birth       ki0047075b-MAL-ED          NEPAL                          1             34     166
Birth       ki0047075b-MAL-ED          NEPAL                          2             21     166
Birth       ki0047075b-MAL-ED          NEPAL                          3             17     166
Birth       ki0047075b-MAL-ED          PERU                           4+           127     252
Birth       ki0047075b-MAL-ED          PERU                           1             17     252
Birth       ki0047075b-MAL-ED          PERU                           2             51     252
Birth       ki0047075b-MAL-ED          PERU                           3             57     252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+           159     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1             14     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2             20     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     216
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            54     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             23     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             31     114
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+             5      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             39      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2             26      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3             18      88
Birth       ki1000108-IRC              INDIA                          4+            14     341
Birth       ki1000108-IRC              INDIA                          1            156     341
Birth       ki1000108-IRC              INDIA                          2            140     341
Birth       ki1000108-IRC              INDIA                          3             31     341
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+             2      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1             15      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2              6      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3              0      23
Birth       ki1114097-CONTENT          PERU                           4+             1       2
Birth       ki1114097-CONTENT          PERU                           1              0       2
Birth       ki1114097-CONTENT          PERU                           2              1       2
Birth       ki1114097-CONTENT          PERU                           3              0       2
Birth       ki1135781-COHORTS          INDIA                          4+            90    4454
Birth       ki1135781-COHORTS          INDIA                          1           2879    4454
Birth       ki1135781-COHORTS          INDIA                          2           1328    4454
Birth       ki1135781-COHORTS          INDIA                          3            157    4454
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+           505   15686
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           9890   15686
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           4027   15686
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3           1264   15686
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+            19     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            426     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2            170     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3             68     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+            12     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1            150     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     2             50     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     3             28     240
6 months    ki0047075b-MAL-ED          BRAZIL                         4+           126     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1              4     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2             20     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3             59     209
6 months    ki0047075b-MAL-ED          INDIA                          4+            25     235
6 months    ki0047075b-MAL-ED          INDIA                          1             84     235
6 months    ki0047075b-MAL-ED          INDIA                          2             78     235
6 months    ki0047075b-MAL-ED          INDIA                          3             48     235
6 months    ki0047075b-MAL-ED          NEPAL                          4+           131     236
6 months    ki0047075b-MAL-ED          NEPAL                          1             52     236
6 months    ki0047075b-MAL-ED          NEPAL                          2             31     236
6 months    ki0047075b-MAL-ED          NEPAL                          3             22     236
6 months    ki0047075b-MAL-ED          PERU                           4+           139     270
6 months    ki0047075b-MAL-ED          PERU                           1             19     270
6 months    ki0047075b-MAL-ED          PERU                           2             50     270
6 months    ki0047075b-MAL-ED          PERU                           3             62     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+           191     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1             14     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2             21     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           108     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             13     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             62     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             64     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            197     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2            106     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3             51     368
6 months    ki1000108-IRC              INDIA                          4+            17     406
6 months    ki1000108-IRC              INDIA                          1            183     406
6 months    ki1000108-IRC              INDIA                          2            170     406
6 months    ki1000108-IRC              INDIA                          3             36     406
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+            21     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            414     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2             91     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     3             56     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+            91     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            339     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2            184     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3            101     715
6 months    ki1113344-GMS-Nepal        NEPAL                          4+           267     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1             40     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2            115     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3            141     563
6 months    ki1114097-CONTENT          PERU                           4+            78     215
6 months    ki1114097-CONTENT          PERU                           1             44     215
6 months    ki1114097-CONTENT          PERU                           2             54     215
6 months    ki1114097-CONTENT          PERU                           3             39     215
6 months    ki1135781-COHORTS          INDIA                          4+            93    4955
6 months    ki1135781-COHORTS          INDIA                          1           3206    4955
6 months    ki1135781-COHORTS          INDIA                          2           1474    4955
6 months    ki1135781-COHORTS          INDIA                          3            182    4955
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+           742   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           9611   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           4732   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3           1688   16773
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+           262    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2851    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2           1226    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3            488    4827
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+            11     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1            134     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2             40     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3             27     212
24 months   ki0047075b-MAL-ED          BRAZIL                         4+           104     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1              0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2             16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3             49     169
24 months   ki0047075b-MAL-ED          INDIA                          4+            25     227
24 months   ki0047075b-MAL-ED          INDIA                          1             82     227
24 months   ki0047075b-MAL-ED          INDIA                          2             74     227
24 months   ki0047075b-MAL-ED          INDIA                          3             46     227
24 months   ki0047075b-MAL-ED          NEPAL                          4+           127     228
24 months   ki0047075b-MAL-ED          NEPAL                          1             48     228
24 months   ki0047075b-MAL-ED          NEPAL                          2             31     228
24 months   ki0047075b-MAL-ED          NEPAL                          3             22     228
24 months   ki0047075b-MAL-ED          PERU                           4+           110     201
24 months   ki0047075b-MAL-ED          PERU                           1             16     201
24 months   ki0047075b-MAL-ED          PERU                           2             32     201
24 months   ki0047075b-MAL-ED          PERU                           3             43     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+           183     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             13     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             19     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            98     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              9     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             50     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             57     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            201     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2            106     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             51     372
24 months   ki1000108-IRC              INDIA                          4+            17     407
24 months   ki1000108-IRC              INDIA                          1            184     407
24 months   ki1000108-IRC              INDIA                          2            170     407
24 months   ki1000108-IRC              INDIA                          3             36     407
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+            22     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            407     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2             92     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3             57     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            82     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            217     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            137     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             78     514
24 months   ki1113344-GMS-Nepal        NEPAL                          4+           237     498
24 months   ki1113344-GMS-Nepal        NEPAL                          1             36     498
24 months   ki1113344-GMS-Nepal        NEPAL                          2            108     498
24 months   ki1113344-GMS-Nepal        NEPAL                          3            117     498
24 months   ki1114097-CONTENT          PERU                           4+            63     164
24 months   ki1114097-CONTENT          PERU                           1             30     164
24 months   ki1114097-CONTENT          PERU                           2             39     164
24 months   ki1114097-CONTENT          PERU                           3             32     164
24 months   ki1135781-COHORTS          INDIA                          4+            75    3719
24 months   ki1135781-COHORTS          INDIA                          1           2287    3719
24 months   ki1135781-COHORTS          INDIA                          2           1207    3719
24 months   ki1135781-COHORTS          INDIA                          3            150    3719
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+           365    8591
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           5036    8591
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           2394    8591
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3            796    8591
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+           251    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2781    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2           1208    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3            490    4730


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
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/30527cf9-58f9-4a07-87dd-eec21b65ee7a/e2168eae-2795-4a3d-8876-d350aa091526/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/30527cf9-58f9-4a07-87dd-eec21b65ee7a/e2168eae-2795-4a3d-8876-d350aa091526/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/30527cf9-58f9-4a07-87dd-eec21b65ee7a/e2168eae-2795-4a3d-8876-d350aa091526/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.7941667   -1.2690613   -0.3192720
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.0142222   -1.2148445   -0.8135999
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.9595745   -1.1855986   -0.7335503
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -1.0100000   -1.3617625   -0.6582375
Birth       ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.9072727   -1.2753270   -0.5392184
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -1.0269118   -1.2580010   -0.7958225
Birth       ki0047075b-MAL-ED          INDIA                          2                    NA                -1.0445455   -1.2820882   -0.8070027
Birth       ki0047075b-MAL-ED          INDIA                          3                    NA                -1.2300000   -1.6214492   -0.8385508
Birth       ki0047075b-MAL-ED          NEPAL                          4+                   NA                -1.1068085   -1.2976955   -0.9159215
Birth       ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.6226471   -0.8727380   -0.3725561
Birth       ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.6000000   -1.0000485   -0.1999515
Birth       ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.8523529   -1.2321676   -0.4725382
Birth       ki0047075b-MAL-ED          PERU                           4+                   NA                -0.1830709   -0.3556944   -0.0104473
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -0.0347059   -0.4906516    0.4212399
Birth       ki0047075b-MAL-ED          PERU                           2                    NA                 0.0225490   -0.2171702    0.2622682
Birth       ki0047075b-MAL-ED          PERU                           3                    NA                 0.2278947    0.0251194    0.4306701
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0115094   -0.1884696    0.1654508
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1192857   -0.6577681    0.4191966
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.4355000   -0.0592882    0.9302882
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.2952174   -0.8523351    0.2619003
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.7324074    0.4023776    1.0624372
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.8100000    0.1361179    1.4838821
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                 1.0960870    0.7670309    1.4251430
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.7051613    0.3277822    1.0825404
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.4160000   -1.4928519    0.6608519
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.9682051   -1.5782417   -0.3581685
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.5526923   -1.1009266   -0.0044580
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0561111   -0.5921021    0.4798798
Birth       ki1000108-IRC              INDIA                          4+                   NA                -1.0150000   -2.1174369    0.0874369
Birth       ki1000108-IRC              INDIA                          1                    NA                -1.1407051   -1.4289892   -0.8524210
Birth       ki1000108-IRC              INDIA                          2                    NA                -0.8954286   -1.1615662   -0.6292910
Birth       ki1000108-IRC              INDIA                          3                    NA                -0.8161290   -1.4531708   -0.1790873
Birth       ki1135781-COHORTS          INDIA                          4+                   NA                -0.6670000   -0.8501230   -0.4838770
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -1.0255992   -1.0686324   -0.9825660
Birth       ki1135781-COHORTS          INDIA                          2                    NA                -0.9148117   -0.9798589   -0.8497646
Birth       ki1135781-COHORTS          INDIA                          3                    NA                -0.8124841   -0.9884710   -0.6364972
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.5881188   -0.6910856   -0.4851520
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.7273165   -0.7518108   -0.7028222
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.7358232   -0.7697300   -0.7019164
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.7128877   -0.7676027   -0.6581726
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.2284211   -0.6518725    0.1950304
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.3677934   -0.4704314   -0.2651554
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.3934118   -0.5415171   -0.2453064
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.3479412   -0.6661706   -0.0297117
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0906944   -0.8419301    0.6605412
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.2253000   -0.3839699   -0.0666301
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                 0.0986333   -0.1776059    0.3748726
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0913988   -0.4649346    0.2821370
6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.6610667   -0.9731883   -0.3489450
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.7179365   -0.9188735   -0.5169995
6 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -0.6977350   -0.9063186   -0.4891514
6 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -0.7203125   -1.0563828   -0.3842422
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.1034351   -0.0712050    0.2780753
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0341346   -0.3229520    0.2546828
6 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                 0.5219892    0.1257544    0.9182241
6 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0795455   -0.3408786    0.1817876
6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                 1.0634412    0.8874629    1.2394196
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                 0.4871053   -0.0142430    0.9884535
6 months    ki0047075b-MAL-ED          PERU                           2                    NA                 1.2006000    0.9171131    1.4840869
6 months    ki0047075b-MAL-ED          PERU                           3                    NA                 1.0828495    0.8659603    1.2997387
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.5502792    0.3692278    0.7313306
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.3213095   -0.0417967    0.6844157
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.9578571    0.4110023    1.5047120
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.2097826   -0.1915164    0.6110816
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.5827006    0.3980382    0.7673631
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5269231   -0.0468272    1.1006733
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.5310484    0.2794108    0.7826860
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.3907031    0.1086564    0.6727498
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2425000   -0.8562529    0.3712529
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.7750169   -0.9544023   -0.5956315
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.1935377   -0.5288394    0.1417640
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.1646405   -0.5472860    0.2180049
6 months    ki1000108-IRC              INDIA                          4+                   NA                -0.8577451   -1.5297639   -0.1857262
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.5376594   -0.7335123   -0.3418065
6 months    ki1000108-IRC              INDIA                          2                    NA                -0.5901176   -0.7927012   -0.3875340
6 months    ki1000108-IRC              INDIA                          3                    NA                -0.7300000   -1.2861960   -0.1738040
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.3861905   -0.8949938    0.1226129
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2563567   -0.3557008   -0.1570126
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                 0.0224176   -0.1783588    0.2231939
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.1619643   -0.4440959    0.1201673
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0267582   -0.2243863    0.2779027
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0272271   -0.1404300    0.0859757
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                 0.0351087   -0.1128241    0.1830415
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                 0.2140099    0.0083173    0.4197025
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.6024157   -0.7268146   -0.4780169
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.6303750   -0.9643569   -0.2963931
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.6481884   -0.8376105   -0.4587663
6 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                -0.5666667   -0.7397288   -0.3936045
6 months    ki1114097-CONTENT          PERU                           4+                   NA                 1.1584722    0.9625943    1.3543502
6 months    ki1114097-CONTENT          PERU                           1                    NA                 0.9577917    0.6805900    1.2349934
6 months    ki1114097-CONTENT          PERU                           2                    NA                 1.0208920    0.7911536    1.2506303
6 months    ki1114097-CONTENT          PERU                           3                    NA                 1.0790000    0.8348952    1.3231048
6 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.2590323   -0.4091248   -0.1089397
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.7800530   -0.8208431   -0.7392629
6 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.6017300   -0.6595921   -0.5438679
6 months    ki1135781-COHORTS          INDIA                          3                    NA                -0.5506593   -0.6978599   -0.4034587
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.4197844   -0.4984558   -0.3411130
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6231839   -0.6473974   -0.5989703
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.5968935   -0.6317503   -0.5620366
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.4866677   -0.5419162   -0.4314191
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.1852863   -0.3876058    0.0170333
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.4363259   -0.4835076   -0.3891441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.3829078   -0.4501645   -0.3156512
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.2486578   -0.3528765   -0.1444391
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.5177273   -1.3021306    0.2666760
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.9342537   -1.0776463   -0.7908612
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.5910000   -0.8973549   -0.2846451
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.7218519   -1.0002151   -0.4434886
24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.8594000   -1.2273722   -0.4914278
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.8794512   -1.0598923   -0.6990102
24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -1.0010811   -1.2142070   -0.7879552
24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -1.0541304   -1.3005888   -0.8076721
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.3609843   -0.5072592   -0.2147093
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.5537500   -0.8087455   -0.2987545
24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.1598387   -0.5087468    0.1890694
24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.3840909   -0.6892877   -0.0788941
24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                 0.2154091    0.0517891    0.3790290
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.2406250   -0.7365295    0.2552795
24 months   ki0047075b-MAL-ED          PERU                           2                    NA                 0.0389063   -0.1914355    0.2692480
24 months   ki0047075b-MAL-ED          PERU                           3                    NA                 0.0700000   -0.1918556    0.3318556
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.4354918    0.2916260    0.5793576
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.2157692   -0.0453243    0.4768628
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.5692105    0.2405959    0.8978252
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.3582609    0.0289574    0.6875644
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.1218878   -0.0329051    0.2766807
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2522222   -1.1599430    0.6554985
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0197000   -0.2489060    0.2095060
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.0356140   -0.2581087    0.3293368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2071429   -0.6602688    0.2459830
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.7292454   -0.8587754   -0.5997155
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.4841195   -0.6905432   -0.2776958
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.1267647   -0.3725816    0.1190522
24 months   ki1000108-IRC              INDIA                          4+                   NA                -0.5967647   -1.1168607   -0.0766687
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.7295924   -0.8590732   -0.6001116
24 months   ki1000108-IRC              INDIA                          2                    NA                -0.7348725   -0.8787414   -0.5910037
24 months   ki1000108-IRC              INDIA                          3                    NA                -0.9040278   -1.1991846   -0.6088710
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.5490909   -0.9904457   -0.1077361
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9589926   -1.0538992   -0.8640860
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.7791304   -0.9841120   -0.5741488
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.6870175   -1.0032024   -0.3708327
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.3367073   -0.6124196   -0.0609950
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.7861751   -0.9148885   -0.6574617
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.7059124   -0.8865419   -0.5252829
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.2410256   -0.4872135    0.0051622
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -1.1196624   -1.2490734   -0.9902515
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.0750000   -1.4000005   -0.7499995
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.1890278   -1.3723864   -1.0056691
24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                -1.1201282   -1.2979891   -0.9422673
24 months   ki1114097-CONTENT          PERU                           4+                   NA                 0.5670635    0.3420065    0.7921205
24 months   ki1114097-CONTENT          PERU                           1                    NA                 0.4511667    0.1880681    0.7142652
24 months   ki1114097-CONTENT          PERU                           2                    NA                 0.5907692    0.3595217    0.8220167
24 months   ki1114097-CONTENT          PERU                           3                    NA                 0.6456250    0.2569565    1.0342935
24 months   ki1135781-COHORTS          INDIA                          4+                   NA                -0.1834667   -0.3725682    0.0056348
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.7974727   -0.8396396   -0.7553058
24 months   ki1135781-COHORTS          INDIA                          2                    NA                -0.4789809   -0.5351321   -0.4228298
24 months   ki1135781-COHORTS          INDIA                          3                    NA                -0.2906000   -0.4475299   -0.1336701
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -1.1223562   -1.2308424   -1.0138700
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3103872   -1.3397522   -1.2810222
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.3370259   -1.3804919   -1.2935599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.1698116   -1.2411679   -1.0984552
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -1.1602390   -1.3395012   -0.9809769
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.2453470   -1.2854769   -1.2052171
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -1.2171606   -1.2724469   -1.1618743
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -1.1444286   -1.2504357   -1.0384215


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9902252   -1.1311070   -0.8493435
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0536702   -1.1965043   -0.9108361
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.9174699   -1.0573845   -0.7775553
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0384921   -0.1542085    0.0772244
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0073148   -0.1632037    0.1485740
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.8024561    0.5990025    1.0059098
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0053372   -1.1922119   -0.8184626
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9778087   -1.0126530   -0.9429644
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7238563   -0.7437124   -0.7040002
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3683163   -0.4490504   -0.2875821
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1354618   -0.2647919   -0.0061317
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7056667   -0.8312524   -0.5800810
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0527407    0.9299728    1.1755087
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5403280    0.3866002    0.6940558
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5170513    0.3872178    0.6468847
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5900821   -0.7252457   -0.4549185
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6047987   -0.6909649   -0.5186325
6 months    ki1114097-CONTENT          PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.7088012   -0.7411274   -0.6764750
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5930302   -0.6125738   -0.5734865
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3901595   -0.4274150   -0.3529041
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0500935   -0.0748234    0.1750103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7416790   -0.8323562   -0.6510017
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1315863   -1.2192240   -1.0439487
24 months   ki1114097-CONTENT          PERU                           NA                   NA                 0.5668293    0.4302437    0.7034148
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6612799   -0.6944511   -0.6281088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2967966   -1.3200807   -1.2735126
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2231776   -1.2550332   -1.1913220


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.2200556   -0.7355885    0.2954774
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.1654078   -0.6913468    0.3605312
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.2158333   -0.8068171    0.3751504
Birth       ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    4+                -0.1196390   -0.5542264    0.3149484
Birth       ki0047075b-MAL-ED          INDIA                          2                    4+                -0.1372727   -0.5753259    0.3007804
Birth       ki0047075b-MAL-ED          INDIA                          3                    4+                -0.3227273   -0.8600321    0.2145775
Birth       ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          1                    4+                 0.4841615    0.1695453    0.7987776
Birth       ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.5068085    0.0635516    0.9500654
Birth       ki0047075b-MAL-ED          NEPAL                          3                    4+                 0.2544556   -0.1706292    0.6795403
Birth       ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    4+                 0.1483650   -0.3391649    0.6358949
Birth       ki0047075b-MAL-ED          PERU                           2                    4+                 0.2056199   -0.0897852    0.5010250
Birth       ki0047075b-MAL-ED          PERU                           3                    4+                 0.4109656    0.1446636    0.6772676
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.1077763   -0.6745903    0.4590377
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.4470094   -0.0784715    0.9724904
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.2837080   -0.8682548    0.3008389
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0775926   -0.6727651    0.8279503
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.3636795   -0.1023650    0.8297241
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0272461   -0.5285790    0.4740867
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.5522051   -1.7898459    0.6854357
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.1366923   -1.3450676    1.0716830
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                 0.3598889   -0.8429812    1.5627589
Birth       ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    4+                -0.1257051   -1.2652115    1.0138012
Birth       ki1000108-IRC              INDIA                          2                    4+                 0.1195714   -1.0145345    1.2536773
Birth       ki1000108-IRC              INDIA                          3                    4+                 0.1988710   -1.0743883    1.4721302
Birth       ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    4+                -0.3585992   -0.5467106   -0.1704878
Birth       ki1135781-COHORTS          INDIA                          2                    4+                -0.2478117   -0.4421444   -0.0534791
Birth       ki1135781-COHORTS          INDIA                          3                    4+                -0.1454841   -0.3994633    0.1084951
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.1391977   -0.2450490   -0.0333464
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.1477044   -0.2558521   -0.0395567
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.1247688   -0.2372624   -0.0122753
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.1393724   -0.5756111    0.2968664
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.1649907   -0.6146672    0.2846858
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.1195201   -0.6492344    0.4101942
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.1346056   -0.9024149    0.6332038
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    4+                 0.1893278   -0.6110866    0.9897422
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.0007044   -0.8396823    0.8382736
6 months    ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    4+                -0.0568698   -0.4280781    0.3143384
6 months    ki0047075b-MAL-ED          INDIA                          2                    4+                -0.0366684   -0.4120709    0.3387341
6 months    ki0047075b-MAL-ED          INDIA                          3                    4+                -0.0592458   -0.5178995    0.3994078
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.1375697   -0.4750822    0.1999427
6 months    ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.4185541   -0.0144600    0.8515682
6 months    ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.1829806   -0.4972960    0.1313348
6 months    ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    4+                -0.5763360   -1.1076724   -0.0449995
6 months    ki0047075b-MAL-ED          PERU                           2                    4+                 0.1371588   -0.1965076    0.4708251
6 months    ki0047075b-MAL-ED          PERU                           3                    4+                 0.0194082   -0.2598933    0.2987097
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.2289697   -0.6347107    0.1767712
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.4075779   -0.1684688    0.9836246
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.3404966   -0.7807471    0.0997539
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0557775   -0.6585126    0.5469576
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0516522   -0.3637767    0.2604723
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.1919975   -0.5291185    0.1451235
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.5325169   -1.1719477    0.1069138
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                 0.0489623   -0.6504087    0.7483333
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                 0.0778595   -0.6454040    0.8011230
6 months    ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    4+                 0.3200857   -0.3798912    1.0200626
6 months    ki1000108-IRC              INDIA                          2                    4+                 0.2676275   -0.4342625    0.9695174
6 months    ki1000108-IRC              INDIA                          3                    4+                 0.1277451   -0.7445870    1.0000772
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    4+                 0.1298338   -0.3885774    0.6482449
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    4+                 0.4086081   -0.1383764    0.9555925
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    4+                 0.2242262   -0.3575634    0.8060158
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0539854   -0.3294639    0.2214932
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                 0.0083505   -0.2831245    0.2998254
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.1872517   -0.1373758    0.5118792
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.0279593   -0.3843565    0.3284380
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.0457727   -0.2723908    0.1808455
6 months    ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0357491   -0.1773837    0.2488819
6 months    ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           1                    4+                -0.2006806   -0.5401050    0.1387439
6 months    ki1114097-CONTENT          PERU                           2                    4+                -0.1375802   -0.4394873    0.1643268
6 months    ki1114097-CONTENT          PERU                           3                    4+                -0.0794722   -0.3924504    0.2335059
6 months    ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    4+                -0.5210208   -0.6765573   -0.3654843
6 months    ki1135781-COHORTS          INDIA                          2                    4+                -0.3426977   -0.5035573   -0.1818382
6 months    ki1135781-COHORTS          INDIA                          3                    4+                -0.2916271   -0.5018550   -0.0813992
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.2033995   -0.2835358   -0.1232632
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.1771091   -0.2622129   -0.0920054
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.0668833   -0.1625147    0.0287482
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.2510396   -0.4587994   -0.0432798
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.1976216   -0.4100878    0.0148446
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.0633715   -0.2834586    0.1567155
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.4165265   -1.2139285    0.3808756
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.0732727   -0.9153784    0.7688329
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.2041246   -1.0364555    0.6282063
24 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    4+                -0.0200512   -0.4298835    0.3897811
24 months   ki0047075b-MAL-ED          INDIA                          2                    4+                -0.1416811   -0.5669177    0.2835555
24 months   ki0047075b-MAL-ED          INDIA                          3                    4+                -0.1947304   -0.6376133    0.2481524
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.1927657   -0.4867370    0.1012055
24 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.2011455   -0.1771839    0.5794750
24 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.0231067   -0.3615464    0.3153331
24 months   ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    4+                -0.4560341   -0.9782341    0.0661659
24 months   ki0047075b-MAL-ED          PERU                           2                    4+                -0.1765028   -0.4590428    0.1060371
24 months   ki0047075b-MAL-ED          PERU                           3                    4+                -0.1454091   -0.4541806    0.1633624
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.2197226   -0.5178286    0.0783834
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.1337187   -0.2250081    0.4924456
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.0772309   -0.4365889    0.2821270
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.3741100   -1.2949345    0.5467145
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.1415878   -0.4181673    0.1349918
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0862737   -0.4182886    0.2457412
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.5221026   -0.9933786   -0.0508266
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.2769766   -0.7749062    0.2209529
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                 0.0803782   -0.4351304    0.5958867
24 months   ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    4+                -0.1328277   -0.6687988    0.4031435
24 months   ki1000108-IRC              INDIA                          2                    4+                -0.1381078   -0.6777355    0.4015199
24 months   ki1000108-IRC              INDIA                          3                    4+                -0.3072631   -0.9052742    0.2907481
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.4099017   -0.8613453    0.0415419
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.2300395   -0.7166724    0.2565933
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.1379266   -0.6808510    0.4049978
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.4494678   -0.7537447   -0.1451909
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.3692051   -0.6988174   -0.0395928
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.0956817   -0.2739475    0.4653109
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                 0.0446624   -0.3051554    0.3944803
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.0693653   -0.2937926    0.1550619
24 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                -0.0004658   -0.2204241    0.2194926
24 months   ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           1                    4+                -0.1158968   -0.4621215    0.2303278
24 months   ki1114097-CONTENT          PERU                           2                    4+                 0.0237057   -0.2989800    0.3463915
24 months   ki1114097-CONTENT          PERU                           3                    4+                 0.0785615   -0.3705642    0.5276872
24 months   ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    4+                -0.6140060   -0.8077518   -0.4202602
24 months   ki1135781-COHORTS          INDIA                          2                    4+                -0.2955143   -0.4927763   -0.0982522
24 months   ki1135781-COHORTS          INDIA                          3                    4+                -0.1071333   -0.3528697    0.1386031
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.1880310   -0.3001275   -0.0759346
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.2146697   -0.3316663   -0.0976731
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.0474554   -0.1780158    0.0831051
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.0851080   -0.2687319    0.0985160
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.0569216   -0.2421412    0.1282981
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                 0.0158105   -0.1838149    0.2154358


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.1960586   -0.6661559    0.2740388
Birth       ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.1463975   -0.4987627    0.2059677
Birth       ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.1893386    0.0679015    0.3107758
Birth       ki0047075b-MAL-ED          PERU                           4+                   NA                 0.1445788    0.0298888    0.2592688
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0041946   -0.0933438    0.1017330
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0700487   -0.1470365    0.2871339
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2115000   -1.2831039    0.8601039
Birth       ki1000108-IRC              INDIA                          4+                   NA                 0.0096628   -1.0629479    1.0822734
Birth       ki1135781-COHORTS          INDIA                          4+                   NA                -0.3108087   -0.4926643   -0.1289531
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.1357375   -0.2368188   -0.0346562
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.1398952   -0.5602906    0.2805002
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0447674   -0.7690917    0.6795570
6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0446000   -0.3486790    0.2594790
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0076101   -0.1102200    0.1254402
6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0107005   -0.1296727    0.1082717
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0099513   -0.0882037    0.0683012
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0656493   -0.2110333    0.0797347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2601766   -0.8691386    0.3487853
6 months    ki1000108-IRC              INDIA                          4+                   NA                 0.2676630   -0.3896490    0.9249750
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.1778199   -0.3194999    0.6751397
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0030040   -0.2277525    0.2337604
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0023830   -0.0930567    0.0882908
6 months    ki1114097-CONTENT          PERU                           4+                   NA                -0.0900404   -0.2455897    0.0655089
6 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.4497690   -0.5995900   -0.2999479
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.1732458   -0.2492182   -0.0972734
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.2048733   -0.3989883   -0.0107582
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.3030982   -1.0556579    0.4494615
24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0928907   -0.4376935    0.2519120
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0154631   -0.1175444    0.0866182
24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0955086   -0.2043821    0.0133649
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0087901   -0.0643205    0.0467403
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0717943   -0.2045332    0.0609446
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.3500077   -0.7973838    0.0973684
24 months   ki1000108-IRC              INDIA                          4+                   NA                -0.1449142   -0.6510023    0.3611738
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.3388503   -0.7711028    0.0934023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.2736429   -0.5200659   -0.0272199
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0119239   -0.1040513    0.0802035
24 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.0002342   -0.1745665    0.1740981
24 months   ki1135781-COHORTS          INDIA                          4+                   NA                -0.4778132   -0.6650877   -0.2905388
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.1744405   -0.2806799   -0.0682010
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0629385   -0.2337195    0.1078424

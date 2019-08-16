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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nchldlt5
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
* delta_W_nchldlt5
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




# Results Detail

## Results Plots
![](/tmp/1e3de10a-f8cb-49f8-bd1a-0d628d7572c4/f6fe1039-0ea5-497d-af8f-6899d30b4848/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1e3de10a-f8cb-49f8-bd1a-0d628d7572c4/f6fe1039-0ea5-497d-af8f-6899d30b4848/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1e3de10a-f8cb-49f8-bd1a-0d628d7572c4/f6fe1039-0ea5-497d-af8f-6899d30b4848/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.7566749   -1.2041594   -0.3091904
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.0000749   -1.2015033   -0.7986464
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.9345137   -1.1571668   -0.7118607
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -1.1003205   -1.5099543   -0.6906868
Birth       ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.8629041   -1.2565711   -0.4692371
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -1.0061080   -1.2338630   -0.7783530
Birth       ki0047075b-MAL-ED          INDIA                          2                    NA                -1.0118565   -1.2531192   -0.7705937
Birth       ki0047075b-MAL-ED          INDIA                          3                    NA                -1.1166577   -1.5244401   -0.7088754
Birth       ki0047075b-MAL-ED          NEPAL                          4+                   NA                -1.0901183   -1.2834440   -0.8967926
Birth       ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.6576814   -0.9259457   -0.3894171
Birth       ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.6554923   -1.1041952   -0.2067895
Birth       ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.7867429   -1.1828822   -0.3906035
Birth       ki0047075b-MAL-ED          PERU                           4+                   NA                -0.1881922   -0.3630489   -0.0133355
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -0.0452831   -0.5459696    0.4554034
Birth       ki0047075b-MAL-ED          PERU                           2                    NA                 0.0117298   -0.2298680    0.2533275
Birth       ki0047075b-MAL-ED          PERU                           3                    NA                 0.1964697   -0.0069335    0.3998728
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0062871   -0.1839183    0.1713442
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0299238   -0.5644696    0.6243172
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.4647510   -0.0882329    1.0177350
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.2897913   -0.8867866    0.3072040
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.7324074    0.4023776    1.0624372
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.8100000    0.1361179    1.4838821
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                 1.0960870    0.7670309    1.4251430
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.7051613    0.3277822    1.0825404
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.4160000   -1.4928519    0.6608519
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.9682051   -1.5782417   -0.3581685
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.5526923   -1.1009266   -0.0044580
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0561111   -0.5921021    0.4798798
Birth       ki1000108-IRC              INDIA                          4+                   NA                -0.7470629   -1.9713358    0.4772100
Birth       ki1000108-IRC              INDIA                          1                    NA                -1.1301576   -1.4198817   -0.8404335
Birth       ki1000108-IRC              INDIA                          2                    NA                -0.8963287   -1.1628952   -0.6297622
Birth       ki1000108-IRC              INDIA                          3                    NA                -0.7617223   -1.4150328   -0.1084119
Birth       ki1135781-COHORTS          INDIA                          4+                   NA                -0.6043043   -0.7538224   -0.4547862
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -1.0254590   -1.0697073   -0.9812107
Birth       ki1135781-COHORTS          INDIA                          2                    NA                -0.9121707   -0.9819875   -0.8423539
Birth       ki1135781-COHORTS          INDIA                          3                    NA                -0.7942578   -0.9611134   -0.6274021
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.5853705   -0.6659768   -0.5047642
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.7486168   -0.7748277   -0.7224060
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.6994008   -0.7380602   -0.6607414
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.6429956   -0.7076596   -0.5783317
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.2472360   -0.6481469    0.1536749
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.3717995   -0.4749618   -0.2686372
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.3787872   -0.5269762   -0.2305981
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.3156601   -0.6803311    0.0490109
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.1585263   -0.9253045    0.6082518
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.2105349   -0.3687639   -0.0523058
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                 0.0659897   -0.2341861    0.3661656
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0014514   -0.3368714    0.3339686
6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.7097737   -1.0566104   -0.3629370
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.7017418   -0.9055910   -0.4978927
6 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -0.6874359   -0.9028763   -0.4719956
6 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -0.7036597   -1.0559772   -0.3513423
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.1070167   -0.0703137    0.2843470
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0450335   -0.3410604    0.2509934
6 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                 0.5132391    0.0759301    0.9505481
6 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0788756   -0.3550978    0.1973466
6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                 1.0718962    0.8953483    1.2484440
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                 0.4919424   -0.0440432    1.0279281
6 months    ki0047075b-MAL-ED          PERU                           2                    NA                 1.1760631    0.8845626    1.4675635
6 months    ki0047075b-MAL-ED          PERU                           3                    NA                 1.1166078    0.8943012    1.3389144
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.5426780    0.3624245    0.7229315
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.4357166    0.0420690    0.8293642
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.9563818    0.2902718    1.6224917
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.2459090   -0.1822269    0.6740448
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.5856629    0.4002330    0.7710928
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5384699   -0.0953037    1.1722435
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.5266007    0.2706045    0.7825969
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.3591378    0.0688811    0.6493945
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0539265   -0.7436162    0.6357632
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.7730497   -0.9525636   -0.5935358
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.1784407   -0.5169494    0.1600681
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0934155   -0.4865097    0.2996787
6 months    ki1000108-IRC              INDIA                          4+                   NA                -0.8033533   -1.5151073   -0.0915994
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.5387120   -0.7394674   -0.3379566
6 months    ki1000108-IRC              INDIA                          2                    NA                -0.5869731   -0.7915366   -0.3824096
6 months    ki1000108-IRC              INDIA                          3                    NA                -0.7005744   -1.2689714   -0.1321775
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.4811387   -1.0067921    0.0445146
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2573648   -0.3571930   -0.1575365
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                 0.0155688   -0.1895698    0.2207074
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.1677688   -0.4629788    0.1274412
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0331294   -0.2299096    0.2961685
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0351872   -0.1495774    0.0792029
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                 0.0416116   -0.1102787    0.1935019
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                 0.2465670    0.0282096    0.4649244
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.5987477   -0.7246047   -0.4728907
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.5810270   -0.9519462   -0.2101078
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.6265312   -0.8137337   -0.4393287
6 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                -0.5570916   -0.7383664   -0.3758167
6 months    ki1114097-CONTENT          PERU                           4+                   NA                 1.1614204    0.9647047    1.3581360
6 months    ki1114097-CONTENT          PERU                           1                    NA                 0.9784922    0.6783773    1.2786071
6 months    ki1114097-CONTENT          PERU                           2                    NA                 1.0122524    0.7726349    1.2518699
6 months    ki1114097-CONTENT          PERU                           3                    NA                 1.0339318    0.8051993    1.2626643
6 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.2948774   -0.4169534   -0.1728014
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.7631835   -0.8052078   -0.7211593
6 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.6155644   -0.6780743   -0.5530546
6 months    ki1135781-COHORTS          INDIA                          3                    NA                -0.5334799   -0.6829643   -0.3839955
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.4179659   -0.5017376   -0.3341941
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6260332   -0.6520635   -0.6000028
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.5931589   -0.6331875   -0.5531303
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.4819319   -0.5465116   -0.4173522
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.1808158   -0.3841982    0.0225665
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.4364622   -0.4838543   -0.3890700
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.3821331   -0.4497066   -0.3145595
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.2493649   -0.3547405   -0.1439893
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.5028679   -1.2944457    0.2887100
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.9230090   -1.0666053   -0.7794127
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.6098523   -0.9264790   -0.2932255
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.8136781   -1.1432222   -0.4841340
24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.7605056   -1.1637350   -0.3572762
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.8699152   -1.0514014   -0.6884289
24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -0.9645702   -1.1824517   -0.7466887
24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -1.0574413   -1.3078966   -0.8069859
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.3681146   -0.5173234   -0.2189057
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.5550162   -0.8439252   -0.2661072
24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.2434319   -0.6060511    0.1191873
24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.5211820   -0.8271360   -0.2152280
24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                 0.2253386    0.0598970    0.3907803
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.3498981   -0.9401857    0.2403895
24 months   ki0047075b-MAL-ED          PERU                           2                    NA                 0.0522272   -0.1912040    0.2956584
24 months   ki0047075b-MAL-ED          PERU                           3                    NA                 0.1038339   -0.1892880    0.3969558
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.4396057    0.2959719    0.5832395
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.2584556   -0.0685999    0.5855111
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.6244168    0.2756009    0.9732328
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.3379259   -0.0372795    0.7131312
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.1218878   -0.0329051    0.2766807
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2522222   -1.1599430    0.6554985
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0197000   -0.2489060    0.2095060
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.0356140   -0.2581087    0.3293368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2895469   -0.8242634    0.2451696
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.7302300   -0.8601918   -0.6002683
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.4856997   -0.6922919   -0.2791076
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.1519567   -0.4045961    0.1006827
24 months   ki1000108-IRC              INDIA                          4+                   NA                -0.5854926   -1.1478470   -0.0231383
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.7368501   -0.8713327   -0.6023676
24 months   ki1000108-IRC              INDIA                          2                    NA                -0.7193091   -0.8650360   -0.5735822
24 months   ki1000108-IRC              INDIA                          3                    NA                -0.9612908   -1.3019224   -0.6206592
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.4783896   -0.9654006    0.0086214
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9546955   -1.0498582   -0.8595329
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.7825220   -0.9882465   -0.5767974
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.6794341   -0.9969027   -0.3619654
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.3404502   -0.6215802   -0.0593203
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.7866967   -0.9161086   -0.6572848
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.6947606   -0.8752758   -0.5142454
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.2457773   -0.5094519    0.0178973
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -1.1168825   -1.2487128   -0.9850522
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.1749259   -1.5308908   -0.8189610
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.1650779   -1.3520317   -0.9781241
24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                -1.1398044   -1.3251832   -0.9544257
24 months   ki1114097-CONTENT          PERU                           4+                   NA                 0.5662312    0.3406115    0.7918509
24 months   ki1114097-CONTENT          PERU                           1                    NA                 0.4784367    0.2002459    0.7566275
24 months   ki1114097-CONTENT          PERU                           2                    NA                 0.6042751    0.3600326    0.8485176
24 months   ki1114097-CONTENT          PERU                           3                    NA                 0.6324990    0.2639111    1.0010868
24 months   ki1135781-COHORTS          INDIA                          4+                   NA                -0.1678674   -0.3329652   -0.0027697
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.7812363   -0.8246238   -0.7378488
24 months   ki1135781-COHORTS          INDIA                          2                    NA                -0.5083284   -0.5677930   -0.4488637
24 months   ki1135781-COHORTS          INDIA                          3                    NA                -0.2890986   -0.4420329   -0.1361643
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -1.1665848   -1.2677956   -1.0653740
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3044251   -1.3362995   -1.2725507
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.3265390   -1.3735907   -1.2794874
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.1879414   -1.2707044   -1.1051784
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -1.1568755   -1.3421869   -0.9715641
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.2447979   -1.2851278   -1.2044680
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -1.2175148   -1.2726569   -1.1623727
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -1.1467730   -1.2540566   -1.0394893


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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.2434000   -0.7346651    0.2478651
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.1778389   -0.6778757    0.3221980
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.3436457   -0.9492313    0.2619400
Birth       ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    4+                -0.1432039   -0.5987801    0.3123722
Birth       ki0047075b-MAL-ED          INDIA                          2                    4+                -0.1489524   -0.6101566    0.3122518
Birth       ki0047075b-MAL-ED          INDIA                          3                    4+                -0.2537537   -0.8211756    0.3136683
Birth       ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          1                    4+                 0.4324369    0.1036431    0.7612307
Birth       ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.4346260   -0.0589607    0.9282127
Birth       ki0047075b-MAL-ED          NEPAL                          3                    4+                 0.3033754   -0.1344922    0.7412431
Birth       ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    4+                 0.1429091   -0.3880149    0.6738331
Birth       ki0047075b-MAL-ED          PERU                           2                    4+                 0.1999220   -0.0990388    0.4988827
Birth       ki0047075b-MAL-ED          PERU                           3                    4+                 0.3846619    0.1163286    0.6529952
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                 0.0362109   -0.5846060    0.6570278
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.4710381   -0.1097498    1.0518259
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.2835042   -0.9071867    0.3401782
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0775926   -0.6727651    0.8279503
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.3636795   -0.1023650    0.8297241
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0272461   -0.5285790    0.4740867
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.5522051   -1.7898459    0.6854357
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.1366923   -1.3450676    1.0716830
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                 0.3598889   -0.8429812    1.5627589
Birth       ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    4+                -0.3830947   -1.6399561    0.8737666
Birth       ki1000108-IRC              INDIA                          2                    4+                -0.1492658   -1.4020956    1.1035639
Birth       ki1000108-IRC              INDIA                          3                    4+                -0.0146595   -1.4018290    1.3725100
Birth       ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    4+                -0.4211547   -0.5770574   -0.2652521
Birth       ki1135781-COHORTS          INDIA                          2                    4+                -0.3078664   -0.4728439   -0.1428890
Birth       ki1135781-COHORTS          INDIA                          3                    4+                -0.1899535   -0.4139268    0.0340199
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.1632464   -0.2478601   -0.0786326
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.1140303   -0.2021632   -0.0258974
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.0576252   -0.1589321    0.0436817
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.1245635   -0.5390240    0.2898970
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.1315512   -0.5590311    0.2959287
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.0684241   -0.6108166    0.4739684
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.0520085   -0.8343927    0.7303756
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    4+                 0.2245161   -0.5990820    1.0481141
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    4+                 0.1570750   -0.6808487    0.9949986
6 months    ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    4+                 0.0080319   -0.3967266    0.4127904
6 months    ki0047075b-MAL-ED          INDIA                          2                    4+                 0.0223378   -0.3889683    0.4336439
6 months    ki0047075b-MAL-ED          INDIA                          3                    4+                 0.0061140   -0.4887700    0.5009980
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.1520502   -0.4973146    0.1932142
6 months    ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.4062224   -0.0649818    0.8774266
6 months    ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.1858923   -0.5136264    0.1418419
6 months    ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    4+                -0.5799537   -1.1468529   -0.0130546
6 months    ki0047075b-MAL-ED          PERU                           2                    4+                 0.1041669   -0.2394794    0.4478132
6 months    ki0047075b-MAL-ED          PERU                           3                    4+                 0.0447116   -0.2393462    0.3287695
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.1069614   -0.5400916    0.3261687
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.4137038   -0.2766071    1.1040146
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.2967690   -0.7614002    0.1678621
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0471930   -0.7078873    0.6135014
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0590622   -0.3755324    0.2574080
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.2265251   -0.5713697    0.1183195
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.7191232   -1.4323034   -0.0059430
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.1245141   -0.8942509    0.6452226
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.0394890   -0.8329351    0.7539572
6 months    ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    4+                 0.2646413   -0.4763662    1.0056489
6 months    ki1000108-IRC              INDIA                          2                    4+                 0.2163802   -0.5262702    0.9590307
6 months    ki1000108-IRC              INDIA                          3                    4+                 0.1027789   -0.8098712    1.0154290
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    4+                 0.2237739   -0.3107160    0.7582638
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    4+                 0.4967075   -0.0665096    1.0599247
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    4+                 0.3133699   -0.2892890    0.9160288
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0683167   -0.3559192    0.2192859
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                 0.0084822   -0.2956396    0.3126040
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.2134376   -0.1288211    0.5556962
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    4+                 0.0177206   -0.3738850    0.4093263
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.0277835   -0.2539198    0.1983528
6 months    ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0416561   -0.1802747    0.2635869
6 months    ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           1                    4+                -0.1829282   -0.5427257    0.1768694
6 months    ki1114097-CONTENT          PERU                           2                    4+                -0.1491679   -0.4592164    0.1608806
6 months    ki1114097-CONTENT          PERU                           3                    4+                -0.1274885   -0.4287230    0.1737459
6 months    ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    4+                -0.4683061   -0.5973855   -0.3392267
6 months    ki1135781-COHORTS          INDIA                          2                    4+                -0.3206870   -0.4578653   -0.1835087
6 months    ki1135781-COHORTS          INDIA                          3                    4+                -0.2386025   -0.4316047   -0.0456003
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.2080673   -0.2949990   -0.1211356
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.1751931   -0.2673624   -0.0830238
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.0639661   -0.1698931    0.0419610
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.2556463   -0.4644786   -0.0468140
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.2013172   -0.4146444    0.0120100
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.0685491   -0.2900145    0.1529164
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.4201411   -1.2257813    0.3854990
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.1069844   -0.9596041    0.7456354
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.3108102   -1.1690924    0.5474720
24 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    4+                -0.1094096   -0.5512202    0.3324010
24 months   ki0047075b-MAL-ED          INDIA                          2                    4+                -0.2040646   -0.6641306    0.2560014
24 months   ki0047075b-MAL-ED          INDIA                          3                    4+                -0.2969357   -0.7725815    0.1787102
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.1869016   -0.5153394    0.1415361
24 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.1246827   -0.2724930    0.5218584
24 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.1530674   -0.4923100    0.1861752
24 months   ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    4+                -0.5752368   -1.1885585    0.0380850
24 months   ki0047075b-MAL-ED          PERU                           2                    4+                -0.1731114   -0.4655973    0.1193744
24 months   ki0047075b-MAL-ED          PERU                           3                    4+                -0.1215047   -0.4586071    0.2155977
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.1811501   -0.5384818    0.1761816
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.1848111   -0.1920855    0.5617078
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.1016798   -0.5047040    0.3013444
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.3741100   -1.2949345    0.5467145
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.1415878   -0.4181673    0.1349918
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0862737   -0.4182886    0.2457412
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.4406831   -0.9910104    0.1096442
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.1961528   -0.7694538    0.3771482
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                 0.1375902   -0.4536562    0.7288366
24 months   ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    4+                -0.1513575   -0.7296993    0.4269843
24 months   ki1000108-IRC              INDIA                          2                    4+                -0.1338164   -0.7151425    0.4475097
24 months   ki1000108-IRC              INDIA                          3                    4+                -0.3757982   -1.0335226    0.2819262
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.4763059   -0.9722238    0.0196119
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.3041324   -0.8327339    0.2244691
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.2010445   -0.7819349    0.3798460
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.4462465   -0.7557498   -0.1367432
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.3543104   -0.6885794   -0.0200413
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.0946729   -0.2910329    0.4803787
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.0580434   -0.4383963    0.3223095
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.0481954   -0.2779521    0.1815614
24 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                -0.0229219   -0.2517985    0.2059546
24 months   ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           1                    4+                -0.0877945   -0.4452529    0.2696639
24 months   ki1114097-CONTENT          PERU                           2                    4+                 0.0380439   -0.2943530    0.3704408
24 months   ki1114097-CONTENT          PERU                           3                    4+                 0.0662678   -0.3637679    0.4963035
24 months   ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    4+                -0.6133689   -0.7840255   -0.4427122
24 months   ki1135781-COHORTS          INDIA                          2                    4+                -0.3404609   -0.5158903   -0.1650316
24 months   ki1135781-COHORTS          INDIA                          3                    4+                -0.1212311   -0.3462480    0.1037857
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.1378403   -0.2428082   -0.0328724
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.1599542   -0.2716775   -0.0482309
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.0213566   -0.1547854    0.1120722
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.0879224   -0.2773808    0.1015360
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.0606394   -0.2517661    0.1304874
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                 0.0101025   -0.1953151    0.2155201


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.2335503   -0.6786148    0.2115142
Birth       ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.1907661   -0.5680236    0.1864913
Birth       ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.1726484    0.0492850    0.2960119
Birth       ki0047075b-MAL-ED          PERU                           4+                   NA                 0.1497001    0.0331125    0.2662878
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0010278   -0.1000275    0.0979719
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0700487   -0.1470365    0.2871339
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2115000   -1.2831039    0.8601039
Birth       ki1000108-IRC              INDIA                          4+                   NA                -0.2582744   -1.4521203    0.9355715
Birth       ki1135781-COHORTS          INDIA                          4+                   NA                -0.3735044   -0.5227712   -0.2242377
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.1384858   -0.2175985   -0.0593732
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.1210802   -0.5199089    0.2777484
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                 0.0230645   -0.7171122    0.7632413
6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0041070   -0.3328681    0.3410822
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0040285   -0.1157638    0.1238209
6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0191554   -0.1407985    0.1024876
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0023500   -0.0812010    0.0765010
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0686116   -0.2148466    0.0776234
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.4487501   -1.1321737    0.2346734
6 months    ki1000108-IRC              INDIA                          4+                   NA                 0.2132712   -0.4838535    0.9103959
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.2727682   -0.2412626    0.7867990
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0033672   -0.2459457    0.2392113
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0060510   -0.0986664    0.0865643
6 months    ki1114097-CONTENT          PERU                           4+                   NA                -0.0929886   -0.2494346    0.0634574
6 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.4139238   -0.5367398   -0.2911078
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.1750643   -0.2576970   -0.0924317
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.2093437   -0.4043935   -0.0142938
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.3179576   -1.0782638    0.4423486
24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.1917851   -0.5728566    0.1892863
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0083328   -0.1152211    0.0985556
24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -0.1054381   -0.2164500    0.0055737
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0129040   -0.0693131    0.0435051
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0717943   -0.2045332    0.0609446
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2676036   -0.7950716    0.2598643
24 months   ki1000108-IRC              INDIA                          4+                   NA                -0.1561863   -0.7043750    0.3920024
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.4095516   -0.8868140    0.0677109
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.2699000   -0.5220300   -0.0177699
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0147038   -0.1094423    0.0800346
24 months   ki1114097-CONTENT          PERU                           4+                   NA                 0.0005981   -0.1730656    0.1742617
24 months   ki1135781-COHORTS          INDIA                          4+                   NA                -0.4934125   -0.6572642   -0.3295608
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.1302118   -0.2307922   -0.0296314
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0663021   -0.2430456    0.1104414

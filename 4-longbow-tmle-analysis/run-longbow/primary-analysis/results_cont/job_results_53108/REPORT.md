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
* W_mwtkg
* W_mbmi
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
* delta_W_mwtkg
* delta_W_mbmi
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+            12     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            121     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     2             43     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     3             25     201
Birth       ki0047075b-MAL-ED          BRAZIL                         4+            29      57
Birth       ki0047075b-MAL-ED          BRAZIL                         1              0      57
Birth       ki0047075b-MAL-ED          BRAZIL                         2             10      57
Birth       ki0047075b-MAL-ED          BRAZIL                         3             18      57
Birth       ki0047075b-MAL-ED          INDIA                          4+             2      39
Birth       ki0047075b-MAL-ED          INDIA                          1             17      39
Birth       ki0047075b-MAL-ED          INDIA                          2             16      39
Birth       ki0047075b-MAL-ED          INDIA                          3              4      39
Birth       ki0047075b-MAL-ED          NEPAL                          4+            15      25
Birth       ki0047075b-MAL-ED          NEPAL                          1              6      25
Birth       ki0047075b-MAL-ED          NEPAL                          2              2      25
Birth       ki0047075b-MAL-ED          NEPAL                          3              2      25
Birth       ki0047075b-MAL-ED          PERU                           4+           103     210
Birth       ki0047075b-MAL-ED          PERU                           1             13     210
Birth       ki0047075b-MAL-ED          PERU                           2             45     210
Birth       ki0047075b-MAL-ED          PERU                           3             49     210
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+            66      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              5      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2             12      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3             12      95
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            45     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              9     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             28     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             30     112
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+             5      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             35      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2             27      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3             19      86
Birth       ki1000108-IRC              INDIA                          4+            14     341
Birth       ki1000108-IRC              INDIA                          1            156     341
Birth       ki1000108-IRC              INDIA                          2            140     341
Birth       ki1000108-IRC              INDIA                          3             31     341
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+            18     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1            388     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     2             79     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     3             47     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+            90     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1            338     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2            181     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3             98     707
Birth       ki1113344-GMS-Nepal        NEPAL                          4+           297     641
Birth       ki1113344-GMS-Nepal        NEPAL                          1             42     641
Birth       ki1113344-GMS-Nepal        NEPAL                          2            135     641
Birth       ki1113344-GMS-Nepal        NEPAL                          3            167     641
Birth       ki1114097-CONTENT          PERU                           4+             1       2
Birth       ki1114097-CONTENT          PERU                           1              0       2
Birth       ki1114097-CONTENT          PERU                           2              1       2
Birth       ki1114097-CONTENT          PERU                           3              0       2
Birth       ki1135781-COHORTS          INDIA                          4+            90    4454
Birth       ki1135781-COHORTS          INDIA                          1           2879    4454
Birth       ki1135781-COHORTS          INDIA                          2           1328    4454
Birth       ki1135781-COHORTS          INDIA                          3            157    4454
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+          1011   22055
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1          12973   22055
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           5884   22055
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3           2187   22055
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+           111    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1           1430    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2            610    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3            243    2394
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+            21     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            430     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     2             94     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     3             58     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+            91     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            339     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2            184     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3            101     715
6 months    ki1113344-GMS-Nepal        NEPAL                          4+           268     564
6 months    ki1113344-GMS-Nepal        NEPAL                          1             40     564
6 months    ki1113344-GMS-Nepal        NEPAL                          2            115     564
6 months    ki1113344-GMS-Nepal        NEPAL                          3            141     564
6 months    ki1114097-CONTENT          PERU                           4+            78     215
6 months    ki1114097-CONTENT          PERU                           1             44     215
6 months    ki1114097-CONTENT          PERU                           2             54     215
6 months    ki1114097-CONTENT          PERU                           3             39     215
6 months    ki1135781-COHORTS          INDIA                          4+            93    4955
6 months    ki1135781-COHORTS          INDIA                          1           3206    4955
6 months    ki1135781-COHORTS          INDIA                          2           1474    4955
6 months    ki1135781-COHORTS          INDIA                          3            182    4955
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+           737   16715
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           9584   16715
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           4709   16715
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3           1685   16715
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+            22     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            408     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     2             92     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     3             57     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            82     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            217     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            137     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             78     514
24 months   ki1113344-GMS-Nepal        NEPAL                          4+           231     487
24 months   ki1113344-GMS-Nepal        NEPAL                          1             35     487
24 months   ki1113344-GMS-Nepal        NEPAL                          2            106     487
24 months   ki1113344-GMS-Nepal        NEPAL                          3            115     487
24 months   ki1114097-CONTENT          PERU                           4+            63     164
24 months   ki1114097-CONTENT          PERU                           1             30     164
24 months   ki1114097-CONTENT          PERU                           2             39     164
24 months   ki1114097-CONTENT          PERU                           3             32     164
24 months   ki1135781-COHORTS          INDIA                          4+            75    3719
24 months   ki1135781-COHORTS          INDIA                          1           2287    3719
24 months   ki1135781-COHORTS          INDIA                          2           1207    3719
24 months   ki1135781-COHORTS          INDIA                          3            150    3719
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+           362    8526
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           5000    8526
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           2376    8526
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3            788    8526
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
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




# Results Detail

## Results Plots
![](/tmp/8c500587-b985-45d6-979e-35a037d5ab52/23c77973-cf3d-4842-8837-cb999a878ada/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8c500587-b985-45d6-979e-35a037d5ab52/23c77973-cf3d-4842-8837-cb999a878ada/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8c500587-b985-45d6-979e-35a037d5ab52/23c77973-cf3d-4842-8837-cb999a878ada/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.8632621   -1.4568345   -0.2696897
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.9784124   -1.1944983   -0.7623265
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.9706413   -1.1974318   -0.7438507
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -1.0306354   -1.4349659   -0.6263049
Birth       ki0047075b-MAL-ED          PERU                           4+                   NA                -0.2015662   -0.3925929   -0.0105395
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                 0.0527919   -0.5404018    0.6459857
Birth       ki0047075b-MAL-ED          PERU                           2                    NA                -0.0057316   -0.2636688    0.2522056
Birth       ki0047075b-MAL-ED          PERU                           3                    NA                 0.2165616   -0.0086678    0.4417910
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.2287879   -0.5065288    0.0489530
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.6960000   -1.4913352    0.0993352
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.5066667   -0.1807332    1.1940665
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.3275000   -1.1444022    0.4894022
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.8631111    0.5363093    1.1899130
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.9000000    0.3934379    1.4065621
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.4500000    0.0450331    0.8549669
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.8666667    0.5289823    1.2043510
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.4160000   -1.4929959    0.6609959
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.5244286   -1.0232807   -0.0255765
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.6155556   -1.1573805   -0.0737306
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.1536842   -0.6942308    0.3868624
Birth       ki1000108-IRC              INDIA                          4+                   NA                -0.8813119   -2.1028079    0.3401840
Birth       ki1000108-IRC              INDIA                          1                    NA                -1.1368899   -1.4307935   -0.8429863
Birth       ki1000108-IRC              INDIA                          2                    NA                -0.9056267   -1.1721463   -0.6391071
Birth       ki1000108-IRC              INDIA                          3                    NA                -0.7437936   -1.4349045   -0.0526828
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -1.3368022   -1.8467193   -0.8268851
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.2956389   -1.3847257   -1.2065521
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.2806761   -1.4894636   -1.0718886
Birth       ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -1.3352746   -1.6228808   -1.0476684
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -1.2554562   -1.4767054   -1.0342071
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.2378113   -1.3674510   -1.1081715
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -1.1849708   -1.3506457   -1.0192959
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -1.3267680   -1.5807592   -1.0727768
Birth       ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -1.1411170   -1.2700472   -1.0121869
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.0065953   -1.3305346   -0.6826561
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.0200505   -1.2098064   -0.8302945
Birth       ki1113344-GMS-Nepal        NEPAL                          3                    NA                -1.1774611   -1.3604854   -0.9944369
Birth       ki1135781-COHORTS          INDIA                          4+                   NA                -0.6118431   -0.7559050   -0.4677812
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -1.0237118   -1.0675710   -0.9798527
Birth       ki1135781-COHORTS          INDIA                          2                    NA                -0.9160707   -0.9868466   -0.8452949
Birth       ki1135781-COHORTS          INDIA                          3                    NA                -0.7776048   -0.9548639   -0.6003457
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.6407092   -0.7127348   -0.5686836
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.7668478   -0.7907058   -0.7429898
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.7401263   -0.7745966   -0.7056560
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.7207464   -0.7747209   -0.6667720
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.8157769   -1.0636314   -0.5679224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.6793528   -0.7421972   -0.6165083
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.6783991   -0.7738399   -0.5829583
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.7101842   -0.9129931   -0.5073752
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.2144656   -1.0556406    0.6267095
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.2021808   -0.3601666   -0.0441950
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                 0.0888244   -0.2028830    0.3805317
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                 0.0035325   -0.3394825    0.3465475
6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.6339388   -0.9539484   -0.3139293
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.7337435   -0.9379594   -0.5295277
6 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -0.6934666   -0.9044364   -0.4824967
6 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -0.7450475   -1.0989451   -0.3911498
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.1070981   -0.0692028    0.2833991
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0194087   -0.3169566    0.2781393
6 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                 0.4526533    0.0508620    0.8544445
6 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0212646   -0.3146209    0.2720917
6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                 1.0729025    0.8965001    1.2493048
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                 0.6018615    0.1243809    1.0793421
6 months    ki0047075b-MAL-ED          PERU                           2                    NA                 1.2184451    0.9307888    1.5061013
6 months    ki0047075b-MAL-ED          PERU                           3                    NA                 1.1187739    0.9015300    1.3360178
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.5533380    0.3718638    0.7348123
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.4571324    0.0590295    0.8552352
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.9847242    0.4163853    1.5530631
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.2477158   -0.1633828    0.6588144
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.5980368    0.4118140    0.7842596
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.6959489    0.1290127    1.2628852
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.5778188    0.3230594    0.8325781
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.4838408    0.1919973    0.7756844
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.1742861   -0.7941655    0.4455933
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.7671986   -0.9474818   -0.5869155
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.1553087   -0.4950032    0.1843858
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.1357937   -0.5200358    0.2484484
6 months    ki1000108-IRC              INDIA                          4+                   NA                -0.8254171   -1.5677306   -0.0831036
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.5437578   -0.7447424   -0.3427732
6 months    ki1000108-IRC              INDIA                          2                    NA                -0.5821820   -0.7867284   -0.3776357
6 months    ki1000108-IRC              INDIA                          3                    NA                -0.7366691   -1.3427067   -0.1306315
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.4743169   -1.0066474    0.0580137
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2441153   -0.3418434   -0.1463872
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                 0.0009445   -0.2060346    0.2079235
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.1067573   -0.4149676    0.2014531
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0394468   -0.2173397    0.2962333
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0233707   -0.1362457    0.0895042
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                 0.0455950   -0.1052013    0.1963912
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                 0.1803303   -0.0381296    0.3987902
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.6112094   -0.7369075   -0.4855113
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.7014725   -1.0518125   -0.3511325
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.6441535   -0.8348424   -0.4534646
6 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                -0.5725544   -0.7534972   -0.3916115
6 months    ki1114097-CONTENT          PERU                           4+                   NA                 1.1580075    0.9578580    1.3581570
6 months    ki1114097-CONTENT          PERU                           1                    NA                 0.9842369    0.6813633    1.2871105
6 months    ki1114097-CONTENT          PERU                           2                    NA                 1.0252409    0.7838474    1.2666344
6 months    ki1114097-CONTENT          PERU                           3                    NA                 1.0465796    0.8083785    1.2847807
6 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.2290345   -0.3586195   -0.0994495
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.7652442   -0.8068918   -0.7235966
6 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.6258615   -0.6888463   -0.5628767
6 months    ki1135781-COHORTS          INDIA                          3                    NA                -0.5619398   -0.7063281   -0.4175516
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.4279424   -0.5113917   -0.3444930
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6281641   -0.6542204   -0.6021079
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.5873677   -0.6274435   -0.5472919
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.4650217   -0.5299066   -0.4001367
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.1977990   -0.4047513    0.0091534
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.4374894   -0.4847253   -0.3902535
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.3835637   -0.4508272   -0.3163001
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.2579432   -0.3630456   -0.1528408
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.5908853   -1.4784615    0.2966910
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.9232143   -1.0667023   -0.7797263
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.5974431   -0.9186243   -0.2762618
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.7472389   -1.0532203   -0.4412576
24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.9137901   -1.2826616   -0.5449186
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.8714273   -1.0516541   -0.6912005
24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -0.9702626   -1.1830896   -0.7574356
24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -1.0082745   -1.2703206   -0.7462284
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.3701061   -0.5171343   -0.2230779
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.5677938   -0.8267234   -0.3088642
24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.2045639   -0.5608057    0.1516780
24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.4786099   -0.8246904   -0.1325295
24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                 0.2176652    0.0521767    0.3831537
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.2385568   -0.8654556    0.3883421
24 months   ki0047075b-MAL-ED          PERU                           2                    NA                 0.0596138   -0.1865173    0.3057449
24 months   ki0047075b-MAL-ED          PERU                           3                    NA                 0.0676340   -0.2009997    0.3362677
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.4161465    0.2694848    0.5628082
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.3193840    0.0295209    0.6092471
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.6254529    0.2541409    0.9967648
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.4086669    0.0509542    0.7663797
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.1218878   -0.0329051    0.2766807
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2522222   -1.1599430    0.6554985
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0032000   -0.2355186    0.2291186
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.0356140   -0.2581087    0.3293368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2267461   -0.7298219    0.2763297
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.7307399   -0.8614498   -0.6000300
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.4835657   -0.6924179   -0.2747135
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.1186368   -0.3698476    0.1325741
24 months   ki1000108-IRC              INDIA                          4+                   NA                -0.5504533   -1.1777063    0.0767998
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.7260591   -0.8581216   -0.5939966
24 months   ki1000108-IRC              INDIA                          2                    NA                -0.7156602   -0.8606731   -0.5706473
24 months   ki1000108-IRC              INDIA                          3                    NA                -0.9557074   -1.2883083   -0.6231065
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.8697841   -1.3397352   -0.3998330
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9641864   -1.0588983   -0.8694746
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.7930738   -1.0036058   -0.5825417
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.7142099   -1.0481251   -0.3802947
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.3380538   -0.6152897   -0.0608178
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.7746501   -0.9070217   -0.6422785
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.6972727   -0.8837186   -0.5108269
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.3249835   -0.5879671   -0.0619998
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -1.1282386   -1.2613360   -0.9951412
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.1334782   -1.4807247   -0.7862317
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.1297312   -1.3210340   -0.9384283
24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                -1.1154815   -1.3015102   -0.9294527
24 months   ki1114097-CONTENT          PERU                           4+                   NA                 0.5634413    0.3307351    0.7961475
24 months   ki1114097-CONTENT          PERU                           1                    NA                 0.5108665    0.2199348    0.8017981
24 months   ki1114097-CONTENT          PERU                           2                    NA                 0.6101797    0.3724711    0.8478883
24 months   ki1114097-CONTENT          PERU                           3                    NA                 0.5751250    0.2281461    0.9221039
24 months   ki1135781-COHORTS          INDIA                          4+                   NA                -0.1694478   -0.3356349   -0.0032607
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.7844596   -0.8276287   -0.7412905
24 months   ki1135781-COHORTS          INDIA                          2                    NA                -0.4988056   -0.5583664   -0.4392448
24 months   ki1135781-COHORTS          INDIA                          3                    NA                -0.3125020   -0.4672347   -0.1577693
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -1.1859079   -1.2885784   -1.0832374
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3042277   -1.3359762   -1.2724793
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.3354374   -1.3832017   -1.2876730
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.1848204   -1.2679498   -1.1016910
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -1.1637438   -1.3431893   -0.9842984
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.2452108   -1.2853784   -1.2050432
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -1.2172717   -1.2727269   -1.1618164
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -1.1476373   -1.2540404   -1.0412342


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9721393   -1.1211171   -0.8231615
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0468095   -0.1738806    0.0802616
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1729474   -0.4186222    0.0727275
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7637500    0.5676177    0.9598823
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0053372   -1.1922119   -0.8184626
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9778087   -1.0126530   -0.9429644
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7500648   -0.7679149   -0.7322148
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6882498   -0.7406539   -0.6358456
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1340556   -0.2631866   -0.0049245
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7105603   -0.8374801   -0.5836404
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0552716    0.9326038    1.1779394
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5409906    0.3873048    0.6946765
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5900821   -0.7252457   -0.4549185
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6038416   -0.6899448   -0.5177384
6 months    ki1114097-CONTENT          PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.7088012   -0.7411274   -0.6764750
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5925328   -0.6121060   -0.5729595
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3901595   -0.4274150   -0.3529041
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1204478    0.0005049    0.2403906
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4148529    0.2940577    0.5356481
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0539486   -0.0712465    0.1791437
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7416790   -0.8323562   -0.6510017
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1363107   -1.2252817   -1.0473398
24 months   ki1114097-CONTENT          PERU                           NA                   NA                 0.5668293    0.4302437    0.7034148
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6612799   -0.6944511   -0.6281088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2984096   -1.3217671   -1.2750521
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2231776   -1.2550332   -1.1913220


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.1151504   -0.7483452    0.5180445
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.1073792   -0.7427142    0.5279558
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.1673733   -0.8871363    0.5523896
Birth       ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    4+                 0.2543581   -0.3703645    0.8790807
Birth       ki0047075b-MAL-ED          PERU                           2                    4+                 0.1958346   -0.1237974    0.5154665
Birth       ki0047075b-MAL-ED          PERU                           3                    4+                 0.4181278    0.1207092    0.7155463
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.4672121   -1.3096480    0.3752237
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.7354545   -0.0059351    1.4768442
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.0987121   -0.9615385    0.7641142
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0368889   -0.5659416    0.6397194
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.4131111   -0.9334933    0.1072711
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0035556   -0.4663701    0.4734813
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.1084286   -1.2953462    1.0784891
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.1995556   -1.4051651    1.0060540
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                 0.2623158   -0.9427198    1.4673514
Birth       ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    4+                -0.2555780   -1.5125615    1.0014056
Birth       ki1000108-IRC              INDIA                          2                    4+                -0.0243148   -1.2765766    1.2279470
Birth       ki1000108-IRC              INDIA                          3                    4+                 0.1375183   -1.2667634    1.5418000
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    4+                 0.0411633   -0.4762963    0.5586229
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    4+                 0.0561261   -0.4942664    0.6065187
Birth       ki1017093b-PROVIDE         BANGLADESH                     3                    4+                 0.0015276   -0.5842111    0.5872664
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                 0.0176450   -0.2389711    0.2742611
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                 0.0704854   -0.2062591    0.3472299
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                -0.0713118   -0.4083193    0.2656957
Birth       ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    4+                 0.1345217   -0.2145938    0.4836371
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    4+                 0.1210665   -0.1082970    0.3504300
Birth       ki1113344-GMS-Nepal        NEPAL                          3                    4+                -0.0363441   -0.2609000    0.1882117
Birth       ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    4+                -0.4118688   -0.5624562   -0.2612813
Birth       ki1135781-COHORTS          INDIA                          2                    4+                -0.3042277   -0.4647483   -0.1437071
Birth       ki1135781-COHORTS          INDIA                          3                    4+                -0.1657618   -0.3941746    0.0626511
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.1261386   -0.2014050   -0.0508722
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.0994171   -0.1780574   -0.0207767
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.0800372   -0.1681309    0.0080565
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                 0.1364241   -0.1181792    0.3910274
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                 0.1373778   -0.1257841    0.4005397
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                 0.1055927   -0.2079439    0.4191294
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    4+                 0.0122848   -0.8434258    0.8679953
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    4+                 0.3032899   -0.5865206    1.1931005
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    4+                 0.2179981   -0.6926243    1.1286205
6 months    ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    4+                -0.0998047   -0.4798917    0.2802823
6 months    ki0047075b-MAL-ED          INDIA                          2                    4+                -0.0595277   -0.4429023    0.3238469
6 months    ki0047075b-MAL-ED          INDIA                          3                    4+                -0.1111086   -0.5885475    0.3663302
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.1265068   -0.4723415    0.2193279
6 months    ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.3455551   -0.0922805    0.7833908
6 months    ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.1283627   -0.4694616    0.2127362
6 months    ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    4+                -0.4710409   -0.9799188    0.0378369
6 months    ki0047075b-MAL-ED          PERU                           2                    4+                 0.1455426   -0.1915811    0.4826663
6 months    ki0047075b-MAL-ED          PERU                           3                    4+                 0.0458715   -0.2345868    0.3263297
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.0962057   -0.5337275    0.3413161
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.4313862   -0.1656188    1.0283911
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.3056222   -0.7555802    0.1443357
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0979122   -0.4989242    0.6947485
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0202180   -0.3365000    0.2960640
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.1141959   -0.4618268    0.2334349
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.5929125   -1.2388987    0.0530737
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                 0.0189774   -0.6886053    0.7265600
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                 0.0384924   -0.6909875    0.7679723
6 months    ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    4+                 0.2816593   -0.4891538    1.0524724
6 months    ki1000108-IRC              INDIA                          2                    4+                 0.2432350   -0.5288042    1.0152743
6 months    ki1000108-IRC              INDIA                          3                    4+                 0.0887480   -0.8708682    1.0483641
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    4+                 0.2302016   -0.3104097    0.7708129
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    4+                 0.4752613   -0.0951073    1.0456300
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    4+                 0.3675596   -0.2477251    0.9828443
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0628175   -0.3431574    0.2175223
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                 0.0061482   -0.2915704    0.3038667
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.1408835   -0.1961877    0.4779547
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.0902631   -0.4626972    0.2821711
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.0329440   -0.2624525    0.1965644
6 months    ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0386550   -0.1825107    0.2598208
6 months    ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           1                    4+                -0.1737706   -0.5374889    0.1899477
6 months    ki1114097-CONTENT          PERU                           2                    4+                -0.1327666   -0.4473672    0.1818341
6 months    ki1114097-CONTENT          PERU                           3                    4+                -0.1114279   -0.4226344    0.1997785
6 months    ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    4+                -0.5362097   -0.6722869   -0.4001326
6 months    ki1135781-COHORTS          INDIA                          2                    4+                -0.3968270   -0.5409323   -0.2527217
6 months    ki1135781-COHORTS          INDIA                          3                    4+                -0.3329053   -0.5269490   -0.1388617
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.2002218   -0.2867796   -0.1136640
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.1594254   -0.2523149   -0.0665358
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.0370793   -0.1440903    0.0699317
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.2396904   -0.4520191   -0.0273618
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.1857647   -0.4025571    0.0310277
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.0601442   -0.2854693    0.1651808
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.3323290   -1.2322164    0.5675583
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.0065578   -0.9516736    0.9385579
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.1563537   -1.0965566    0.7838492
24 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    4+                 0.0423628   -0.3692130    0.4539386
24 months   ki0047075b-MAL-ED          INDIA                          2                    4+                -0.0564725   -0.4823527    0.3694077
24 months   ki0047075b-MAL-ED          INDIA                          3                    4+                -0.0944844   -0.5478522    0.3588834
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.1976877   -0.4957047    0.1003294
24 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.1655422   -0.2199434    0.5510279
24 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.1085038   -0.4844852    0.2674775
24 months   ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    4+                -0.4562220   -1.1034364    0.1909925
24 months   ki0047075b-MAL-ED          PERU                           2                    4+                -0.1580514   -0.4536214    0.1375186
24 months   ki0047075b-MAL-ED          PERU                           3                    4+                -0.1500312   -0.4658837    0.1658213
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.0967625   -0.4227346    0.2292096
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.2093064   -0.1904001    0.6090129
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.0074795   -0.3946849    0.3797258
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.3741100   -1.2949345    0.5467145
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.1250878   -0.4042521    0.1540766
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0862737   -0.4182886    0.2457412
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.5039938   -1.0237771    0.0157895
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.2568196   -0.8015164    0.2878772
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                 0.1081093   -0.4542079    0.6704266
24 months   ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    4+                -0.1756058   -0.8172318    0.4660201
24 months   ki1000108-IRC              INDIA                          2                    4+                -0.1652069   -0.8103501    0.4799363
24 months   ki1000108-IRC              INDIA                          3                    4+                -0.4052541   -1.1163807    0.3058724
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0944023   -0.5740758    0.3852712
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                 0.0767103   -0.4367254    0.5901460
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                 0.1555742   -0.4203402    0.7314886
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.4365964   -0.7437732   -0.1294195
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.3592190   -0.6936008   -0.0248372
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.0130703   -0.3692886    0.3954292
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.0052396   -0.3777530    0.3672738
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.0014926   -0.2340782    0.2310931
24 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0127571   -0.2170063    0.2425206
24 months   ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           1                    4+                -0.0525748   -0.4233190    0.3181693
24 months   ki1114097-CONTENT          PERU                           2                    4+                 0.0467384   -0.2861291    0.3796060
24 months   ki1114097-CONTENT          PERU                           3                    4+                 0.0116837   -0.4009008    0.4242682
24 months   ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    4+                -0.6150118   -0.7865979   -0.4434257
24 months   ki1135781-COHORTS          INDIA                          2                    4+                -0.3293578   -0.5057988   -0.1529169
24 months   ki1135781-COHORTS          INDIA                          3                    4+                -0.1430542   -0.3700041    0.0838957
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.1183198   -0.2250423   -0.0115974
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.1495295   -0.2625101   -0.0365488
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                 0.0010875   -0.1345461    0.1367211
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.0814670   -0.2653161    0.1023822
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.0535279   -0.2389243    0.1318686
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                 0.0161065   -0.1837022    0.2159152


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.1088772   -0.6932468    0.4754923
Birth       ki0047075b-MAL-ED          PERU                           4+                   NA                 0.1547567    0.0247989    0.2847144
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0558405   -0.1182633    0.2299443
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0993611   -0.3431773    0.1444551
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0488256   -1.1046396    1.0069884
Birth       ki1000108-IRC              INDIA                          4+                   NA                -0.1240253   -1.3148203    1.0667697
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.0383436   -0.4624564    0.5391436
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0113049   -0.2007207    0.2233304
Birth       ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0246740   -0.0704852    0.1198331
Birth       ki1135781-COHORTS          INDIA                          4+                   NA                -0.3659657   -0.5100515   -0.2218798
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.1093556   -0.1796087   -0.0391025
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.1275271   -0.1121338    0.3671880
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                 0.0804100   -0.7344527    0.8952727
6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0766214   -0.3887503    0.2355074
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0039471   -0.1147827    0.1226768
6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0176308   -0.1371008    0.1018391
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0123474   -0.0909759    0.0662811
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0618155   -0.2113497    0.0877188
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.3283905   -0.9436845    0.2869034
6 months    ki1000108-IRC              INDIA                          4+                   NA                 0.2353350   -0.4916193    0.9622893
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.2752262   -0.2456452    0.7960976
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0096846   -0.2469432    0.2275741
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0073678   -0.0848110    0.0995466
6 months    ki1114097-CONTENT          PERU                           4+                   NA                -0.0895757   -0.2491189    0.0699675
6 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.4797667   -0.6097895   -0.3497440
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.1645904   -0.2471616   -0.0820192
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.1923606   -0.3911246    0.0064034
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.2293034   -1.0843072    0.6257004
24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0385006   -0.3855780    0.3085767
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0063413   -0.1093315    0.0966490
24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0972174   -0.2070907    0.0126558
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0012936   -0.0575726    0.0549855
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0679392   -0.2009399    0.0650616
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.3304045   -0.8266942    0.1658853
24 months   ki1000108-IRC              INDIA                          4+                   NA                -0.1912257   -0.8037431    0.4212917
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0230829   -0.4839502    0.4377844
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.2722964   -0.5217233   -0.0228696
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0080722   -0.1035191    0.0873748
24 months   ki1114097-CONTENT          PERU                           4+                   NA                 0.0033880   -0.1751273    0.1819033
24 months   ki1135781-COHORTS          INDIA                          4+                   NA                -0.4918321   -0.6567674   -0.3268969
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.1125017   -0.2146687   -0.0103347
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0594338   -0.2304291    0.1115616

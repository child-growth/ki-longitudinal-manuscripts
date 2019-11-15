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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+           662   17989
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1          11170   17989
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           4609   17989
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3           1548   17989
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
![](/tmp/eb53e13c-4d68-4cfd-9e71-f8617c00e468/ea8a7927-220e-4662-8de9-c9a34ad19fae/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/eb53e13c-4d68-4cfd-9e71-f8617c00e468/ea8a7927-220e-4662-8de9-c9a34ad19fae/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/eb53e13c-4d68-4cfd-9e71-f8617c00e468/ea8a7927-220e-4662-8de9-c9a34ad19fae/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.7810734   -1.2764608   -0.2856861
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.9811578   -1.1977163   -0.7645994
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.9674891   -1.1976737   -0.7373046
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.9766083   -1.3861998   -0.5670168
Birth       ki0047075b-MAL-ED          PERU                           4+                   NA                -0.2074578   -0.3994923   -0.0154233
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                 0.0614630   -0.5073924    0.6303183
Birth       ki0047075b-MAL-ED          PERU                           2                    NA                -0.0128312   -0.2731589    0.2474965
Birth       ki0047075b-MAL-ED          PERU                           3                    NA                 0.2244393   -0.0055106    0.4543891
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
Birth       ki1000108-IRC              INDIA                          4+                   NA                -0.9590592   -2.2191474    0.3010290
Birth       ki1000108-IRC              INDIA                          1                    NA                -1.1383443   -1.4293331   -0.8473555
Birth       ki1000108-IRC              INDIA                          2                    NA                -0.8970218   -1.1653611   -0.6286824
Birth       ki1000108-IRC              INDIA                          3                    NA                -0.8217007   -1.4771433   -0.1662582
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -1.2750287   -1.7335998   -0.8164576
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.2915679   -1.3805679   -1.2025679
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.2917444   -1.4955781   -1.0879106
Birth       ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -1.3757520   -1.6463653   -1.1051386
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -1.2367239   -1.4536542   -1.0197937
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.2333980   -1.3629960   -1.1037999
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -1.1974133   -1.3559827   -1.0388439
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -1.3302329   -1.5836001   -1.0768657
Birth       ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -1.1476638   -1.2758395   -1.0194881
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.0168497   -1.3211582   -0.7125413
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.0013084   -1.1885617   -0.8140551
Birth       ki1113344-GMS-Nepal        NEPAL                          3                    NA                -1.1461566   -1.3263909   -0.9659223
Birth       ki1135781-COHORTS          INDIA                          4+                   NA                -0.6514690   -0.7993451   -0.5035928
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -1.0273869   -1.0717231   -0.9830506
Birth       ki1135781-COHORTS          INDIA                          2                    NA                -0.9184231   -0.9887105   -0.8481356
Birth       ki1135781-COHORTS          INDIA                          3                    NA                -0.7609165   -0.9378619   -0.5839710
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.6926333   -0.7724411   -0.6128255
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.7920405   -0.8178535   -0.7662275
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.7635643   -0.8001900   -0.7269385
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.7601826   -0.8202880   -0.7000771
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.8204266   -1.0659170   -0.5749363
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.6791184   -0.7420065   -0.6162303
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.6770889   -0.7723577   -0.5818201
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.7116710   -0.9152615   -0.5080805
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.2455186   -0.9657524    0.4747152
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.2060175   -0.3644779   -0.0475571
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                 0.0995580   -0.1947390    0.3938550
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0138548   -0.3531728    0.3254632
6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.6451347   -0.9682917   -0.3219776
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.7155191   -0.9229155   -0.5081227
6 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -0.6767532   -0.8926048   -0.4609016
6 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -0.7441031   -1.1024077   -0.3857986
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.1108667   -0.0672336    0.2889670
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0157280   -0.3138958    0.2824397
6 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                 0.4828475    0.0921733    0.8735218
6 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                 0.0248278   -0.2483669    0.2980226
6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                 1.0651880    0.8867102    1.2436657
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                 0.4532797   -0.0903696    0.9969289
6 months    ki0047075b-MAL-ED          PERU                           2                    NA                 1.1718544    0.8884735    1.4552353
6 months    ki0047075b-MAL-ED          PERU                           3                    NA                 1.0739168    0.8461018    1.3017317
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.5478453    0.3667220    0.7289687
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1770557   -0.1994501    0.5535615
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.7514352    0.2047542    1.2981162
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.1429387   -0.2870335    0.5729109
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.5688329    0.3808954    0.7567704
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5710439   -0.0789960    1.2210839
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.5511287    0.2926637    0.8095938
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.4630614    0.1641841    0.7619388
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0701475   -0.7577414    0.6174463
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.7655443   -0.9445774   -0.5865112
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.1626594   -0.5051595    0.1798406
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0653641   -0.4823757    0.3516475
6 months    ki1000108-IRC              INDIA                          4+                   NA                -0.8419545   -1.5951163   -0.0887927
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.5446471   -0.7447790   -0.3445152
6 months    ki1000108-IRC              INDIA                          2                    NA                -0.5737278   -0.7759999   -0.3714557
6 months    ki1000108-IRC              INDIA                          3                    NA                -0.7683705   -1.3747406   -0.1620004
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.5589825   -1.0432778   -0.0746871
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2431422   -0.3408606   -0.1454237
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                 0.0060537   -0.1946834    0.2067909
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.1135577   -0.4119810    0.1848657
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0202628   -0.2379967    0.2785224
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0156217   -0.1285659    0.0973226
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                 0.0250519   -0.1236525    0.1737563
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                 0.2064709   -0.0085816    0.4215233
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.6116407   -0.7355407   -0.4877407
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.6930308   -1.0306073   -0.3554544
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.6447064   -0.8377674   -0.4516454
6 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                -0.5858223   -0.7609253   -0.4107192
6 months    ki1114097-CONTENT          PERU                           4+                   NA                 1.1619130    0.9610442    1.3627817
6 months    ki1114097-CONTENT          PERU                           1                    NA                 0.9750719    0.6843682    1.2657756
6 months    ki1114097-CONTENT          PERU                           2                    NA                 1.0053646    0.7658524    1.2448767
6 months    ki1114097-CONTENT          PERU                           3                    NA                 1.0601256    0.8208922    1.2993591
6 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.2748116   -0.3927923   -0.1568308
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.7668946   -0.8086681   -0.7251210
6 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.6219861   -0.6850587   -0.5589135
6 months    ki1135781-COHORTS          INDIA                          3                    NA                -0.5062113   -0.6528375   -0.3595851
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.4218867   -0.5027899   -0.3409835
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6260331   -0.6517833   -0.6002830
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.5887988   -0.6278862   -0.5497115
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.4757029   -0.5408774   -0.4105283
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.1868379   -0.3879584    0.0142827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.4372421   -0.4845136   -0.3899706
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.3820680   -0.4494420   -0.3146940
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.2519126   -0.3568966   -0.1469285
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.4701535   -1.2592050    0.3188980
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.9269532   -1.0690478   -0.7848585
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.5965690   -0.9111584   -0.2819796
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.7960341   -1.1283560   -0.4637121
24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.9375533   -1.3140537   -0.5610529
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.8786590   -1.0565385   -0.7007795
24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -0.9740378   -1.1935462   -0.7545295
24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -1.0291893   -1.2901474   -0.7682312
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.3538114   -0.5016088   -0.2060140
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.4893873   -0.7538765   -0.2248982
24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.1247960   -0.4766785    0.2270865
24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.2768610   -0.5955583    0.0418364
24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                 0.2047117    0.0337663    0.3756572
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.3213662   -0.8664369    0.2237044
24 months   ki0047075b-MAL-ED          PERU                           2                    NA                 0.0233948   -0.2161115    0.2629010
24 months   ki0047075b-MAL-ED          PERU                           3                    NA                 0.0576173   -0.2092714    0.3245061
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.4120258    0.2659901    0.5580615
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.3139557   -0.1237461    0.7516575
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.6002870    0.2569144    0.9436597
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.2922441   -0.0967767    0.6812649
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.1237415   -0.0307885    0.2782715
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2522222   -1.1599430    0.6554985
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0032000   -0.2355186    0.2291186
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.0356140   -0.2581087    0.3293368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0997886   -0.6225019    0.4229247
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.7224788   -0.8524774   -0.5924803
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.4743071   -0.6848228   -0.2637913
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0252428   -0.2905301    0.2400445
24 months   ki1000108-IRC              INDIA                          4+                   NA                -0.5631384   -1.1319549    0.0056782
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.7321926   -0.8659653   -0.5984199
24 months   ki1000108-IRC              INDIA                          2                    NA                -0.7223083   -0.8684775   -0.5761391
24 months   ki1000108-IRC              INDIA                          3                    NA                -0.9085966   -1.2446220   -0.5725712
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.5825514   -1.0652865   -0.0998163
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9631522   -1.0580227   -0.8682816
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.7541181   -0.9622170   -0.5460191
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.6951945   -1.0270030   -0.3633860
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.3804031   -0.6575414   -0.1032647
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.7373827   -0.8677424   -0.6070230
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.6867217   -0.8695119   -0.5039315
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.3343496   -0.6105252   -0.0581739
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -1.1265334   -1.2579225   -0.9951442
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.1223274   -1.4687859   -0.7758689
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.1830335   -1.3716327   -0.9944343
24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                -1.1230679   -1.3050385   -0.9410973
24 months   ki1114097-CONTENT          PERU                           4+                   NA                 0.5494708    0.3195265    0.7794151
24 months   ki1114097-CONTENT          PERU                           1                    NA                 0.4546433    0.1955343    0.7137523
24 months   ki1114097-CONTENT          PERU                           2                    NA                 0.5740362    0.3394290    0.8086435
24 months   ki1114097-CONTENT          PERU                           3                    NA                 0.5439542    0.1464304    0.9414780
24 months   ki1135781-COHORTS          INDIA                          4+                   NA                -0.1644363   -0.3356269    0.0067542
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.7807359   -0.8238414   -0.7376305
24 months   ki1135781-COHORTS          INDIA                          2                    NA                -0.5090973   -0.5685454   -0.4496492
24 months   ki1135781-COHORTS          INDIA                          3                    NA                -0.2958316   -0.4529212   -0.1387420
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -1.1758343   -1.2757808   -1.0758877
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3067921   -1.3384879   -1.2750964
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.3324372   -1.3797581   -1.2851164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.1802302   -1.2623965   -1.0980639
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -1.1417154   -1.3238937   -0.9595372
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.2446301   -1.2848231   -1.2044371
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -1.2174330   -1.2729302   -1.1619358
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -1.1407108   -1.2472724   -1.0341491


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9728358   -1.1217009   -0.8239707
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0468095   -0.1738806    0.0802616
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1729474   -0.4186222    0.0727275
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7637500    0.5676177    0.9598823
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0053372   -1.1922119   -0.8184626
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9778087   -1.0126530   -0.9429644
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7776536   -0.7966730   -0.7586341
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6882498   -0.7406539   -0.6358456
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1333333   -0.2623761   -0.0042906
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7102872   -0.8371659   -0.5834085
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0512099    0.9285617    1.1738581
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5404351    0.3867005    0.6941696
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5900821   -0.7252457   -0.4549185
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6038416   -0.6899448   -0.5177384
6 months    ki1114097-CONTENT          PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.7088012   -0.7411274   -0.6764750
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5930302   -0.6125738   -0.5734865
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3901595   -0.4274150   -0.3529041
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9516520   -1.0670654   -0.8362385
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7416790   -0.8323562   -0.6510017
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1363107   -1.2252817   -1.0473398
24 months   ki1114097-CONTENT          PERU                           NA                   NA                 0.5668293    0.4302437    0.7034148
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6612799   -0.6944511   -0.6281088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2967966   -1.3200807   -1.2735126
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2231776   -1.2550332   -1.1913220


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.2000844   -0.7411366    0.3409678
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.1864157   -0.7326915    0.3598601
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.1955348   -0.8386848    0.4476151
Birth       ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    4+                 0.2689208   -0.3318063    0.8696478
Birth       ki0047075b-MAL-ED          PERU                           2                    4+                 0.1946266   -0.1275157    0.5167689
Birth       ki0047075b-MAL-ED          PERU                           3                    4+                 0.4318971    0.1308458    0.7329484
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
Birth       ki1000108-IRC              INDIA                          1                    4+                -0.1792851   -1.4728952    1.1143250
Birth       ki1000108-IRC              INDIA                          2                    4+                 0.0620374   -1.2269665    1.3510414
Birth       ki1000108-IRC              INDIA                          3                    4+                 0.1373585   -1.2830005    1.5577174
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0165392   -0.4834237    0.4503453
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0167157   -0.5183142    0.4848829
Birth       ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.1007233   -0.6326840    0.4312375
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                 0.0033259   -0.2490366    0.2556885
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                 0.0393106   -0.2291184    0.3077396
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                -0.0935090   -0.4268228    0.2398048
Birth       ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    4+                 0.1308141   -0.1990786    0.4607067
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    4+                 0.1463554   -0.0800071    0.3727178
Birth       ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0015072   -0.2197321    0.2227465
Birth       ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    4+                -0.3759179   -0.5303294   -0.2215064
Birth       ki1135781-COHORTS          INDIA                          2                    4+                -0.2669541   -0.4307316   -0.1031766
Birth       ki1135781-COHORTS          INDIA                          3                    4+                -0.1094475   -0.3400064    0.1211115
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.0994072   -0.1828217   -0.0159927
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.0709310   -0.1579682    0.0161063
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.0675493   -0.1662234    0.0311249
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                 0.1413082   -0.1109380    0.3935544
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                 0.1433377   -0.1175580    0.4042334
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                 0.1087556   -0.2034481    0.4209594
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    4+                 0.0395011   -0.6977629    0.7767650
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    4+                 0.3450766   -0.4338393    1.1239925
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    4+                 0.2316638   -0.5643021    1.0276296
6 months    ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    4+                -0.0703844   -0.4544339    0.3136650
6 months    ki0047075b-MAL-ED          INDIA                          2                    4+                -0.0316185   -0.4209715    0.3577345
6 months    ki0047075b-MAL-ED          INDIA                          3                    4+                -0.0989685   -0.5818305    0.3838936
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.1265948   -0.4756221    0.2224326
6 months    ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.3719808   -0.0574400    0.8014016
6 months    ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.0860389   -0.4120768    0.2399990
6 months    ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    4+                -0.6119083   -1.1842221   -0.0395945
6 months    ki0047075b-MAL-ED          PERU                           2                    4+                 0.1066665   -0.2276727    0.4410056
6 months    ki0047075b-MAL-ED          PERU                           3                    4+                 0.0087288   -0.2809496    0.2984072
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.3707896   -0.7890330    0.0474537
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.2035898   -0.3733118    0.7804915
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.4049066   -0.8716686    0.0618553
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0022110   -0.6738778    0.6782998
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0177041   -0.3369891    0.3015808
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.1057715   -0.4593506    0.2478076
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.6953968   -1.4067523    0.0159587
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.0925119   -0.8621263    0.6771025
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                 0.0047834   -0.8016983    0.8112652
6 months    ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    4+                 0.2973074   -0.4840656    1.0786803
6 months    ki1000108-IRC              INDIA                          2                    4+                 0.2682267   -0.5138136    1.0502671
6 months    ki1000108-IRC              INDIA                          3                    4+                 0.0735840   -0.8937083    1.0408762
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    4+                 0.3158403   -0.1776742    0.8093547
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    4+                 0.5650362    0.0413168    1.0887556
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    4+                 0.4454248   -0.1237058    1.0145554
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0358845   -0.3172713    0.2455024
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                 0.0047890   -0.2927197    0.3022978
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.1862081   -0.1492300    0.5216461
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.0813901   -0.4414684    0.2786881
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.0330657   -0.2622999    0.1961685
6 months    ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0258184   -0.1884741    0.2401110
6 months    ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           1                    4+                -0.1868410   -0.5407438    0.1670617
6 months    ki1114097-CONTENT          PERU                           2                    4+                -0.1565484   -0.4697826    0.1566858
6 months    ki1114097-CONTENT          PERU                           3                    4+                -0.1017873   -0.4147013    0.2111266
6 months    ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    4+                -0.4920830   -0.6171819   -0.3669841
6 months    ki1135781-COHORTS          INDIA                          2                    4+                -0.3471746   -0.4809201   -0.2134290
6 months    ki1135781-COHORTS          INDIA                          3                    4+                -0.2313998   -0.4196064   -0.0431932
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.2041464   -0.2881647   -0.1201281
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.1669121   -0.2571368   -0.0766874
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.0538161   -0.1577663    0.0501340
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.2504042   -0.4570372   -0.0437713
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.1952301   -0.4065583    0.0160981
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.0650747   -0.2842726    0.1541231
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.4567997   -1.2586300    0.3450306
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.1264155   -0.9763741    0.7235431
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.3258806   -1.1828950    0.5311338
24 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    4+                 0.0588944   -0.3579672    0.4757559
24 months   ki0047075b-MAL-ED          INDIA                          2                    4+                -0.0364845   -0.4730942    0.4001252
24 months   ki0047075b-MAL-ED          INDIA                          3                    4+                -0.0916360   -0.5498193    0.3665473
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.1355759   -0.4390976    0.1679458
24 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.2290154   -0.1529710    0.6110019
24 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                 0.0769505   -0.2743992    0.4283001
24 months   ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    4+                -0.5260780   -1.0985928    0.0464368
24 months   ki0047075b-MAL-ED          PERU                           2                    4+                -0.1813170   -0.4759889    0.1133550
24 months   ki0047075b-MAL-ED          PERU                           3                    4+                -0.1470944   -0.4650161    0.1708273
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.0980701   -0.5594054    0.3632652
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.1882612   -0.1826593    0.5591818
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.1197817   -0.5376358    0.2980723
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.3759637   -1.2967441    0.5448166
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.1269415   -0.4059602    0.1520772
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0881275   -0.4200199    0.2437649
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.6226902   -1.1608522   -0.0845283
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.3745184   -0.9376646    0.1886277
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                 0.0745458   -0.5132796    0.6623713
24 months   ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    4+                -0.1690542   -0.7537339    0.4156255
24 months   ki1000108-IRC              INDIA                          2                    4+                -0.1591700   -0.7470949    0.4287549
24 months   ki1000108-IRC              INDIA                          3                    4+                -0.3454582   -1.0072260    0.3163096
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.3806008   -0.8724879    0.1112863
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.1715667   -0.6963741    0.3532408
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.1126431   -0.6990535    0.4737673
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.3569796   -0.6637151   -0.0502442
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.3063186   -0.6385063    0.0258690
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.0460535   -0.3455449    0.4376519
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                 0.0042060   -0.3662962    0.3747082
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.0565002   -0.2863558    0.1733554
24 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0034655   -0.2211452    0.2280761
24 months   ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           1                    4+                -0.0948276   -0.4401752    0.2505201
24 months   ki1114097-CONTENT          PERU                           2                    4+                 0.0245654   -0.3025343    0.3516651
24 months   ki1114097-CONTENT          PERU                           3                    4+                -0.0055166   -0.4617613    0.4507281
24 months   ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    4+                -0.6162996   -0.7927987   -0.4398005
24 months   ki1135781-COHORTS          INDIA                          2                    4+                -0.3446610   -0.5258195   -0.1635024
24 months   ki1135781-COHORTS          INDIA                          3                    4+                -0.1313952   -0.3637272    0.1009367
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.1309579   -0.2345116   -0.0274042
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.1566030   -0.2672135   -0.0459924
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.0043959   -0.1360024    0.1272105
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.1029147   -0.2894325    0.0836032
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.0757176   -0.2637254    0.1122903
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                 0.0010047   -0.2014081    0.2034175


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.1917624   -0.6810401    0.2975154
Birth       ki0047075b-MAL-ED          PERU                           4+                   NA                 0.1606483    0.0302605    0.2910361
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0558405   -0.1182633    0.2299443
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0993611   -0.3431773    0.1444551
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0488256   -1.1046396    1.0069884
Birth       ki1000108-IRC              INDIA                          4+                   NA                -0.0462780   -1.2748380    1.1822820
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0234299   -0.4735124    0.4266525
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0074274   -0.2145798    0.1997250
Birth       ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0312207   -0.0629905    0.1254320
Birth       ki1135781-COHORTS          INDIA                          4+                   NA                -0.3263397   -0.4739924   -0.1786870
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.0850203   -0.1633514   -0.0066891
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.1321768   -0.1051163    0.3694700
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                 0.1121853   -0.5818208    0.8061913
6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0651526   -0.3806417    0.2503366
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0004359   -0.1215263    0.1206544
6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0139781   -0.1346603    0.1067042
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0074103   -0.0864585    0.0716380
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0326116   -0.1818821    0.1166589
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.4325291   -1.1149245    0.2498663
6 months    ki1000108-IRC              INDIA                          4+                   NA                 0.2518724   -0.4857353    0.9894800
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.3598918   -0.1138556    0.8336391
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0094994   -0.2283709    0.2473697
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0077991   -0.0825638    0.0981620
6 months    ki1114097-CONTENT          PERU                           4+                   NA                -0.0934812   -0.2534601    0.0664977
6 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.4339897   -0.5528702   -0.3151091
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.1711434   -0.2510533   -0.0912336
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.2033216   -0.3961673   -0.0104760
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.3491390   -1.1067462    0.4084683
24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0140987   -0.3679412    0.3397439
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0211009   -0.1243002    0.0820985
24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0935136   -0.2050125    0.0179853
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0029957   -0.0609816    0.0549902
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0689440   -0.2018628    0.0639748
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.4573619   -0.9736491    0.0589253
24 months   ki1000108-IRC              INDIA                          4+                   NA                -0.1785406   -0.7332285    0.3761473
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.3103156   -0.7834221    0.1627908
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.2299471   -0.4788854    0.0189911
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0097774   -0.1038159    0.0842611
24 months   ki1114097-CONTENT          PERU                           4+                   NA                 0.0173584   -0.1596701    0.1943869
24 months   ki1135781-COHORTS          INDIA                          4+                   NA                -0.4968436   -0.6666750   -0.3270121
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.1209624   -0.2199825   -0.0219423
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0814622   -0.2552191    0.0922948

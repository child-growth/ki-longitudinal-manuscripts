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
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+            12     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            130     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     2             46     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     3             25     213
Birth       ki0047075b-MAL-ED          BRAZIL                         4+            30      60
Birth       ki0047075b-MAL-ED          BRAZIL                         1              0      60
Birth       ki0047075b-MAL-ED          BRAZIL                         2             10      60
Birth       ki0047075b-MAL-ED          BRAZIL                         3             20      60
Birth       ki0047075b-MAL-ED          INDIA                          4+             2      41
Birth       ki0047075b-MAL-ED          INDIA                          1             18      41
Birth       ki0047075b-MAL-ED          INDIA                          2             17      41
Birth       ki0047075b-MAL-ED          INDIA                          3              4      41
Birth       ki0047075b-MAL-ED          NEPAL                          4+            15      26
Birth       ki0047075b-MAL-ED          NEPAL                          1              7      26
Birth       ki0047075b-MAL-ED          NEPAL                          2              2      26
Birth       ki0047075b-MAL-ED          NEPAL                          3              2      26
Birth       ki0047075b-MAL-ED          PERU                           4+           107     215
Birth       ki0047075b-MAL-ED          PERU                           1             13     215
Birth       ki0047075b-MAL-ED          PERU                           2             45     215
Birth       ki0047075b-MAL-ED          PERU                           3             50     215
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+            67      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              5      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2             12      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3             12      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            49     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              9     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             31     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             31     120
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+             5      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             38      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2             29      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3             20      92
Birth       ki1000108-IRC              INDIA                          4+            17     386
Birth       ki1000108-IRC              INDIA                          1            175     386
Birth       ki1000108-IRC              INDIA                          2            161     386
Birth       ki1000108-IRC              INDIA                          3             33     386
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+            19     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1            390     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     2             83     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     3             47     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+            93     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1            353     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2            187     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3             99     732
Birth       ki1113344-GMS-Nepal        NEPAL                          4+           321     696
Birth       ki1113344-GMS-Nepal        NEPAL                          1             49     696
Birth       ki1113344-GMS-Nepal        NEPAL                          2            145     696
Birth       ki1113344-GMS-Nepal        NEPAL                          3            181     696
Birth       ki1114097-CONTENT          PERU                           4+             1       2
Birth       ki1114097-CONTENT          PERU                           1              0       2
Birth       ki1114097-CONTENT          PERU                           2              1       2
Birth       ki1114097-CONTENT          PERU                           3              0       2
Birth       ki1135781-COHORTS          INDIA                          4+            92    4769
Birth       ki1135781-COHORTS          INDIA                          1           3125    4769
Birth       ki1135781-COHORTS          INDIA                          2           1385    4769
Birth       ki1135781-COHORTS          INDIA                          3            167    4769
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+           755   22429
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1          13942   22429
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           5846   22429
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3           1886   22429
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+           128    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1           1705    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2            709    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3            278    2820
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            198     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2            106     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3             51     369
6 months    ki1000108-IRC              INDIA                          4+            17     405
6 months    ki1000108-IRC              INDIA                          1            183     405
6 months    ki1000108-IRC              INDIA                          2            170     405
6 months    ki1000108-IRC              INDIA                          3             35     405
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+            21     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            431     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     2             94     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     3             58     604
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
6 months    ki1135781-COHORTS          INDIA                          4+            93    4962
6 months    ki1135781-COHORTS          INDIA                          1           3213    4962
6 months    ki1135781-COHORTS          INDIA                          2           1474    4962
6 months    ki1135781-COHORTS          INDIA                          3            182    4962
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+           744   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           9625   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           4740   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3           1691   16800
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+           262    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2850    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2           1225    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3            488    4825
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
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            201     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2            105     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             51     371
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
24 months   ki1113344-GMS-Nepal        NEPAL                          4+           231     488
24 months   ki1113344-GMS-Nepal        NEPAL                          1             35     488
24 months   ki1113344-GMS-Nepal        NEPAL                          2            106     488
24 months   ki1113344-GMS-Nepal        NEPAL                          3            116     488
24 months   ki1114097-CONTENT          PERU                           4+            63     164
24 months   ki1114097-CONTENT          PERU                           1             30     164
24 months   ki1114097-CONTENT          PERU                           2             39     164
24 months   ki1114097-CONTENT          PERU                           3             32     164
24 months   ki1135781-COHORTS          INDIA                          4+            76    3746
24 months   ki1135781-COHORTS          INDIA                          1           2299    3746
24 months   ki1135781-COHORTS          INDIA                          2           1221    3746
24 months   ki1135781-COHORTS          INDIA                          3            150    3746
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+           367    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           5051    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           2400    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3            802    8620
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+           251    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2789    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2           1216    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3            491    4747


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
![](/tmp/a3a227f0-81b1-4dec-a9b2-a2df5ace976f/84253456-25c4-44af-978c-c12946e0bf9e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a3a227f0-81b1-4dec-a9b2-a2df5ace976f/84253456-25c4-44af-978c-c12946e0bf9e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a3a227f0-81b1-4dec-a9b2-a2df5ace976f/84253456-25c4-44af-978c-c12946e0bf9e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.4526885   -1.0257746    0.1203975
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.1254215   -1.3031653   -0.9476777
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -1.0999646   -1.4088967   -0.7910325
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.9086038   -1.2499763   -0.5672313
Birth       ki0047075b-MAL-ED          PERU                           4+                   NA                -0.8541113   -1.0528111   -0.6554116
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -1.0860273   -1.5416756   -0.6303791
Birth       ki0047075b-MAL-ED          PERU                           2                    NA                -0.9492892   -1.1584130   -0.7401654
Birth       ki0047075b-MAL-ED          PERU                           3                    NA                -0.9754647   -1.1821035   -0.7688258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.4688060   -0.7283817   -0.2092303
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1980000   -0.4674799    0.0714799
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -1.0133333   -1.4164289   -0.6102377
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.7058333   -1.2016555   -0.2100111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -1.2567347   -1.5615935   -0.9518759
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.8588889   -1.4085413   -0.3092365
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -1.1070968   -1.6324652   -0.5817283
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -1.0022581   -1.3571466   -0.6473695
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.8740000   -1.4739904   -0.2740096
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.8946053   -1.2459292   -0.5432813
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -1.1229310   -1.4808250   -0.7650370
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.8750000   -1.3685904   -0.3814096
Birth       ki1000108-IRC              INDIA                          4+                   NA                 0.4836631   -0.6213010    1.5886271
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.2798533   -0.5186566   -0.0410500
Birth       ki1000108-IRC              INDIA                          2                    NA                -0.4071864   -0.6624948   -0.1518779
Birth       ki1000108-IRC              INDIA                          3                    NA                -0.3012097   -0.8121930    0.2097735
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.9033884   -1.3676627   -0.4391140
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.8765985   -0.9624586   -0.7907385
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.9339025   -1.1492240   -0.7185810
Birth       ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.8705997   -1.1122931   -0.6289063
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.8826561   -1.0860376   -0.6792746
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.9655727   -1.0665966   -0.8645489
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.8959719   -1.0580348   -0.7339089
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.7930214   -0.9814711   -0.6045717
Birth       ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.9908715   -1.1087229   -0.8730200
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.3198755   -1.6348656   -1.0048854
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.1643325   -1.3380477   -0.9906172
Birth       ki1113344-GMS-Nepal        NEPAL                          3                    NA                -1.1552032   -1.3085577   -1.0018487
Birth       ki1135781-COHORTS          INDIA                          4+                   NA                -0.4008157   -0.5453544   -0.2562771
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.7606463   -0.8023857   -0.7189069
Birth       ki1135781-COHORTS          INDIA                          2                    NA                -0.5286794   -0.5946387   -0.4627201
Birth       ki1135781-COHORTS          INDIA                          3                    NA                -0.4878829   -0.6695213   -0.3062446
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -1.3038155   -1.3722733   -1.2353577
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.6304196   -1.6538814   -1.6069578
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.5700504   -1.6070667   -1.5330340
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.4813258   -1.5507340   -1.4119177
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -1.5778109   -1.8036660   -1.3519558
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.5761694   -1.6398991   -1.5124397
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -1.4524649   -1.5501084   -1.3548213
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -1.3555071   -1.5059465   -1.2050676
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -1.0465435   -1.5802581   -0.5128289
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.2266133   -1.3674436   -1.0857829
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -1.2455046   -1.5820505   -0.9089587
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -1.0262956   -1.3175111   -0.7350801
6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                -1.0318356   -1.2914636   -0.7722077
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -1.1272635   -1.3439324   -0.9105945
6 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -1.4362322   -1.6446775   -1.2277869
6 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -1.0911015   -1.3386391   -0.8435640
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.5028270   -0.6532359   -0.3524180
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.6399080   -0.8847810   -0.3950350
6 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.6626894   -0.9770332   -0.3483456
6 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.5601120   -0.9569316   -0.1632924
6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                -1.3506879   -1.5120693   -1.1893065
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -1.6412293   -2.0809869   -1.2014718
6 months    ki0047075b-MAL-ED          PERU                           2                    NA                -1.1952819   -1.4425946   -0.9479692
6 months    ki0047075b-MAL-ED          PERU                           3                    NA                -1.2730562   -1.4823916   -1.0637208
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -1.0707941   -1.2282979   -0.9132903
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.2399957   -1.7772360   -0.7027555
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.8053256   -1.2261904   -0.3844609
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.9866987   -1.3067924   -0.6666050
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -1.3548510   -1.5231820   -1.1865201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.2107598   -1.9474430   -0.4740765
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -1.4660216   -1.7555748   -1.1764684
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -1.1919391   -1.4109944   -0.9728838
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -1.2433335   -1.8023334   -0.6843335
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.3746572   -1.5547304   -1.1945840
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -1.5873455   -1.8730606   -1.3016304
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -1.2821867   -1.7560332   -0.8083402
6 months    ki1000108-IRC              INDIA                          4+                   NA                -0.9863092   -1.7791938   -0.1934247
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.2375846   -1.4342571   -1.0409121
6 months    ki1000108-IRC              INDIA                          2                    NA                -1.2695050   -1.4690262   -1.0699839
6 months    ki1000108-IRC              INDIA                          3                    NA                -1.3641512   -1.7960636   -0.9322388
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.7968075   -1.1957098   -0.3979052
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.1304864   -1.2188732   -1.0420997
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.0099142   -1.2022415   -0.8175868
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.9629628   -1.1950430   -0.7308827
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -1.1094555   -1.2816816   -0.9372295
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.2838159   -1.3903390   -1.1772929
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -1.2288539   -1.3776896   -1.0800181
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.9247792   -1.1156381   -0.7339204
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -1.3141664   -1.4258901   -1.2024427
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.6854885   -1.9992329   -1.3717441
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.3952330   -1.5764177   -1.2140483
6 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                -1.3239668   -1.4766370   -1.1712966
6 months    ki1114097-CONTENT          PERU                           4+                   NA                -0.3148487   -0.6114306   -0.0182668
6 months    ki1114097-CONTENT          PERU                           1                    NA                -0.5464702   -0.9513011   -0.1416392
6 months    ki1114097-CONTENT          PERU                           2                    NA                -0.1610147   -0.4995375    0.1775081
6 months    ki1114097-CONTENT          PERU                           3                    NA                -0.2498344   -0.6584362    0.1587673
6 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.4612183   -0.5721616   -0.3502750
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -1.1979806   -1.2398192   -1.1561419
6 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.7614132   -0.8209504   -0.7018760
6 months    ki1135781-COHORTS          INDIA                          3                    NA                -0.6747253   -0.8370140   -0.5124367
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -1.0370828   -1.1130913   -0.9610743
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3549471   -1.3825798   -1.3273143
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.2996810   -1.3396751   -1.2596870
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.1977122   -1.2555424   -1.1398821
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -1.1154858   -1.3095368   -0.9214348
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.4081993   -1.4542982   -1.3621005
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -1.3000954   -1.3693460   -1.2308448
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -1.2001546   -1.3033267   -1.0969826
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -1.5343402   -2.0252747   -1.0434056
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -2.0721949   -2.2283832   -1.9160065
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -1.9262354   -2.2526950   -1.5997757
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -1.7438581   -2.0236806   -1.4640355
24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -1.8214611   -2.1249631   -1.5179590
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -1.7657811   -1.9927686   -1.5387937
24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -2.0880392   -2.3085366   -1.8675419
24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -1.8067553   -2.0514205   -1.5620900
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -1.2737329   -1.4321916   -1.1152742
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.4232132   -1.6522477   -1.1941787
24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -1.2412732   -1.5969150   -0.8856314
24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -1.4149222   -1.9288351   -0.9010093
24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -1.7392218   -1.9143132   -1.5641303
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -2.1136924   -2.5270939   -1.7002910
24 months   ki0047075b-MAL-ED          PERU                           2                    NA                -1.6199325   -1.8973812   -1.3424837
24 months   ki0047075b-MAL-ED          PERU                           3                    NA                -1.7247267   -1.9704088   -1.4790446
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -1.6468094   -1.7979175   -1.4957013
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.8977396   -2.5277964   -1.2676829
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -1.1923230   -1.7027395   -0.6819065
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -1.7260214   -2.2448466   -1.2071962
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -2.5722449   -2.7682142   -2.3762756
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.5316667   -3.4733393   -1.5899941
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -3.0096000   -3.2841137   -2.7350863
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -2.4702632   -2.7008840   -2.2396423
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -2.3469463   -2.7754038   -1.9184888
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.6618535   -2.7976785   -2.5260285
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -2.5029690   -2.6878937   -2.3180443
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -2.4293156   -2.7193951   -2.1392361
24 months   ki1000108-IRC              INDIA                          4+                   NA                -1.9032049   -2.4243024   -1.3821073
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.8704457   -2.0148464   -1.7260450
24 months   ki1000108-IRC              INDIA                          2                    NA                -1.6648945   -1.8087182   -1.5210708
24 months   ki1000108-IRC              INDIA                          3                    NA                -2.0284555   -2.2764319   -1.7804792
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.9583504   -1.4333842   -0.4833165
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.6831915   -1.7794595   -1.5869236
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.5042922   -1.7254890   -1.2830954
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -1.4221712   -1.6651047   -1.1792376
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -1.1927354   -1.3737016   -1.0117692
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.5491017   -1.6789157   -1.4192877
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -1.6182142   -1.7898686   -1.4465597
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -1.0713580   -1.2760268   -0.8666892
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -1.7950911   -1.9178356   -1.6723466
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -2.2575874   -2.5863005   -1.9288743
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.9908056   -2.1672824   -1.8143288
24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                -1.8521697   -2.0297172   -1.6746222
24 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.5678412   -0.8413133   -0.2943692
24 months   ki1114097-CONTENT          PERU                           1                    NA                -0.9940622   -1.3976687   -0.5904556
24 months   ki1114097-CONTENT          PERU                           2                    NA                -0.6165198   -0.9955905   -0.2374492
24 months   ki1114097-CONTENT          PERU                           3                    NA                -0.5826530   -0.9377152   -0.2275909
24 months   ki1135781-COHORTS          INDIA                          4+                   NA                -1.2854475   -1.4507588   -1.1201362
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -2.4524726   -2.5037289   -2.4012164
24 months   ki1135781-COHORTS          INDIA                          2                    NA                -1.8709543   -1.9378557   -1.8040529
24 months   ki1135781-COHORTS          INDIA                          3                    NA                -1.7437464   -1.9366055   -1.5508873
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -1.6887523   -1.8051675   -1.5723371
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.0634111   -2.0986702   -2.0281519
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.9955829   -2.0465542   -1.9446117
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.8677653   -1.9485480   -1.7869826
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -1.4239671   -1.5907319   -1.2572024
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.8663094   -1.9101563   -1.8224625
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -1.7433083   -1.8063317   -1.6802850
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -1.5652268   -1.6609676   -1.4694860


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0530516   -1.1896058   -0.9164975
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9141395   -1.0364098   -0.7918693
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.5523958   -0.7550074   -0.3497843
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1225000   -1.3335666   -0.9114334
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3079016   -0.4694769   -0.1463262
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6777626   -0.7107167   -0.6448086
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5898426   -1.6091216   -1.5705636
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5236135   -1.5727559   -1.4744711
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2026806   -1.3203025   -1.0850586
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2070638   -1.3255909   -1.0885368
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3248549   -1.4336721   -1.2160378
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0547925   -1.1843544   -0.9252306
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2470123   -1.3779341   -1.1160906
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3508392   -1.4290633   -1.2726152
6 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.3139217   -0.4868486   -0.1409948
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -1.0413281   -1.0740395   -1.0086167
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3132988   -1.3364412   -1.2901565
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3440477   -1.3813060   -1.3067894
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8861894   -2.0110006   -1.7613783
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.8014906   -1.8952579   -1.7077232
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8874180   -1.9728588   -1.8019773
24 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.6962195   -0.8674103   -0.5250287
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.2131714   -2.2523749   -2.1739679
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0137471   -2.0414306   -1.9860636
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7803708   -1.8158650   -1.7448765


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.6727330   -1.2733808   -0.0720852
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.6472761   -1.2999190    0.0053668
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.4559153   -1.1230366    0.2112060
Birth       ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    4+                -0.2319160   -0.7278210    0.2639890
Birth       ki0047075b-MAL-ED          PERU                           2                    4+                -0.0951779   -0.3820260    0.1916703
Birth       ki0047075b-MAL-ED          PERU                           3                    4+                -0.1213533   -0.4038012    0.1610945
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                 0.2708060   -0.1033584    0.6449703
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                -0.5445274   -1.0239704   -0.0650843
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.2370274   -0.7966873    0.3226325
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.3978458   -0.2306895    1.0263811
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.1496379   -0.4577754    0.7570512
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.2544766   -0.2133746    0.7223279
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.0206053   -0.7158872    0.6746767
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.2489310   -0.9475558    0.4496938
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.0010000   -0.7779299    0.7759299
Birth       ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    4+                -0.7635164   -1.8946185    0.3675858
Birth       ki1000108-IRC              INDIA                          2                    4+                -0.8908494   -2.0256658    0.2439670
Birth       ki1000108-IRC              INDIA                          3                    4+                -0.7848728   -2.0034561    0.4337104
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    4+                 0.0267898   -0.4456305    0.4992101
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0305142   -0.5426283    0.4816000
Birth       ki1017093b-PROVIDE         BANGLADESH                     3                    4+                 0.0327887   -0.4909967    0.5565740
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0829166   -0.3100855    0.1442522
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0133158   -0.2735083    0.2468768
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.0896347   -0.1867507    0.3660200
Birth       ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.3290040   -0.6652995    0.0072915
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.1734610   -0.3831904    0.0362683
Birth       ki1113344-GMS-Nepal        NEPAL                          3                    4+                -0.1643317   -0.3569021    0.0282387
Birth       ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    4+                -0.3598305   -0.5101414   -0.2095196
Birth       ki1135781-COHORTS          INDIA                          2                    4+                -0.1278636   -0.2866247    0.0308974
Birth       ki1135781-COHORTS          INDIA                          3                    4+                -0.0870672   -0.3190673    0.1449329
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.3266041   -0.3989870   -0.2542212
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.2662349   -0.3430008   -0.1894689
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.1775103   -0.2748514   -0.0801693
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                 0.0016415   -0.2313380    0.2346210
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                 0.1253460   -0.1202089    0.3709010
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                 0.2223039   -0.0513526    0.4959603
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.1800698   -0.7323473    0.3722078
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.1989611   -0.8302860    0.4323638
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    4+                 0.0202479   -0.5872573    0.6277530
6 months    ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    4+                -0.0954278   -0.4336739    0.2428183
6 months    ki0047075b-MAL-ED          INDIA                          2                    4+                -0.4043965   -0.7376369   -0.0711562
6 months    ki0047075b-MAL-ED          INDIA                          3                    4+                -0.0592659   -0.4181405    0.2996087
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.1370810   -0.4249043    0.1507422
6 months    ki0047075b-MAL-ED          NEPAL                          2                    4+                -0.1598624   -0.5084743    0.1887494
6 months    ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.0572850   -0.4818213    0.3672513
6 months    ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    4+                -0.2905415   -0.7592078    0.1781249
6 months    ki0047075b-MAL-ED          PERU                           2                    4+                 0.1554060   -0.1405176    0.4513296
6 months    ki0047075b-MAL-ED          PERU                           3                    4+                 0.0776317   -0.1868705    0.3421338
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.1692016   -0.7277467    0.3893434
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.2654685   -0.1842405    0.7151775
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                 0.0840954   -0.2715178    0.4397086
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.1440913   -0.6108688    0.8990514
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.1111706   -0.4466158    0.2242746
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.1629120   -0.1141261    0.4399500
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.1313238   -0.7185246    0.4558771
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.3440120   -0.9730341    0.2850100
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.0388533   -0.7709036    0.6931971
6 months    ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    4+                -0.2512754   -1.0691618    0.5666111
6 months    ki1000108-IRC              INDIA                          2                    4+                -0.2831958   -1.0998978    0.5335061
6 months    ki1000108-IRC              INDIA                          3                    4+                -0.3778420   -1.2810017    0.5253178
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.3336789   -0.7424481    0.0750902
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.2131067   -0.6559060    0.2296926
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.1661554   -0.6272623    0.2949516
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.1743604   -0.3770344    0.0283136
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.1193983   -0.3471124    0.1083158
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.1846763   -0.0724584    0.4418110
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.3713221   -0.7042230   -0.0384213
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.0810666   -0.2935363    0.1314031
6 months    ki1113344-GMS-Nepal        NEPAL                          3                    4+                -0.0098004   -0.1988765    0.1792757
6 months    ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           1                    4+                -0.2316215   -0.7343965    0.2711536
6 months    ki1114097-CONTENT          PERU                           2                    4+                 0.1538340   -0.2955380    0.6032060
6 months    ki1114097-CONTENT          PERU                           3                    4+                 0.0650142   -0.4391347    0.5691632
6 months    ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    4+                -0.7367623   -0.8552452   -0.6182794
6 months    ki1135781-COHORTS          INDIA                          2                    4+                -0.3001949   -0.4259485   -0.1744413
6 months    ki1135781-COHORTS          INDIA                          3                    4+                -0.2135070   -0.4100443   -0.0169697
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.3178643   -0.3984831   -0.2372454
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.2625982   -0.3485064   -0.1766901
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.1606294   -0.2530632   -0.0681957
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.2927136   -0.4919769   -0.0934502
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.1846096   -0.3910928    0.0218736
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.0846689   -0.3018847    0.1325470
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.5378547   -1.0526028   -0.0231067
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.3918952   -0.9812912    0.1975008
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.2095179   -0.7755086    0.3564728
24 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    4+                 0.0556799   -0.3234589    0.4348188
24 months   ki0047075b-MAL-ED          INDIA                          2                    4+                -0.2665782   -0.6390386    0.1058823
24 months   ki0047075b-MAL-ED          INDIA                          3                    4+                 0.0147058   -0.3733176    0.4027292
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.1494803   -0.4283037    0.1293432
24 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.0324597   -0.3575813    0.4225007
24 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.1411893   -0.6793856    0.3970071
24 months   ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    4+                -0.3744707   -0.8229849    0.0740436
24 months   ki0047075b-MAL-ED          PERU                           2                    4+                 0.1192893   -0.2084800    0.4470586
24 months   ki0047075b-MAL-ED          PERU                           3                    4+                 0.0144950   -0.2865868    0.3155769
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.2509302   -0.8967162    0.3948558
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.4544864   -0.0750786    0.9840514
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.0792120   -0.6206750    0.4622510
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0405782   -0.9212696    1.0024261
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.4373551   -0.7746409   -0.1000693
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.1019817   -0.2006566    0.4046200
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.3149072   -0.7642765    0.1344622
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.1560227   -0.6218850    0.3098396
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.0823693   -0.6004801    0.4357414
24 months   ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    4+                 0.0327592   -0.5078208    0.5733392
24 months   ki1000108-IRC              INDIA                          2                    4+                 0.2383104   -0.3022472    0.7788679
24 months   ki1000108-IRC              INDIA                          3                    4+                -0.1252507   -0.7027166    0.4522153
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.7248411   -1.2091976   -0.2404847
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.5459418   -1.0695301   -0.0223535
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.4638208   -0.9972901    0.0696486
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.3563663   -0.5796811   -0.1330516
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.4254788   -0.6753561   -0.1756014
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.1213774   -0.1524796    0.3952344
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.4624962   -0.8133799   -0.1116126
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.1957145   -0.4100608    0.0186318
24 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                -0.0570786   -0.2725970    0.1584399
24 months   ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           1                    4+                -0.4262210   -0.9155503    0.0631084
24 months   ki1114097-CONTENT          PERU                           2                    4+                -0.0486786   -0.5135416    0.4161844
24 months   ki1114097-CONTENT          PERU                           3                    4+                -0.0148118   -0.4650050    0.4353814
24 months   ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    4+                -1.1670252   -1.3400059   -0.9940444
24 months   ki1135781-COHORTS          INDIA                          2                    4+                -0.5855068   -0.7637693   -0.4072444
24 months   ki1135781-COHORTS          INDIA                          3                    4+                -0.4582989   -0.7122669   -0.2043310
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.3746588   -0.4922424   -0.2570751
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.3068306   -0.4265522   -0.1871090
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.1790130   -0.3184847   -0.0395412
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.4423423   -0.6126206   -0.2720639
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.3193412   -0.4981765   -0.1405059
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.1412597   -0.3316624    0.0491431


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.6003631   -1.1604085   -0.0403177
Birth       ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0600282   -0.1794178    0.0593614
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0835899   -0.2035080    0.0363283
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.1342347   -0.1139344    0.3824038
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0871957   -0.6936048    0.5192134
Birth       ki1000108-IRC              INDIA                          4+                   NA                -0.7915646   -1.8697618    0.2866325
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.0182863   -0.4376112    0.4741838
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0268384   -0.2180131    0.1643362
Birth       ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0942866   -0.1802101   -0.0083631
Birth       ki1135781-COHORTS          INDIA                          4+                   NA                -0.2769469   -0.4210215   -0.1328722
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.2860271   -0.3542806   -0.2177736
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0541974   -0.1660671    0.2744619
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.1561370   -0.6800728    0.3677988
6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.1752282   -0.4354076    0.0849512
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0587550   -0.1606256    0.0431157
6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0258329   -0.0823465    0.1340124
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0160016   -0.0479842    0.0799874
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0138939   -0.1509436    0.1231558
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.1801173   -0.7379463    0.3777116
6 months    ki1000108-IRC              INDIA                          4+                   NA                -0.2607031   -1.0330932    0.5116870
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.2948840   -0.6874486    0.0976805
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0892228   -0.2542262    0.0757806
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0366729   -0.1188737    0.0455280
6 months    ki1114097-CONTENT          PERU                           4+                   NA                 0.0009270   -0.2341955    0.2360495
6 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.5801098   -0.6926653   -0.4675543
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.2762160   -0.3522079   -0.2002241
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.2285619   -0.4155569   -0.0415669
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.4440561   -0.9301956    0.0420834
24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0647284   -0.3582974    0.2288407
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0338548   -0.1403811    0.0726715
24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0132492   -0.1223207    0.0958222
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0017499   -0.0725107    0.0760105
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0733158   -0.2199439    0.0733122
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2119216   -0.6382170    0.2143737
24 months   ki1000108-IRC              INDIA                          4+                   NA                 0.1017143   -0.4065047    0.6099334
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.6440718   -1.1086675   -0.1794760
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.2485292   -0.4205752   -0.0764832
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0923269   -0.1819923   -0.0026615
24 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.1283783   -0.3476603    0.0909038
24 months   ki1135781-COHORTS          INDIA                          4+                   NA                -0.9277239   -1.0928256   -0.7626222
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.3249948   -0.4366830   -0.2133065
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.3564036   -0.5164934   -0.1963138

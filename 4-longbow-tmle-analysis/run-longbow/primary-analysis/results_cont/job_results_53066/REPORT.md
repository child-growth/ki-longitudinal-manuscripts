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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+          1104   26638
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1          15827   26638
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           7166   26638
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3           2541   26638
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+           739   16742
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           9598   16742
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           4717   16742
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3           1688   16742
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+           364    8553
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           5013    8553
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           2382    8553
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3            794    8553
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
![](/tmp/a310281e-5636-4c10-a6a5-f8f348a57590/f7702efc-18fe-49f6-8496-69e294799dd9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a310281e-5636-4c10-a6a5-f8f348a57590/f7702efc-18fe-49f6-8496-69e294799dd9/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a310281e-5636-4c10-a6a5-f8f348a57590/f7702efc-18fe-49f6-8496-69e294799dd9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.3579455   -0.9163329    0.2004420
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.1350547   -1.3168851   -0.9532243
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -1.0727162   -1.3767885   -0.7686440
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.8827783   -1.2100568   -0.5554999
Birth       ki0047075b-MAL-ED          PERU                           4+                   NA                -0.8423307   -1.0416458   -0.6430156
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -1.0236287   -1.5148692   -0.5323883
Birth       ki0047075b-MAL-ED          PERU                           2                    NA                -0.9803035   -1.1983209   -0.7622861
Birth       ki0047075b-MAL-ED          PERU                           3                    NA                -0.9573044   -1.1647417   -0.7498671
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
Birth       ki1000108-IRC              INDIA                          4+                   NA                 0.5638725   -0.3772118    1.5049568
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.2693006   -0.5068840   -0.0317171
Birth       ki1000108-IRC              INDIA                          2                    NA                -0.3884262   -0.6478353   -0.1290172
Birth       ki1000108-IRC              INDIA                          3                    NA                -0.3816228   -0.8927135    0.1294680
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.8110087   -1.2693390   -0.3526783
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.8729046   -0.9591143   -0.7866950
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.9252872   -1.1383851   -0.7121894
Birth       ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.8341429   -1.0754689   -0.5928170
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.8405889   -1.0463663   -0.6348115
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.9706458   -1.0697319   -0.8715598
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.8939035   -1.0516334   -0.7361736
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.8163533   -1.0134711   -0.6192356
Birth       ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.9884884   -1.1063131   -0.8706638
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.3089218   -1.6191511   -0.9986926
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.1579576   -1.3304515   -0.9854636
Birth       ki1113344-GMS-Nepal        NEPAL                          3                    NA                -1.1381933   -1.2909048   -0.9854819
Birth       ki1135781-COHORTS          INDIA                          4+                   NA                -0.3721234   -0.5198322   -0.2244145
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.7634196   -0.8050750   -0.7217642
Birth       ki1135781-COHORTS          INDIA                          2                    NA                -0.5256141   -0.5918103   -0.4594179
Birth       ki1135781-COHORTS          INDIA                          3                    NA                -0.4406739   -0.6128298   -0.2685180
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.5866695   -0.6856877   -0.4876514
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.2839874   -1.3182596   -1.2497151
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.1351753   -1.1820417   -1.0883089
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.9284882   -1.0125176   -0.8444588
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -1.5743895   -1.7989060   -1.3498731
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.5767351   -1.6400867   -1.5133835
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -1.4537173   -1.5507095   -1.3567252
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -1.3496016   -1.5043251   -1.1948780
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.9618371   -1.4524242   -0.4712500
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.2426444   -1.3844434   -1.1008454
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -1.2551186   -1.5807848   -0.9294524
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -1.0353298   -1.3235438   -0.7471157
6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.9497505   -1.2138246   -0.6856764
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -1.1035071   -1.3190867   -0.8879275
6 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -1.4311734   -1.6414211   -1.2209257
6 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -1.0651395   -1.3018365   -0.8284424
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.5061248   -0.6570391   -0.3552106
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.6421884   -0.8981429   -0.3862339
6 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.6688141   -0.9760578   -0.3615703
6 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.5625833   -0.9600424   -0.1651241
6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                -1.3484515   -1.5090382   -1.1878647
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -1.6388633   -2.0821656   -1.1955610
6 months    ki0047075b-MAL-ED          PERU                           2                    NA                -1.2348860   -1.4952737   -0.9744983
6 months    ki0047075b-MAL-ED          PERU                           3                    NA                -1.2719477   -1.4810327   -1.0628627
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -1.0749525   -1.2318010   -0.9181039
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.2248109   -1.7641301   -0.6854916
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.7600511   -1.1827728   -0.3373294
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.9586231   -1.2791617   -0.6380845
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -1.3642048   -1.5323157   -1.1960940
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3701755   -2.1041474   -0.6362035
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -1.4742788   -1.7629156   -1.1856419
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -1.2410030   -1.4559844   -1.0260217
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -1.0919467   -1.6807748   -0.5031185
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.3673375   -1.5477703   -1.1869047
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -1.5845327   -1.8725889   -1.2964764
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -1.2439460   -1.7146715   -0.7732205
6 months    ki1000108-IRC              INDIA                          4+                   NA                -0.9166897   -1.8169593   -0.0164202
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.2290249   -1.4264833   -1.0315664
6 months    ki1000108-IRC              INDIA                          2                    NA                -1.2779680   -1.4772164   -1.0787196
6 months    ki1000108-IRC              INDIA                          3                    NA                -1.3003513   -1.7699904   -0.8307123
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.9034403   -1.3315900   -0.4752906
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.1329748   -1.2214018   -1.0445479
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.0140605   -1.2056358   -0.8224853
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.9963319   -1.2329013   -0.7597624
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -1.1058934   -1.2829957   -0.9287911
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.2865618   -1.3910278   -1.1820957
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -1.2273265   -1.3758075   -1.0788454
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.9274879   -1.1180694   -0.7369065
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -1.3153224   -1.4271691   -1.2034758
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.6788242   -1.9927099   -1.3649386
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.4186116   -1.5993136   -1.2379096
6 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                -1.3448017   -1.4976222   -1.1919813
6 months    ki1114097-CONTENT          PERU                           4+                   NA                -0.3367775   -0.6343014   -0.0392535
6 months    ki1114097-CONTENT          PERU                           1                    NA                -0.5209693   -0.9366184   -0.1053201
6 months    ki1114097-CONTENT          PERU                           2                    NA                -0.1634810   -0.5027013    0.1757392
6 months    ki1114097-CONTENT          PERU                           3                    NA                -0.2374406   -0.6482898    0.1734087
6 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.4986744   -0.6083544   -0.3889944
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -1.2006826   -1.2430488   -1.1583164
6 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.7712584   -0.8314716   -0.7110451
6 months    ki1135781-COHORTS          INDIA                          3                    NA                -0.6942524   -0.8564711   -0.5320338
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -1.0622325   -1.1370778   -0.9873873
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3774902   -1.4053148   -1.3496656
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.3216191   -1.3617637   -1.2814746
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.2153385   -1.2741657   -1.1565113
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -1.1173111   -1.3111615   -0.9234606
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.4077572   -1.4538161   -1.3616983
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -1.3001309   -1.3694641   -1.2307976
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -1.2001223   -1.3026667   -1.0975780
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -1.6301794   -2.1214146   -1.1389442
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -2.0656369   -2.2231321   -1.9081416
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -1.9597597   -2.2835822   -1.6359371
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -1.8463817   -2.1321605   -1.5606030
24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -1.8105458   -2.1212602   -1.4998315
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -1.7445908   -1.9635178   -1.5256639
24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -2.0874877   -2.3033492   -1.8716263
24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -1.8399073   -2.0807916   -1.5990231
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -1.2857260   -1.4454014   -1.1260507
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.3616208   -1.5951867   -1.1280548
24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -1.2415505   -1.5595369   -0.9235640
24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -1.4182423   -1.9140373   -0.9224474
24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -1.7203787   -1.8948172   -1.5459402
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -2.0620914   -2.5201799   -1.6040029
24 months   ki0047075b-MAL-ED          PERU                           2                    NA                -1.6320470   -1.9009625   -1.3631316
24 months   ki0047075b-MAL-ED          PERU                           3                    NA                -1.7098862   -1.9580899   -1.4616824
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -1.6430747   -1.7954457   -1.4907037
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.8281928   -2.4757501   -1.1806354
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -1.2279463   -1.7331304   -0.7227622
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -1.7989320   -2.3036778   -1.2941861
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -2.5713776   -2.7670179   -2.3757372
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.5316667   -3.4733393   -1.5899941
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -3.0096000   -3.2841137   -2.7350863
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -2.4702632   -2.7008840   -2.2396423
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -2.2762822   -2.7066945   -1.8458700
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.6602706   -2.7963472   -2.5241940
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -2.4931502   -2.6771073   -2.3091931
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -2.4120151   -2.7036187   -2.1204114
24 months   ki1000108-IRC              INDIA                          4+                   NA                -1.9859037   -2.5647142   -1.4070931
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.8695195   -2.0135218   -1.7255171
24 months   ki1000108-IRC              INDIA                          2                    NA                -1.6618953   -1.8056595   -1.5181311
24 months   ki1000108-IRC              INDIA                          3                    NA                -2.0460231   -2.2961212   -1.7959249
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -1.0165670   -1.5031710   -0.5299630
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.6746572   -1.7713146   -1.5779998
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.4899226   -1.7112071   -1.2686380
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -1.4808806   -1.7240533   -1.2377080
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -1.2140470   -1.3879033   -1.0401907
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.5545221   -1.6842257   -1.4248185
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -1.5971875   -1.7667469   -1.4276281
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -1.0487125   -1.2485535   -0.8488714
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -1.7968744   -1.9205923   -1.6731566
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -2.2440659   -2.5699452   -1.9181867
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.9748123   -2.1515394   -1.7980852
24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                -1.8714124   -2.0529613   -1.6898634
24 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.6079491   -0.8727634   -0.3431348
24 months   ki1114097-CONTENT          PERU                           1                    NA                -1.0931953   -1.5007318   -0.6856587
24 months   ki1114097-CONTENT          PERU                           2                    NA                -0.6753003   -1.0485383   -0.3020623
24 months   ki1114097-CONTENT          PERU                           3                    NA                -0.6881349   -1.0682912   -0.3079785
24 months   ki1135781-COHORTS          INDIA                          4+                   NA                -1.2691466   -1.4363194   -1.1019737
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -2.4573294   -2.5084113   -2.4062475
24 months   ki1135781-COHORTS          INDIA                          2                    NA                -1.8711839   -1.9389722   -1.8033956
24 months   ki1135781-COHORTS          INDIA                          3                    NA                -1.7413657   -1.9402402   -1.5424912
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -1.6879803   -1.8060531   -1.5699074
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.0711108   -2.1060715   -2.0361502
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -2.0028874   -2.0550638   -1.9507111
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.8745870   -1.9559300   -1.7932441
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -1.4250728   -1.5941715   -1.2559741
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.8659728   -1.9098348   -1.8221108
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -1.7437711   -1.8067977   -1.6807445
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -1.5647945   -1.6602056   -1.4693833


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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.1730044   -1.2010793   -1.1449294
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5236135   -1.5727559   -1.4744711
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2031806   -1.3209873   -1.0853738
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2069078   -1.3255669   -1.0882487
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3293333   -1.4383829   -1.2202838
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0554016   -1.1850591   -0.9257441
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2470123   -1.3779341   -1.1160906
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3508392   -1.4290633   -1.2726152
6 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.3139217   -0.4868486   -0.1409948
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -1.0413281   -1.0740395   -1.0086167
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3357956   -1.3588816   -1.3127096
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3440477   -1.3813060   -1.3067894
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8848458   -2.0096941   -1.7599975
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3118640   -1.4315132   -1.1922149
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7544776   -1.8753255   -1.6336298
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6491807   -1.7842885   -1.5140729
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6451636   -2.7802323   -2.5100948
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.8014906   -1.8952579   -1.7077232
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8874180   -1.9728588   -1.8019773
24 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.6962195   -0.8674103   -0.5250287
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.2131714   -2.2523749   -2.1739679
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0196832   -2.0473250   -1.9920413
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7803708   -1.8158650   -1.7448765


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.7771092   -1.3651487   -0.1890697
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.7147708   -1.3512814   -0.0782602
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.5248329   -1.1719422    0.1222764
Birth       ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    4+                -0.1812980   -0.7104387    0.3478426
Birth       ki0047075b-MAL-ED          PERU                           2                    4+                -0.1379728   -0.4343734    0.1584278
Birth       ki0047075b-MAL-ED          PERU                           3                    4+                -0.1149737   -0.4001883    0.1702408
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
Birth       ki1000108-IRC              INDIA                          1                    4+                -0.8331731   -1.8041660    0.1378198
Birth       ki1000108-IRC              INDIA                          2                    4+                -0.9522988   -1.9296203    0.0250228
Birth       ki1000108-IRC              INDIA                          3                    4+                -0.9454953   -2.0229095    0.1319189
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0618960   -0.5292094    0.4054175
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.1142786   -0.6216765    0.3931193
Birth       ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0231343   -0.5427950    0.4965265
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.1300569   -0.3586239    0.0985100
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0533146   -0.3128389    0.2062097
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.0242355   -0.2608302    0.3093012
Birth       ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.3204334   -0.6513013    0.0104345
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.1694691   -0.3789969    0.0400586
Birth       ki1113344-GMS-Nepal        NEPAL                          3                    4+                -0.1497049   -0.3408764    0.0414666
Birth       ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    4+                -0.3912962   -0.5446207   -0.2379717
Birth       ki1135781-COHORTS          INDIA                          2                    4+                -0.1534907   -0.3151574    0.0081760
Birth       ki1135781-COHORTS          INDIA                          3                    4+                -0.0685505   -0.2952499    0.1581489
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.6973178   -0.7980980   -0.5965377
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.5485058   -0.6541961   -0.4428155
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.3418186   -0.4653049   -0.2183323
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.0023455   -0.2337144    0.2290233
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                 0.1206722   -0.1235757    0.3649201
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                 0.2247880   -0.0509314    0.5005074
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.2808073   -0.7919753    0.2303607
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.2932815   -0.8827822    0.2962193
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.0734927   -0.6437986    0.4968133
6 months    ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    4+                -0.1537566   -0.4951487    0.1876354
6 months    ki0047075b-MAL-ED          INDIA                          2                    4+                -0.4814229   -0.8192329   -0.1436129
6 months    ki0047075b-MAL-ED          INDIA                          3                    4+                -0.1153890   -0.4699224    0.2391444
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.1360636   -0.4332638    0.1611367
6 months    ki0047075b-MAL-ED          NEPAL                          2                    4+                -0.1626892   -0.5049700    0.1795915
6 months    ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.0564584   -0.4816758    0.3687590
6 months    ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    4+                -0.2904118   -0.7623417    0.1815180
6 months    ki0047075b-MAL-ED          PERU                           2                    4+                 0.1135654   -0.1930727    0.4202036
6 months    ki0047075b-MAL-ED          PERU                           3                    4+                 0.0765038   -0.1870228    0.3400303
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.1498584   -0.7104964    0.4107796
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.3149014   -0.1350361    0.7648388
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                 0.1163294   -0.2383792    0.4710380
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0059707   -0.7592192    0.7472779
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.1100739   -0.4444281    0.2242803
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.1232018   -0.1498545    0.3962581
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.2753908   -0.8908648    0.3400831
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.4925860   -1.1500580    0.1648860
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.1519993   -0.9046801    0.6006815
6 months    ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    4+                -0.3123351   -1.2349546    0.6102843
6 months    ki1000108-IRC              INDIA                          2                    4+                -0.3612783   -1.2832838    0.5607272
6 months    ki1000108-IRC              INDIA                          3                    4+                -0.3836616   -1.3992537    0.6319304
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.2295346   -0.6668011    0.2077320
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.1106202   -0.5797617    0.3585212
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0928916   -0.5821041    0.3963209
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.1806684   -0.3863719    0.0250352
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.1214331   -0.3525770    0.1097108
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.1784055   -0.0818545    0.4386654
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.3635018   -0.6969791   -0.0300245
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.1032892   -0.3155494    0.1089711
6 months    ki1113344-GMS-Nepal        NEPAL                          3                    4+                -0.0294793   -0.2187623    0.1598037
6 months    ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           1                    4+                -0.1841918   -0.6976136    0.3292300
6 months    ki1114097-CONTENT          PERU                           2                    4+                 0.1732965   -0.2786121    0.6252050
6 months    ki1114097-CONTENT          PERU                           3                    4+                 0.0993369   -0.4082970    0.6069708
6 months    ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    4+                -0.7020082   -0.8194749   -0.5845414
6 months    ki1135781-COHORTS          INDIA                          2                    4+                -0.2725839   -0.3975462   -0.1476217
6 months    ki1135781-COHORTS          INDIA                          3                    4+                -0.1955780   -0.3913692    0.0002131
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.3152577   -0.3948928   -0.2356226
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.2593866   -0.3437207   -0.1750525
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.1531060   -0.2454376   -0.0607743
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.2904461   -0.4894156   -0.0914766
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.1828198   -0.3891911    0.0235514
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.0828113   -0.3000926    0.1344700
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.4354575   -0.9503729    0.0794580
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.3295803   -0.9186958    0.2595353
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.2162024   -0.7849862    0.3525815
24 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    4+                 0.0659550   -0.3131458    0.4450557
24 months   ki0047075b-MAL-ED          INDIA                          2                    4+                -0.2769419   -0.6527594    0.0988755
24 months   ki0047075b-MAL-ED          INDIA                          3                    4+                -0.0293615   -0.4214485    0.3627254
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.0758947   -0.3585123    0.2067229
24 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.0441756   -0.3108711    0.3992222
24 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.1325163   -0.6533227    0.3882901
24 months   ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    4+                -0.3417127   -0.8299448    0.1465193
24 months   ki0047075b-MAL-ED          PERU                           2                    4+                 0.0883316   -0.2313825    0.4080457
24 months   ki0047075b-MAL-ED          PERU                           3                    4+                 0.0104925   -0.2938085    0.3147936
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.1851180   -0.8499992    0.4797631
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.4151285   -0.1132150    0.9434719
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.1558572   -0.6856481    0.3739336
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0397109   -0.9220700    1.0014918
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.4382224   -0.7753173   -0.1011276
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.1011144   -0.2013110    0.4035398
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.3839884   -0.8350676    0.0670909
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.2168679   -0.6847527    0.2510168
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.1357328   -0.6557941    0.3843284
24 months   ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    4+                 0.1163842   -0.4802106    0.7129791
24 months   ki1000108-IRC              INDIA                          2                    4+                 0.3240084   -0.2724344    0.9204512
24 months   ki1000108-IRC              INDIA                          3                    4+                -0.0601194   -0.6905596    0.5703208
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.6580902   -1.1542267   -0.1619538
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.4733556   -1.0073924    0.0606812
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.4643137   -1.0081115    0.0794841
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.3404751   -0.5564382   -0.1245121
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.3831405   -0.6250264   -0.1412547
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.1653345   -0.0997514    0.4304204
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.4471915   -0.7957750   -0.0986081
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.1779379   -0.3934703    0.0375945
24 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                -0.0745380   -0.2943201    0.1452442
24 months   ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           1                    4+                -0.4852462   -0.9689429   -0.0015495
24 months   ki1114097-CONTENT          PERU                           2                    4+                -0.0673512   -0.5242350    0.3895325
24 months   ki1114097-CONTENT          PERU                           3                    4+                -0.0801858   -0.5409642    0.3805926
24 months   ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    4+                -1.1881828   -1.3629518   -1.0134138
24 months   ki1135781-COHORTS          INDIA                          2                    4+                -0.6020373   -0.7824458   -0.4216288
24 months   ki1135781-COHORTS          INDIA                          3                    4+                -0.4722191   -0.7319908   -0.2124474
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.3831306   -0.5024351   -0.2638260
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.3149072   -0.4358854   -0.1939289
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.1866067   -0.3281702   -0.0450433
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.4409001   -0.6134845   -0.2683156
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.3186983   -0.4997697   -0.1376270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.1397217   -0.3319735    0.0525301


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.6951062   -1.2404835   -0.1497288
Birth       ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0718088   -0.1942535    0.0506358
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0835899   -0.2035080    0.0363283
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.1342347   -0.1139344    0.3824038
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0871957   -0.6936048    0.5192134
Birth       ki1000108-IRC              INDIA                          4+                   NA                -0.8717741   -1.7888857    0.0453375
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0740934   -0.5242858    0.3760990
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0689057   -0.2616437    0.1238324
Birth       ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0966696   -0.1825161   -0.0108231
Birth       ki1135781-COHORTS          INDIA                          4+                   NA                -0.3056393   -0.4527891   -0.1584894
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.5863348   -0.6800964   -0.4925732
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0507761   -0.1680386    0.2695907
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.2413434   -0.7238113    0.2411244
6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.2571573   -0.5219085    0.0075939
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0549345   -0.1566747    0.0468057
6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0191181   -0.0890626    0.1272988
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0195509   -0.0443439    0.0834456
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0045401   -0.1411299    0.1320496
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.3315041   -0.9184588    0.2554506
6 months    ki1000108-IRC              INDIA                          4+                   NA                -0.3303226   -1.2087476    0.5481024
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.1882512   -0.6093429    0.2328404
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0927849   -0.2621680    0.0765981
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0355168   -0.1178774    0.0468438
6 months    ki1114097-CONTENT          PERU                           4+                   NA                 0.0228558   -0.2137158    0.2594273
6 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.5426536   -0.6539357   -0.4313716
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.2735631   -0.3483945   -0.1987317
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.2267366   -0.4135485   -0.0399247
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.3487357   -0.8338360    0.1363646
24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0743000   -0.3742311    0.2256311
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0261380   -0.1331181    0.0808420
24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0340989   -0.1439002    0.0757024
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0061059   -0.0829711    0.0707593
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0737860   -0.2202885    0.0727165
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2825857   -0.7105818    0.1454105
24 months   ki1000108-IRC              INDIA                          4+                   NA                 0.1844131   -0.3807896    0.7496158
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.5858552   -1.0618069   -0.1099034
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.2272176   -0.3921832   -0.0622521
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0905436   -0.1813186    0.0002314
24 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.0882704   -0.2996133    0.1230724
24 months   ki1135781-COHORTS          INDIA                          4+                   NA                -0.9440248   -1.1110706   -0.7769790
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.3317029   -0.4448318   -0.2185739
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.3552980   -0.5177167   -0.1928793

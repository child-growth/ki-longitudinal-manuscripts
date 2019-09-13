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
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+            12     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            144     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     2             50     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     3             28     234
Birth       ki0047075b-MAL-ED          BRAZIL                         4+           102     174
Birth       ki0047075b-MAL-ED          BRAZIL                         1              3     174
Birth       ki0047075b-MAL-ED          BRAZIL                         2             19     174
Birth       ki0047075b-MAL-ED          BRAZIL                         3             50     174
Birth       ki0047075b-MAL-ED          INDIA                          4+            22     191
Birth       ki0047075b-MAL-ED          INDIA                          1             69     191
Birth       ki0047075b-MAL-ED          INDIA                          2             68     191
Birth       ki0047075b-MAL-ED          INDIA                          3             32     191
Birth       ki0047075b-MAL-ED          NEPAL                          4+            97     171
Birth       ki0047075b-MAL-ED          NEPAL                          1             36     171
Birth       ki0047075b-MAL-ED          NEPAL                          2             21     171
Birth       ki0047075b-MAL-ED          NEPAL                          3             17     171
Birth       ki0047075b-MAL-ED          PERU                           4+           132     259
Birth       ki0047075b-MAL-ED          PERU                           1             17     259
Birth       ki0047075b-MAL-ED          PERU                           2             51     259
Birth       ki0047075b-MAL-ED          PERU                           3             59     259
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+           160     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1             14     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2             21     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     218
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            55     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             24     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             33     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+             5      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             38      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2             28      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3             19      90
Birth       ki1000108-IRC              INDIA                          4+            17     386
Birth       ki1000108-IRC              INDIA                          1            175     386
Birth       ki1000108-IRC              INDIA                          2            161     386
Birth       ki1000108-IRC              INDIA                          3             33     386
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+             3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1             17      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2              7      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3              0      27
Birth       ki1114097-CONTENT          PERU                           4+             1       2
Birth       ki1114097-CONTENT          PERU                           1              0       2
Birth       ki1114097-CONTENT          PERU                           2              1       2
Birth       ki1114097-CONTENT          PERU                           3              0       2
Birth       ki1135781-COHORTS          INDIA                          4+            92    4769
Birth       ki1135781-COHORTS          INDIA                          1           3125    4769
Birth       ki1135781-COHORTS          INDIA                          2           1385    4769
Birth       ki1135781-COHORTS          INDIA                          3            167    4769
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+           584   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1          12327   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           5117   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3           1561   19589
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+            26     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            506     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2            207     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3             83     822
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+            21     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            415     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2             91     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3             56     583
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
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            201     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2            106     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             51     372
24 months   ki1000108-IRC              INDIA                          4+            17     407
24 months   ki1000108-IRC              INDIA                          1            184     407
24 months   ki1000108-IRC              INDIA                          2            170     407
24 months   ki1000108-IRC              INDIA                          3             36     407
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+            22     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            406     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2             92     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3             57     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            82     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            217     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            137     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             78     514
24 months   ki1113344-GMS-Nepal        NEPAL                          4+           237     499
24 months   ki1113344-GMS-Nepal        NEPAL                          1             36     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2            108     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3            118     499
24 months   ki1114097-CONTENT          PERU                           4+            63     164
24 months   ki1114097-CONTENT          PERU                           1             30     164
24 months   ki1114097-CONTENT          PERU                           2             39     164
24 months   ki1114097-CONTENT          PERU                           3             32     164
24 months   ki1135781-COHORTS          INDIA                          4+            76    3749
24 months   ki1135781-COHORTS          INDIA                          1           2302    3749
24 months   ki1135781-COHORTS          INDIA                          2           1221    3749
24 months   ki1135781-COHORTS          INDIA                          3            150    3749
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
![](/tmp/c506709a-0350-49d6-9734-c07eed974d93/7d371b2a-d294-4523-82b4-1c7236379744/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c506709a-0350-49d6-9734-c07eed974d93/7d371b2a-d294-4523-82b4-1c7236379744/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c506709a-0350-49d6-9734-c07eed974d93/7d371b2a-d294-4523-82b4-1c7236379744/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.4328897   -0.9929092    0.1271299
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.1003585   -1.2674364   -0.9332806
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -1.0668947   -1.3525751   -0.7812143
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.9271772   -1.2333882   -0.6209663
Birth       ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.5969748   -1.0066468   -0.1873028
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -0.8206460   -1.0439294   -0.5973626
Birth       ki0047075b-MAL-ED          INDIA                          2                    NA                -1.2719301   -1.5358714   -1.0079888
Birth       ki0047075b-MAL-ED          INDIA                          3                    NA                -0.9164917   -1.2479648   -0.5850185
Birth       ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.6586519   -0.8686085   -0.4486953
Birth       ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.5980463   -0.9928171   -0.2032756
Birth       ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.6184347   -0.9995644   -0.2373050
Birth       ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.5968129   -1.1636078   -0.0300179
Birth       ki0047075b-MAL-ED          PERU                           4+                   NA                -0.8789631   -1.0589209   -0.6990052
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -0.9259074   -1.3119338   -0.5398810
Birth       ki0047075b-MAL-ED          PERU                           2                    NA                -1.0076931   -1.2287254   -0.7866607
Birth       ki0047075b-MAL-ED          PERU                           3                    NA                -0.9980068   -1.2206835   -0.7753300
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.7277272   -0.8879568   -0.5674977
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.3433271   -0.7562710    0.0696169
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.7129864   -1.2665429   -0.1594298
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.6907194   -1.0747712   -0.3066677
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.8570909   -1.1055082   -0.6086736
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.7483333   -1.2065156   -0.2901510
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -1.2562500   -1.8386352   -0.6738648
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.6721212   -1.0804186   -0.2638238
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.8740000   -1.4740637   -0.2739363
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.8934211   -1.2443816   -0.5424605
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -1.0532143   -1.3981109   -0.7083176
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -1.0042105   -1.4477729   -0.5606481
Birth       ki1000108-IRC              INDIA                          4+                   NA                 0.3935304   -0.5185836    1.3056444
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.2697778   -0.5067684   -0.0327872
Birth       ki1000108-IRC              INDIA                          2                    NA                -0.3974587   -0.6532250   -0.1416925
Birth       ki1000108-IRC              INDIA                          3                    NA                -0.3785375   -0.9149525    0.1578775
Birth       ki1135781-COHORTS          INDIA                          4+                   NA                -0.3833199   -0.5369940   -0.2296457
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.7661238   -0.8075414   -0.7247062
Birth       ki1135781-COHORTS          INDIA                          2                    NA                -0.5236864   -0.5889404   -0.4584325
Birth       ki1135781-COHORTS          INDIA                          3                    NA                -0.4590937   -0.6347525   -0.2834348
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -1.3010142   -1.3758528   -1.2261756
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.6137476   -1.6379225   -1.5895728
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.5551117   -1.5958526   -1.5143708
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.4476190   -1.5189994   -1.3762386
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -1.8813060   -2.6036314   -1.1589806
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.5012865   -1.6038666   -1.3987064
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -1.4861873   -1.6666840   -1.3056906
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -1.4384440   -1.6740768   -1.2028113
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.9787214   -1.4634166   -0.4940261
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.2318539   -1.3729150   -1.0907929
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -1.2331200   -1.5500347   -0.9162053
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -1.1114943   -1.3951854   -0.8278032
6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.9836712   -1.2415515   -0.7257909
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -1.1321835   -1.3485288   -0.9158382
6 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -1.4435069   -1.6533978   -1.2336159
6 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -1.1103598   -1.3398937   -0.8808259
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.5061735   -0.6575822   -0.3547648
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.6268310   -0.8790536   -0.3746084
6 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.6810994   -1.0004272   -0.3617716
6 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.5622427   -0.9806498   -0.1438357
6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                -1.3486902   -1.5085524   -1.1888280
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -1.6375843   -2.0582051   -1.2169635
6 months    ki0047075b-MAL-ED          PERU                           2                    NA                -1.2190659   -1.4704208   -0.9677109
6 months    ki0047075b-MAL-ED          PERU                           3                    NA                -1.2827283   -1.4892405   -1.0762162
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -1.0667189   -1.2242538   -0.9091840
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.2600073   -1.7561644   -0.7638502
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.8473185   -1.2513406   -0.4432964
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -1.0355062   -1.3652087   -0.7058037
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -1.3752958   -1.5417076   -1.2088839
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.6495082   -2.3217208   -0.9772956
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -1.5170874   -1.8043836   -1.2297912
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -1.2836879   -1.5049724   -1.0624034
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -1.2794231   -1.9252206   -0.6336255
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.3754135   -1.5542004   -1.1966267
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -1.5906826   -1.8772891   -1.3040760
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -1.2978171   -1.7650943   -0.8305400
6 months    ki1000108-IRC              INDIA                          4+                   NA                -1.0208079   -1.8324696   -0.2091462
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.2263121   -1.4204783   -1.0321459
6 months    ki1000108-IRC              INDIA                          2                    NA                -1.2846337   -1.4847810   -1.0844865
6 months    ki1000108-IRC              INDIA                          3                    NA                -1.0422867   -1.5127079   -0.5718655
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.9743984   -1.4067313   -0.5420655
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.1283007   -1.2192593   -1.0373421
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.0122167   -1.2118837   -0.8125497
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -1.0142484   -1.2536324   -0.7748644
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -1.1032080   -1.2777104   -0.9287057
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.2876632   -1.3932971   -1.1820294
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -1.2217683   -1.3676084   -1.0759282
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.9103236   -1.0983610   -0.7222862
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -1.2949622   -1.4063462   -1.1835782
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.5556249   -1.8713150   -1.2399347
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.3727144   -1.5544636   -1.1909652
6 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                -1.2990321   -1.4515884   -1.1464758
6 months    ki1114097-CONTENT          PERU                           4+                   NA                -0.3259945   -0.6268730   -0.0251160
6 months    ki1114097-CONTENT          PERU                           1                    NA                -0.5132365   -0.9403991   -0.0860738
6 months    ki1114097-CONTENT          PERU                           2                    NA                -0.1653602   -0.5186353    0.1879149
6 months    ki1114097-CONTENT          PERU                           3                    NA                -0.2329239   -0.6466929    0.1808451
6 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.4998805   -0.6128610   -0.3869000
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -1.2042082   -1.2461761   -1.1622403
6 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.7561745   -0.8158898   -0.6964592
6 months    ki1135781-COHORTS          INDIA                          3                    NA                -0.7000013   -0.8640824   -0.5359202
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -1.0310183   -1.1063233   -0.9557133
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3624776   -1.3901984   -1.3347567
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.3030798   -1.3437218   -1.2624377
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.1900156   -1.2490256   -1.1310056
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -1.1062651   -1.2990035   -0.9135268
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.4064453   -1.4524182   -1.3604724
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -1.2996788   -1.3686349   -1.2307226
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -1.1949349   -1.2977810   -1.0920889
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -1.7659919   -2.3522567   -1.1797270
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -2.0338857   -2.1919496   -1.8758219
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -1.9646236   -2.2919963   -1.6372510
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -1.7744890   -2.0652441   -1.4837338
24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -1.8302080   -2.1614437   -1.4989724
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -1.7067821   -1.9345673   -1.4789969
24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -2.0610028   -2.2852842   -1.8367214
24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -1.7901690   -2.0413562   -1.5389818
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -1.2382621   -1.4001412   -1.0763830
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.3277531   -1.5619470   -1.0935593
24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -1.1082797   -1.4529130   -0.7636464
24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -1.3542257   -1.8331000   -0.8753514
24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -1.7235415   -1.8962776   -1.5508055
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -2.0620884   -2.5158454   -1.6083314
24 months   ki0047075b-MAL-ED          PERU                           2                    NA                -1.6648454   -1.9265541   -1.4031368
24 months   ki0047075b-MAL-ED          PERU                           3                    NA                -1.6941672   -1.9340496   -1.4542848
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -1.6069530   -1.7576237   -1.4562824
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.9362361   -2.6606114   -1.2118609
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -1.1562688   -1.6286103   -0.6839272
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -1.7167303   -2.2556887   -1.1777719
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -2.5506633   -2.7447519   -2.3565746
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.4716667   -3.4064630   -1.5368703
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -2.9494000   -3.2231428   -2.6756572
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -2.4207018   -2.6530710   -2.1883325
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -2.1694058   -2.6538082   -1.6850033
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.6527975   -2.7890798   -2.5165152
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -2.5202637   -2.7125936   -2.3279338
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -2.3907050   -2.6784209   -2.1029891
24 months   ki1000108-IRC              INDIA                          4+                   NA                -2.0018105   -2.5397186   -1.4639023
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.8594543   -2.0039665   -1.7149421
24 months   ki1000108-IRC              INDIA                          2                    NA                -1.6458807   -1.7894857   -1.5022757
24 months   ki1000108-IRC              INDIA                          3                    NA                -2.0329661   -2.3009498   -1.7649824
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.9396879   -1.4012434   -0.4781323
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.6730685   -1.7703685   -1.5757685
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.4788051   -1.6983761   -1.2592342
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -1.3945740   -1.6390320   -1.1501159
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -1.2285810   -1.4193170   -1.0378450
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.5341489   -1.6645303   -1.4037675
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -1.5920656   -1.7583793   -1.4257519
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -1.0695472   -1.2655438   -0.8735505
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -1.7978981   -1.9193137   -1.6764824
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -2.2138059   -2.5293813   -1.8982305
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.9971203   -2.1718430   -1.8223977
24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                -1.8487721   -2.0237694   -1.6737748
24 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.5886718   -0.8590243   -0.3183193
24 months   ki1114097-CONTENT          PERU                           1                    NA                -1.0445402   -1.4403268   -0.6487535
24 months   ki1114097-CONTENT          PERU                           2                    NA                -0.6713149   -1.0469248   -0.2957050
24 months   ki1114097-CONTENT          PERU                           3                    NA                -0.6421312   -0.9936486   -0.2906137
24 months   ki1135781-COHORTS          INDIA                          4+                   NA                -1.0726903   -1.2317988   -0.9135818
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -2.2387290   -2.2898974   -2.1875606
24 months   ki1135781-COHORTS          INDIA                          2                    NA                -1.6550262   -1.7227713   -1.5872811
24 months   ki1135781-COHORTS          INDIA                          3                    NA                -1.5228838   -1.7207453   -1.3250224
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -1.6714756   -1.7852822   -1.5576689
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.0705345   -2.1051276   -2.0359415
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.9886226   -2.0399356   -1.9373096
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.8628836   -1.9482627   -1.7775046
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -1.4121595   -1.5761795   -1.2481395
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.8414829   -1.8854639   -1.7975019
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -1.7224358   -1.7847277   -1.6601438
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -1.5500662   -1.6472196   -1.4529128


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0229487   -1.1509575   -0.8949400
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0069634   -1.1525107   -0.8614160
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.6998830   -0.8579049   -0.5418612
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9447876   -1.0604945   -0.8290808
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.6917890   -0.8248091   -0.5587689
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.8810169   -1.0869236   -0.6751103
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3079016   -0.4694769   -0.1463262
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6777626   -0.7107167   -0.6448086
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5751978   -1.5949779   -1.5554177
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2033681   -1.3212429   -1.0854932
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2159433   -1.3345235   -1.0973630
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3280247   -1.4371552   -1.2188942
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0548494   -1.1845497   -0.9251491
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3601215   -1.4821830   -1.2380600
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2470123   -1.3779341   -1.1160906
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3321522   -1.4103691   -1.2539352
6 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.3139217   -0.4868486   -0.1409948
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -1.0413281   -1.0740395   -1.0086167
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3132988   -1.3364412   -1.2901565
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3440477   -1.3813060   -1.3067894
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6058879   -2.7403043   -2.4714714
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7853686   -1.8795723   -1.6911648
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8835905   -1.9681499   -1.7990312
24 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.6962195   -0.8674103   -0.5250287
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.0008909   -2.0401990   -1.9615828
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0127436   -2.0404564   -1.9850309
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7578934   -1.7933205   -1.7224663


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.6674688   -1.2518714   -0.0830662
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.6340050   -1.2635942   -0.0044159
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.4942876   -1.1328444    0.1442692
Birth       ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    4+                -0.2236712   -0.6943506    0.2470083
Birth       ki0047075b-MAL-ED          INDIA                          2                    4+                -0.6749553   -1.1667070   -0.1832035
Birth       ki0047075b-MAL-ED          INDIA                          3                    4+                -0.3195169   -0.8470306    0.2079969
Birth       ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          1                    4+                 0.0606056   -0.3858092    0.5070203
Birth       ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.0402172   -0.3978237    0.4782581
Birth       ki0047075b-MAL-ED          NEPAL                          3                    4+                 0.0618390   -0.5453297    0.6690078
Birth       ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    4+                -0.0469443   -0.4734106    0.3795219
Birth       ki0047075b-MAL-ED          PERU                           2                    4+                -0.1287300   -0.4142886    0.1568286
Birth       ki0047075b-MAL-ED          PERU                           3                    4+                -0.1190437   -0.4066029    0.1685155
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                 0.3844002   -0.0587996    0.8275999
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.0147409   -0.5619538    0.5914355
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                 0.0370078   -0.3791324    0.4531480
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.1087576   -0.4124355    0.6299506
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.3991591   -1.0323128    0.2339946
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.1849697   -0.2929612    0.6629006
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.0194211   -0.7145827    0.6757406
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.1792143   -0.8713343    0.5129057
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.1302105   -0.8764169    0.6159959
Birth       ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    4+                -0.6633082   -1.6042926    0.2776763
Birth       ki1000108-IRC              INDIA                          2                    4+                -0.7909891   -1.7398332    0.1578549
Birth       ki1000108-IRC              INDIA                          3                    4+                -0.7720679   -1.8317794    0.2876436
Birth       ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    4+                -0.3828039   -0.5418271   -0.2237807
Birth       ki1135781-COHORTS          INDIA                          2                    4+                -0.1403666   -0.3071523    0.0264192
Birth       ki1135781-COHORTS          INDIA                          3                    4+                -0.0757738   -0.3090635    0.1575159
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.3127334   -0.3910858   -0.2343811
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.2540975   -0.3390219   -0.1691730
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.1466048   -0.2498733   -0.0433363
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                 0.3800195   -0.3510577    1.1110967
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                 0.3951187   -0.3483582    1.1385955
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                 0.4428620   -0.3252500    1.2109740
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.2531326   -0.7589820    0.2527169
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.2543986   -0.8359395    0.3271423
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.1327729   -0.6970772    0.4315314
6 months    ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    4+                -0.1485123   -0.4866926    0.1896680
6 months    ki0047075b-MAL-ED          INDIA                          2                    4+                -0.4598357   -0.7940585   -0.1256130
6 months    ki0047075b-MAL-ED          INDIA                          3                    4+                -0.1266887   -0.4716359    0.2182586
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.1206575   -0.4151863    0.1738713
6 months    ki0047075b-MAL-ED          NEPAL                          2                    4+                -0.1749259   -0.5283910    0.1785392
6 months    ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.0560692   -0.5010785    0.3889401
6 months    ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    4+                -0.2888941   -0.7391158    0.1613276
6 months    ki0047075b-MAL-ED          PERU                           2                    4+                 0.1296243   -0.1684645    0.4277131
6 months    ki0047075b-MAL-ED          PERU                           3                    4+                 0.0659619   -0.1948538    0.3267775
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.1932884   -0.7144416    0.3278649
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.2194005   -0.2144230    0.6532239
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                 0.0312127   -0.3334541    0.3958795
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.2742124   -0.9671922    0.4187673
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.1417916   -0.4745138    0.1909305
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0916079   -0.1855337    0.3687495
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.0959904   -0.7660851    0.5741042
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.3112595   -1.0185864    0.3960674
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.0183941   -0.8147835    0.7779953
6 months    ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    4+                -0.2055042   -1.0403683    0.6293599
6 months    ki1000108-IRC              INDIA                          2                    4+                -0.2638258   -1.0993798    0.5717282
6 months    ki1000108-IRC              INDIA                          3                    4+                -0.0214788   -0.9607031    0.9177455
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.1539023   -0.5958391    0.2880345
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0378183   -0.5139822    0.4383456
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0398500   -0.5341405    0.4544405
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.1844552   -0.3886303    0.0197199
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.1185603   -0.3461103    0.1089897
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.1928844   -0.0634998    0.4492687
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.2606627   -0.5956186    0.0742932
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.0777522   -0.2909614    0.1354569
6 months    ki1113344-GMS-Nepal        NEPAL                          3                    4+                -0.0040699   -0.1930863    0.1849465
6 months    ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           1                    4+                -0.1872420   -0.7130757    0.3385917
6 months    ki1114097-CONTENT          PERU                           2                    4+                 0.1606342   -0.3043998    0.6256683
6 months    ki1114097-CONTENT          PERU                           3                    4+                 0.0930706   -0.4190801    0.6052213
6 months    ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    4+                -0.7043277   -0.8247593   -0.5838961
6 months    ki1135781-COHORTS          INDIA                          2                    4+                -0.2562940   -0.3839943   -0.1285937
6 months    ki1135781-COHORTS          INDIA                          3                    4+                -0.2001208   -0.3992888   -0.0009527
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.3314593   -0.4111457   -0.2517729
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.2720615   -0.3568583   -0.1872646
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.1589973   -0.2515300   -0.0664646
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.3001802   -0.4983650   -0.1019954
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.1934136   -0.3984030    0.0115757
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.0886698   -0.3051913    0.1278517
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.2678939   -0.8756595    0.3398718
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.1986318   -0.8682122    0.4709486
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.0084971   -0.6656887    0.6486944
24 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    4+                 0.1234259   -0.2785172    0.5253690
24 months   ki0047075b-MAL-ED          INDIA                          2                    4+                -0.2307948   -0.6288451    0.1672556
24 months   ki0047075b-MAL-ED          INDIA                          3                    4+                 0.0400390   -0.3742513    0.4543293
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.0894910   -0.3756191    0.1966371
24 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.1299824   -0.2508910    0.5108559
24 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.1159636   -0.6217929    0.3898657
24 months   ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    4+                -0.3385469   -0.8219729    0.1448792
24 months   ki0047075b-MAL-ED          PERU                           2                    4+                 0.0586961   -0.2552700    0.3726622
24 months   ki0047075b-MAL-ED          PERU                           3                    4+                 0.0293744   -0.2666836    0.3254324
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.3292831   -1.0679122    0.4093460
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.4506843   -0.0438916    0.9452601
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.1097773   -0.6707112    0.4511566
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0789966   -0.8757361    1.0337293
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.3987367   -0.7343042   -0.0631692
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.1299615   -0.1728022    0.4327252
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.4833917   -0.9864818    0.0196984
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.3508579   -0.8720383    0.1703224
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.2212993   -0.7843381    0.3417395
24 months   ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    4+                 0.1423562   -0.4148661    0.6995784
24 months   ki1000108-IRC              INDIA                          2                    4+                 0.3559298   -0.2009123    0.9127718
24 months   ki1000108-IRC              INDIA                          3                    4+                -0.0311556   -0.6317594    0.5694482
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.7333806   -1.2051987   -0.2615625
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.5391172   -1.0503394   -0.0278950
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.4548861   -0.9773225    0.0675504
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.3055679   -0.5370562   -0.0740796
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.3634847   -0.6166663   -0.1103030
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.1590338   -0.1146656    0.4327332
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.4159079   -0.7540562   -0.0777595
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.1992223   -0.4113410    0.0128965
24 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                -0.0508740   -0.2633212    0.1615732
24 months   ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           1                    4+                -0.4558684   -0.9331391    0.0214023
24 months   ki1114097-CONTENT          PERU                           2                    4+                -0.0826431   -0.5437641    0.3784779
24 months   ki1114097-CONTENT          PERU                           3                    4+                -0.0534594   -0.4942638    0.3873450
24 months   ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    4+                -1.1660387   -1.3330777   -0.9989998
24 months   ki1135781-COHORTS          INDIA                          2                    4+                -0.5823359   -0.7551826   -0.4094893
24 months   ki1135781-COHORTS          INDIA                          3                    4+                -0.4501935   -0.7040533   -0.1963338
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.3990590   -0.5137217   -0.2843963
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.3171470   -0.4353577   -0.1989364
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.1914081   -0.3317098   -0.0511063
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.4293234   -0.5968903   -0.2617565
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.3102763   -0.4863048   -0.1342477
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.1379067   -0.3261296    0.0503161


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.5900590   -1.1379164   -0.0422017
Birth       ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.4099885   -0.8037154   -0.0162617
Birth       ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0412311   -0.1829889    0.1005266
Birth       ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0658246   -0.1799545    0.0483053
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0359382   -0.0366061    0.1084826
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0239260   -0.2397531    0.1919011
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0914444   -0.6944797    0.5115908
Birth       ki1000108-IRC              INDIA                          4+                   NA                -0.7014320   -1.5892727    0.1864088
Birth       ki1135781-COHORTS          INDIA                          4+                   NA                -0.2944428   -0.4473746   -0.1415110
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.2741836   -0.3488891   -0.1994781
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.3836418   -0.3266027    1.0938862
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.2246467   -0.7031630    0.2538697
6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.2322721   -0.4916959    0.0271517
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0548858   -0.1570345    0.0472629
6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0206655   -0.0868205    0.1281515
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0118695   -0.0524940    0.0762331
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0151743   -0.1204603    0.1508089
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.1440277   -0.7862083    0.4981529
6 months    ki1000108-IRC              INDIA                          4+                   NA                -0.2262044   -1.0165713    0.5641624
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.1127057   -0.5379916    0.3125802
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0954703   -0.2623549    0.0714143
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0371900   -0.1194507    0.0450707
6 months    ki1114097-CONTENT          PERU                           4+                   NA                 0.0120728   -0.2275094    0.2516550
6 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.5414476   -0.6559176   -0.4269776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.2822805   -0.3572786   -0.2072824
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.2377825   -0.4236291   -0.0519360
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.1771214   -0.7552233    0.4009806
24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0156069   -0.3354591    0.3042452
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0369572   -0.1463528    0.0724385
24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0265580   -0.1353267    0.0822108
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0158831   -0.0927290    0.0609627
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0552246   -0.2009514    0.0905023
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.3899625   -0.8710001    0.0910750
24 months   ki1000108-IRC              INDIA                          4+                   NA                 0.2164419   -0.3085850    0.7414688
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.6464300   -1.0981307   -0.1947292
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.2009521   -0.3815124   -0.0203918
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0856924   -0.1749425    0.0035577
24 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.1075477   -0.3223092    0.1072138
24 months   ki1135781-COHORTS          INDIA                          4+                   NA                -0.9282006   -1.0873654   -0.7690358
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.3412681   -0.4500216   -0.2325145
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.3457339   -0.5030837   -0.1883841

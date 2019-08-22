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

unadjusted

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/f97bdcae-d38d-4a97-87e0-36b4802321b4/9e0c4be4-c148-407c-b63f-b0266c9e941f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f97bdcae-d38d-4a97-87e0-36b4802321b4/9e0c4be4-c148-407c-b63f-b0266c9e941f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f97bdcae-d38d-4a97-87e0-36b4802321b4/9e0c4be4-c148-407c-b63f-b0266c9e941f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.3258334   -0.8578198    0.2061531
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.1008333   -1.2671941   -0.9344726
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -1.0478000   -1.3207804   -0.7748196
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.8767857   -1.1713221   -0.5822493
Birth       ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.7122727   -1.0804476   -0.3440979
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -0.8304348   -1.0493061   -0.6115635
Birth       ki0047075b-MAL-ED          INDIA                          2                    NA                -1.2973529   -1.5619290   -1.0327768
Birth       ki0047075b-MAL-ED          INDIA                          3                    NA                -0.9731250   -1.3118441   -0.6344059
Birth       ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.6861856   -0.8921831   -0.4801880
Birth       ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.6447222   -1.0363484   -0.2530960
Birth       ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.7085714   -1.0577177   -0.3594251
Birth       ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.8841176   -1.3957332   -0.3725021
Birth       ki0047075b-MAL-ED          PERU                           4+                   NA                -0.8753030   -1.0543832   -0.6962228
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -0.9841176   -1.3534415   -0.6147938
Birth       ki0047075b-MAL-ED          PERU                           2                    NA                -1.0001961   -1.2218151   -0.7785771
Birth       ki0047075b-MAL-ED          PERU                           3                    NA                -1.0410169   -1.2599595   -0.8220744
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.7115625   -0.8742865   -0.5488385
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.3292857   -0.6577384   -0.0008331
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.8176190   -1.1978709   -0.4373672
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.6600000   -1.0222494   -0.2977506
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.8570909   -1.1055082   -0.6086736
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.7483333   -1.2065156   -0.2901510
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -1.2562500   -1.8386352   -0.6738648
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.6721212   -1.0804186   -0.2638238
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.8740000   -1.4740637   -0.2739363
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.8934211   -1.2443816   -0.5424605
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -1.0532143   -1.3981109   -0.7083176
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -1.0042105   -1.4477729   -0.5606481
Birth       ki1000108-IRC              INDIA                          4+                   NA                 0.3352941   -0.5439061    1.2144943
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.3042286   -0.5400538   -0.0684033
Birth       ki1000108-IRC              INDIA                          2                    NA                -0.4001863   -0.6508688   -0.1495038
Birth       ki1000108-IRC              INDIA                          3                    NA                -0.2084848   -0.7339300    0.3169603
Birth       ki1135781-COHORTS          INDIA                          4+                   NA                -0.4490217   -0.6274651   -0.2705784
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.7804544   -0.8208256   -0.7400832
Birth       ki1135781-COHORTS          INDIA                          2                    NA                -0.4904910   -0.5505361   -0.4304459
Birth       ki1135781-COHORTS          INDIA                          3                    NA                -0.4352695   -0.6287603   -0.2417787
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -1.2857192   -1.3904847   -1.1809537
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.5747319   -1.5984371   -1.5510267
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.6257104   -1.6621198   -1.5893009
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.5215951   -1.5856151   -1.4575751
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -1.9015385   -2.4938013   -1.3092756
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.5022332   -1.6047114   -1.3997550
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -1.4804831   -1.6578039   -1.3031623
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -1.3861446   -1.6288002   -1.1434890
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.9006945   -1.3700817   -0.4313072
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.2490444   -1.3917444   -1.1063444
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -1.2391667   -1.5484377   -0.9298957
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -1.0244643   -1.3060125   -0.7429160
6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                -1.0159333   -1.2662255   -0.7656412
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -1.1251786   -1.3387244   -0.9116328
6 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -1.4424786   -1.6516497   -1.2333076
6 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -1.1108333   -1.3441362   -0.8775305
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.5051654   -0.6552903   -0.3550404
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.6494551   -0.8904500   -0.4084602
6 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.6541935   -0.9558757   -0.3525114
6 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.5537121   -0.9403518   -0.1670725
6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                -1.3463669   -1.5039001   -1.1888337
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -1.6281579   -2.0485756   -1.2077402
6 months    ki0047075b-MAL-ED          PERU                           2                    NA                -1.2294333   -1.4818836   -0.9769830
6 months    ki0047075b-MAL-ED          PERU                           3                    NA                -1.2744355   -1.4760429   -1.0728281
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -1.0595244   -1.2151876   -0.9038613
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.3105952   -1.7760023   -0.8451882
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.8776190   -1.2458456   -0.5093925
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -1.0221739   -1.3313985   -0.7129494
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -1.3683642   -1.5354599   -1.2012685
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.4332051   -2.1065190   -0.7598912
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -1.4847581   -1.7698451   -1.1996711
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -1.2106250   -1.4229983   -0.9982517
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -1.1507143   -1.6649769   -0.6364517
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.3800421   -1.5582916   -1.2017925
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -1.6131604   -1.8970471   -1.3292737
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -1.2725490   -1.7043868   -0.8407112
6 months    ki1000108-IRC              INDIA                          4+                   NA                -1.1645098   -1.9199161   -0.4091035
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.2383789   -1.4306442   -1.0461135
6 months    ki1000108-IRC              INDIA                          2                    NA                -1.2962157   -1.4934737   -1.0989577
6 months    ki1000108-IRC              INDIA                          3                    NA                -1.0932381   -1.5703145   -0.6161617
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.8852381   -1.2736640   -0.4968122
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.1279317   -1.2186252   -1.0372382
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.0032967   -1.1996778   -0.8069156
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.9964286   -1.2318577   -0.7609994
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -1.0863187   -1.2643429   -0.9082944
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.2953097   -1.4000746   -1.1905449
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -1.2297554   -1.3731980   -1.0863129
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.9189604   -1.1013242   -0.7365966
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -1.2943508   -1.4058136   -1.1828880
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.5855000   -1.8933847   -1.2776153
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.3742609   -1.5548905   -1.1936312
6 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                -1.2975177   -1.4492220   -1.1458134
6 months    ki1114097-CONTENT          PERU                           4+                   NA                -0.3034594   -0.5935261   -0.0133927
6 months    ki1114097-CONTENT          PERU                           1                    NA                -0.6445227   -1.0220245   -0.2670210
6 months    ki1114097-CONTENT          PERU                           2                    NA                -0.1239969   -0.4508140    0.2028201
6 months    ki1114097-CONTENT          PERU                           3                    NA                -0.2248333   -0.6348841    0.1852175
6 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.5417204   -0.6790623   -0.4043786
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -1.2270339   -1.2674989   -1.1865689
6 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.7168725   -0.7734536   -0.6602913
6 months    ki1135781-COHORTS          INDIA                          3                    NA                -0.6459341   -0.8175645   -0.4743037
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.9510753   -1.0368629   -0.8652877
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3496073   -1.3763605   -1.3228541
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.3413122   -1.3790115   -1.3036130
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.1874808   -1.2452617   -1.1296998
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -1.1254198   -1.3203685   -0.9304712
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.4080474   -1.4540608   -1.3620339
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -1.2998327   -1.3689510   -1.2307143
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -1.1986475   -1.3006193   -1.0966758
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -1.3881818   -1.8095276   -0.9668361
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -2.0442164   -2.2026395   -1.8857934
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -1.8927500   -2.2152418   -1.5702582
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -1.7420370   -2.0107630   -1.4733111
24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -1.8476000   -2.1687027   -1.5264973
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -1.6752439   -1.8998116   -1.4506762
24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -2.0733784   -2.2940323   -1.8527245
24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -1.7828261   -2.0248475   -1.5408046
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -1.2464567   -1.4062952   -1.0866182
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.3917708   -1.6185986   -1.1649431
24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -1.1327419   -1.4668113   -0.7986726
24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -1.3877273   -1.8590503   -0.9164042
24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -1.7501364   -1.9229399   -1.5773328
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -2.1100000   -2.4808029   -1.7391971
24 months   ki0047075b-MAL-ED          PERU                           2                    NA                -1.6175000   -1.8936809   -1.3413191
24 months   ki0047075b-MAL-ED          PERU                           3                    NA                -1.7147674   -1.9486257   -1.4809091
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -1.6100273   -1.7625789   -1.4574757
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.7750000   -2.3198351   -1.2301649
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -1.2726316   -1.7544522   -0.7908110
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -1.9280435   -2.3731120   -1.4829749
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -2.5506633   -2.7447519   -2.3565746
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.4716667   -3.4064630   -1.5368703
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -2.9494000   -3.2231428   -2.6756572
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -2.4207018   -2.6530710   -2.1883325
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -2.1782143   -2.5477456   -1.8086830
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.6539303   -2.7897158   -2.5181449
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -2.5165409   -2.7065367   -2.3265451
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -2.3803268   -2.6611852   -2.0994683
24 months   ki1000108-IRC              INDIA                          4+                   NA                -1.9269608   -2.4408994   -1.4130222
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.8574819   -2.0008550   -1.7141088
24 months   ki1000108-IRC              INDIA                          2                    NA                -1.6499706   -1.7928616   -1.5070796
24 months   ki1000108-IRC              INDIA                          3                    NA                -1.9893056   -2.2452741   -1.7333370
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.9331818   -1.3861136   -0.4802501
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.6716995   -1.7687779   -1.5746211
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.4835870   -1.7027359   -1.2644380
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -1.3940351   -1.6350597   -1.1530105
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -1.1924390   -1.3733055   -1.0115726
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.5487097   -1.6783582   -1.4190611
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -1.5896350   -1.7560525   -1.4232176
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -1.0660256   -1.2546688   -0.8773825
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -1.7893038   -1.9093943   -1.6692133
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -2.2284722   -2.5405466   -1.9163978
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -2.0184722   -2.2002481   -1.8366963
24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                -1.8442938   -2.0191849   -1.6694026
24 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.5926190   -0.8597593   -0.3254788
24 months   ki1114097-CONTENT          PERU                           1                    NA                -1.0603333   -1.4506054   -0.6700613
24 months   ki1114097-CONTENT          PERU                           2                    NA                -0.6593590   -1.0276973   -0.2910207
24 months   ki1114097-CONTENT          PERU                           3                    NA                -0.6037500   -0.9765170   -0.2309830
24 months   ki1135781-COHORTS          INDIA                          4+                   NA                -1.1076316   -1.3145016   -0.9007615
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -2.2761990   -2.3249292   -2.2274687
24 months   ki1135781-COHORTS          INDIA                          2                    NA                -1.5974283   -1.6613029   -1.5335538
24 months   ki1135781-COHORTS          INDIA                          3                    NA                -1.5126000   -1.7092356   -1.3159644
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -1.5364578   -1.6542296   -1.4186859
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.0815066   -2.1146278   -2.0483855
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -2.0084250   -2.0551626   -1.9616874
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.8105486   -1.8846200   -1.7364773
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -1.4074900   -1.5725017   -1.2424784
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.8422660   -1.8862346   -1.7982975
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -1.7211266   -1.7834468   -1.6588064
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -1.5488187   -1.6440460   -1.4535915


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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.7750000   -1.3323916   -0.2176083
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.7219666   -1.3199030   -0.1240303
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.5509523   -1.1590323    0.0571276
Birth       ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    4+                -0.1181621   -0.5464813    0.3101572
Birth       ki0047075b-MAL-ED          INDIA                          2                    4+                -0.5850802   -1.0384600   -0.1317004
Birth       ki0047075b-MAL-ED          INDIA                          3                    4+                -0.2608523   -0.7611355    0.2394310
Birth       ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          1                    4+                 0.0414633   -0.4010365    0.4839632
Birth       ki0047075b-MAL-ED          NEPAL                          2                    4+                -0.0223859   -0.4277723    0.3830005
Birth       ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.1979321   -0.7494622    0.3535980
Birth       ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    4+                -0.1088146   -0.5192654    0.3016362
Birth       ki0047075b-MAL-ED          PERU                           2                    4+                -0.1248930   -0.4098224    0.1600363
Birth       ki0047075b-MAL-ED          PERU                           3                    4+                -0.1657139   -0.4485665    0.1171387
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                 0.3822768    0.0157249    0.7488286
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                -0.1060565   -0.5196634    0.3075503
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                 0.0515625   -0.3455568    0.4486818
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.1087576   -0.4124355    0.6299506
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.3991591   -1.0323128    0.2339946
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.1849697   -0.2929612    0.6629006
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.0194211   -0.7145827    0.6757406
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.1792143   -0.8713343    0.5129057
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.1302105   -0.8764169    0.6159959
Birth       ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    4+                -0.6395227   -1.5498010    0.2707556
Birth       ki1000108-IRC              INDIA                          2                    4+                -0.7354805   -1.6497204    0.1787595
Birth       ki1000108-IRC              INDIA                          3                    4+                -0.5437790   -1.5680277    0.4804698
Birth       ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    4+                -0.3314327   -0.5143859   -0.1484795
Birth       ki1135781-COHORTS          INDIA                          2                    4+                -0.0414692   -0.2297442    0.1468057
Birth       ki1135781-COHORTS          INDIA                          3                    4+                 0.0137523   -0.2494600    0.2769646
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.2890127   -0.3958203   -0.1822051
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.3399912   -0.4504632   -0.2295192
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.2358760   -0.3584596   -0.1132923
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                 0.3993053   -0.2037536    1.0023642
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                 0.4210554   -0.1958489    1.0379596
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                 0.5153939   -0.1325036    1.1632914
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.3483500   -0.8389493    0.1422493
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.3384722   -0.9005869    0.2236425
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.1237698   -0.6711214    0.4235818
6 months    ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    4+                -0.1092452   -0.4382558    0.2197654
6 months    ki0047075b-MAL-ED          INDIA                          2                    4+                -0.4265453   -0.7527334   -0.1003572
6 months    ki0047075b-MAL-ED          INDIA                          3                    4+                -0.0949000   -0.4370643    0.2472643
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.1442897   -0.4282194    0.1396399
6 months    ki0047075b-MAL-ED          NEPAL                          2                    4+                -0.1490282   -0.4859994    0.1879431
6 months    ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.0485467   -0.4633090    0.3662155
6 months    ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    4+                -0.2817910   -0.7307540    0.1671720
6 months    ki0047075b-MAL-ED          PERU                           2                    4+                 0.1169336   -0.1806364    0.4145035
6 months    ki0047075b-MAL-ED          PERU                           3                    4+                 0.0719314   -0.1839245    0.3277874
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.2510708   -0.7418199    0.2396783
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.1819054   -0.2178718    0.5816826
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                 0.0373505   -0.3088443    0.3835453
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0648409   -0.7585791    0.6288972
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.1163939   -0.4468414    0.2140537
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.1577392   -0.1124892    0.4279676
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.2293278   -0.7736062    0.3149506
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.4624461   -1.0498622    0.1249700
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.1218347   -0.7933628    0.5496933
6 months    ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    4+                -0.0738691   -0.8533591    0.7056210
6 months    ki1000108-IRC              INDIA                          2                    4+                -0.1317059   -0.9124424    0.6490306
6 months    ki1000108-IRC              INDIA                          3                    4+                 0.0712717   -0.8221714    0.9647148
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.2426936   -0.6415670    0.1561798
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.1180586   -0.5533059    0.3171887
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.1111905   -0.5653948    0.3430138
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.2089911   -0.4155541   -0.0024280
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.1434368   -0.3720596    0.0851861
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.1673583   -0.0874931    0.4222096
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.2911492   -0.6185891    0.0362908
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.0799101   -0.2921624    0.1323423
6 months    ki1113344-GMS-Nepal        NEPAL                          3                    4+                -0.0031669   -0.1914172    0.1850833
6 months    ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           1                    4+                -0.3410633   -0.8171371    0.1350105
6 months    ki1114097-CONTENT          PERU                           2                    4+                 0.1794625   -0.2575136    0.6164385
6 months    ki1114097-CONTENT          PERU                           3                    4+                 0.0786261   -0.4236491    0.5809012
6 months    ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    4+                -0.6853135   -0.8284924   -0.5421346
6 months    ki1135781-COHORTS          INDIA                          2                    4+                -0.1751520   -0.3236923   -0.0266118
6 months    ki1135781-COHORTS          INDIA                          3                    4+                -0.1042136   -0.3240312    0.1156040
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.3985320   -0.4868311   -0.3102330
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.3902370   -0.4821691   -0.2983048
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.2364055   -0.3391597   -0.1336513
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.2826275   -0.4827692   -0.0824858
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.1744128   -0.3814836    0.0326580
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.0732277   -0.2914459    0.1449905
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.6560346   -1.1061791   -0.2058901
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.5045682   -1.0351652    0.0260288
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.3538552   -0.8536011    0.1458906
24 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    4+                 0.1723561   -0.2194827    0.5641949
24 months   ki0047075b-MAL-ED          INDIA                          2                    4+                -0.2257784   -0.6153873    0.1638305
24 months   ki0047075b-MAL-ED          INDIA                          3                    4+                 0.0647739   -0.3373223    0.4668701
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.1453141   -0.4228014    0.1321731
24 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.1137148   -0.2566239    0.4840534
24 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.1412706   -0.6389590    0.3564178
24 months   ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    4+                -0.3598636   -0.7689551    0.0492278
24 months   ki0047075b-MAL-ED          PERU                           2                    4+                 0.1326364   -0.1931503    0.4584230
24 months   ki0047075b-MAL-ED          PERU                           3                    4+                 0.0353689   -0.2554072    0.3261451
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.1649727   -0.7307617    0.4008163
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.3373957   -0.1679983    0.8427897
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.3180162   -0.7885032    0.1524708
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0789966   -0.8757361    1.0337293
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.3987367   -0.7343042   -0.0631692
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.1299615   -0.1728022    0.4327252
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.4757161   -0.8694051   -0.0820270
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.3383266   -0.7538405    0.0771873
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.2021125   -0.6662621    0.2620371
24 months   ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    4+                 0.0694789   -0.4640834    0.6030412
24 months   ki1000108-IRC              INDIA                          2                    4+                 0.2769902   -0.2564428    0.8104232
24 months   ki1000108-IRC              INDIA                          3                    4+                -0.0623448   -0.6364988    0.5118092
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.7385177   -1.2017362   -0.2752992
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.5504051   -1.0535686   -0.0472417
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.4608533   -0.9739225    0.0522159
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.3562707   -0.5788047   -0.1337366
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.3971960   -0.6429753   -0.1514168
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.1264134   -0.1349272    0.3877540
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.4391684   -0.7735517   -0.1047852
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.2291684   -0.4470312   -0.0113056
24 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                -0.0549900   -0.2671424    0.1571624
24 months   ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           1                    4+                -0.4677143   -0.9406585    0.0052299
24 months   ki1114097-CONTENT          PERU                           2                    4+                -0.0667399   -0.5217531    0.3882733
24 months   ki1114097-CONTENT          PERU                           3                    4+                -0.0111310   -0.4697366    0.4474747
24 months   ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    4+                -1.1685674   -1.3810994   -0.9560354
24 months   ki1135781-COHORTS          INDIA                          2                    4+                -0.4897968   -0.7063035   -0.2732900
24 months   ki1135781-COHORTS          INDIA                          3                    4+                -0.4049684   -0.6903817   -0.1195551
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.5450489   -0.6648713   -0.4252264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.4719672   -0.5934624   -0.3504721
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.2740909   -0.4102135   -0.1379683
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.4347760   -0.6033938   -0.2661582
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.3136366   -0.4907906   -0.1364826
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.1413287   -0.3296573    0.0469999


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.6971154   -1.2170857   -0.1771450
Birth       ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.2946906   -0.6489645    0.0595832
Birth       ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0136975   -0.1524897    0.1250947
Birth       ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0694846   -0.1824845    0.0435152
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0197735   -0.0530623    0.0926093
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0239260   -0.2397531    0.1919011
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0914444   -0.6944797    0.5115908
Birth       ki1000108-IRC              INDIA                          4+                   NA                -0.6431957   -1.4981881    0.2117968
Birth       ki1135781-COHORTS          INDIA                          4+                   NA                -0.2287409   -0.4057604   -0.0517214
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.2894786   -0.3924084   -0.1865489
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.4038742   -0.1775319    0.9852804
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.3026736   -0.7633106    0.1579634
6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.2000099   -0.4517608    0.0517409
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0558939   -0.1570156    0.0452277
6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0183422   -0.0873657    0.1240501
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0046750   -0.0576106    0.0669606
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0082427   -0.1274159    0.1439014
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2727365   -0.7868576    0.2413846
6 months    ki1000108-IRC              INDIA                          4+                   NA                -0.0825025   -0.8172636    0.6522585
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.2018660   -0.5837692    0.1800372
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.1123596   -0.2818458    0.0571266
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0378013   -0.1200075    0.0444048
6 months    ki1114097-CONTENT          PERU                           4+                   NA                -0.0104623   -0.2406643    0.2197396
6 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.4996077   -0.6374107   -0.3618046
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.3622235   -0.4456442   -0.2788029
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.2186278   -0.4063979   -0.0308578
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.5549314   -0.9732601   -0.1366027
24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0017850   -0.3085150    0.3120851
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0287626   -0.1362280    0.0787028
24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0000369   -0.1080604    0.1081341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0128088   -0.0888685    0.0632509
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0552246   -0.2009514    0.0905023
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.3811540   -0.7505083   -0.0117997
24 months   ki1000108-IRC              INDIA                          4+                   NA                 0.1415922   -0.3593490    0.6425334
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.6529360   -1.0961445   -0.2097275
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.2370940   -0.4079858   -0.0662023
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0942867   -0.1830156   -0.0055578
24 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.1036005   -0.3177075    0.1105066
24 months   ki1135781-COHORTS          INDIA                          4+                   NA                -0.8932593   -1.0986871   -0.6878315
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.4762859   -0.5887967   -0.3637750
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.3504034   -0.5087660   -0.1920407

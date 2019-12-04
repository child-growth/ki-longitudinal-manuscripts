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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        hdlvry    ever_wasted   n_cell      n
----------------------------  -------------------------  -----------------------------  -------  ------------  -------  -----
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0      196    365
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1      161    365
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        5    365
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        3    365
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                   0      190    409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                   1      211    409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                   0        6    409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                   1        2    409
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                   0      117    375
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                   1      135    375
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                   0       56    375
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                   1       67    375
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                   0      120   1224
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                   1       44   1224
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                   0      646   1224
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                   1      414   1224
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       52    397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       25    397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0      202    397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1      118    397
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                   0      427    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                   1       86    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                   0      138    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                   1       36    687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                   0      513    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                   1       74    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      133    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       34    754
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1776   2262
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      446   2262
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       33   2262
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        7   2262
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                   0       83    613
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                   1       65    613
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                   0      221    613
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                   1      244    613
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                   0     2513   4904
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                   1      517   4904
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                   0     1423   4904
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                   1      451   4904
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                   0       34    346
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                   1        7    346
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                   0      236    346
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                   1       69    346
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      888   4480
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      279   4480
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     2398   4480
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      915   4480
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0      234    347
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1      106    347
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        5    347
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        2    347
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                   0      251    390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                   1      131    390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                   0        6    390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                   1        2    390
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                   0      196    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                   1       54    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                   0       97    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                   1       26    373
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                   0      150   1202
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                   1       13   1202
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                   0      897   1202
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                   1      142   1202
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       68    341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1        0    341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0      273    341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0    341
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                   0      481    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                   1       28    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                   0      165    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                   1        9    683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                   0      571    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                   1       13    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      158    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                   1        7    749
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     2023   2254
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      191   2254
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       36   2254
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        4   2254
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                   0      122    596
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                   1       19    596
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                   0      360    596
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                   1       95    596
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                   0     2574   4526
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                   1      229   4526
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                   0     1569   4526
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                   1      154   4526
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                   0       34    342
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                   1        6    342
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                   0      274    342
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                   1       28    342
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                   0     1099   4363
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                   1       31   4363
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3139   4363
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                   1       94   4363
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0      268    370
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1       94    370
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        5    370
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        3    370
6-24 months                   ki1000108-IRC              INDIA                          0                   0      276    410
6-24 months                   ki1000108-IRC              INDIA                          0                   1      126    410
6-24 months                   ki1000108-IRC              INDIA                          1                   0        7    410
6-24 months                   ki1000108-IRC              INDIA                          1                   1        1    410
6-24 months                   ki1000109-EE               PAKISTAN                       0                   0      142    372
6-24 months                   ki1000109-EE               PAKISTAN                       0                   1      108    372
6-24 months                   ki1000109-EE               PAKISTAN                       1                   0       69    372
6-24 months                   ki1000109-EE               PAKISTAN                       1                   1       53    372
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                   0      118   1128
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                   1       35   1128
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                   0      653   1128
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                   1      322   1128
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       54    402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       25    402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0      205    402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1      118    402
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                   0      390    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                   1       69    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                   0      126    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                   1       30    615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                   0      502    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                   1       65    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      132    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       31    730
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1575   1912
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      306   1912
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       27   1912
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        4   1912
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                   0       79    549
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                   1       57    549
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                   0      211    549
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                   1      202    549
6-24 months                   ki1135781-COHORTS          INDIA                          0                   0     2609   4742
6-24 months                   ki1135781-COHORTS          INDIA                          0                   1      315   4742
6-24 months                   ki1135781-COHORTS          INDIA                          1                   0     1504   4742
6-24 months                   ki1135781-COHORTS          INDIA                          1                   1      314   4742
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                   0       36    339
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                   1        3    339
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                   0      252    339
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                   1       48    339
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      910   4492
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      258   4492
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     2454   4492
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      870   4492


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/91e31322-7089-4b56-b8be-2a453900a5a7/b32ee83c-ace1-440f-af13-b75ed65d645b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/91e31322-7089-4b56-b8be-2a453900a5a7/b32ee83c-ace1-440f-af13-b75ed65d645b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/91e31322-7089-4b56-b8be-2a453900a5a7/b32ee83c-ace1-440f-af13-b75ed65d645b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/91e31322-7089-4b56-b8be-2a453900a5a7/b32ee83c-ace1-440f-af13-b75ed65d645b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                0.5327899   0.4709607   0.5946190
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    NA                0.5439692   0.4557479   0.6321906
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2302158   0.1845479   0.2758837
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3906574   0.3384605   0.4428544
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.3834894   0.2616137   0.5053651
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3632062   0.3101966   0.4162158
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1688332   0.1365321   0.2011344
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1968575   0.1365701   0.2571448
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1258139   0.0989408   0.1526869
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2023597   0.1407967   0.2639227
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2007201   0.1839373   0.2175028
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1750000   0.0916918   0.2583082
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4414858   0.3596661   0.5233055
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5245013   0.4787483   0.5702542
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                0.1821774   0.1673354   0.1970194
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    NA                0.2286893   0.2081506   0.2492280
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1707317   0.0749030   0.2665604
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2262295   0.1750012   0.2774578
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2442452   0.2130332   0.2754572
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2741468   0.2571372   0.2911564
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                0.2154547   0.1643288   0.2665807
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    NA                0.2125822   0.1402091   0.2849554
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0706315   0.0446041   0.0966589
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1348622   0.1024239   0.1673005
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0550098   0.0351881   0.0748315
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0517241   0.0187931   0.0846552
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0222603   0.0102871   0.0342334
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0424242   0.0116498   0.0731987
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1428429   0.0801654   0.2055203
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2075248   0.1700657   0.2449839
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                0.0841874   0.0731852   0.0951895
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    NA                0.0894751   0.0748466   0.1041037
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1500000   0.0603230   0.2396770
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0927152   0.0586870   0.1267434
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0298672   0.0150399   0.0446946
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0290277   0.0230902   0.0349653
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                0.4283672   0.3670107   0.4897237
6-24 months                   ki1000109-EE               PAKISTAN                       1                    NA                0.4383420   0.3496523   0.5270316
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2023740   0.1708355   0.2339125
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3312593   0.2856251   0.3768935
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.3879741   0.2708738   0.5050745
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3604267   0.3077327   0.4131207
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1499989   0.1172698   0.1827280
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1894405   0.1274412   0.2514399
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1143434   0.0881065   0.1405803
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1868652   0.1254071   0.2483232
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4310114   0.3447432   0.5172796
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4868403   0.4383474   0.5353333
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                0.1186228   0.1058574   0.1313882
6-24 months                   ki1135781-COHORTS          INDIA                          1                    NA                0.1621180   0.1438773   0.1803587
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2257364   0.1959327   0.2555401
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2591855   0.2425238   0.2758471


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       NA                   NA                0.5386667   0.4881448   0.5891886
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3741830   0.3195305   0.4288355
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3602015   0.3129196   0.4074834
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2002653   0.1837694   0.2167611
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5040783   0.4644662   0.5436904
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          NA                   NA                0.1973899   0.1862487   0.2085311
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2196532   0.1732957   0.2660107
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2665179   0.2514258   0.2816100
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       NA                   NA                0.2144772   0.1727666   0.2561878
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1289517   0.0982960   0.1596075
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0541728   0.0371844   0.0711612
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1912752   0.1596728   0.2228775
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0846222   0.0765129   0.0927314
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0994152   0.0685873   0.1302431
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0286500   0.0232922   0.0340079
6-24 months                   ki1000109-EE               PAKISTAN                       NA                   NA                0.4327957   0.3823792   0.4832122
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3164894   0.2686679   0.3643108
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4717668   0.4299709   0.5135628
6-24 months                   ki1135781-COHORTS          INDIA                          NA                   NA                0.1326445   0.1229894   0.1422995
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2511131   0.2362659   0.2659603


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    0                 1.0209827   0.8370672   1.245307
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.6969182   1.3746670   2.094712
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 0.9471088   0.6676391   1.343563
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1659877   0.8138535   1.670482
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.6084055   1.1086410   2.333459
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8718610   0.5376976   1.413697
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1880364   0.9679077   1.458228
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    0                 1.2553109   1.1122541   1.416767
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.3250585   0.7169637   2.448911
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1224245   0.9735004   1.294131
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    0                 0.9866676   0.6516119   1.494007
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.9093779   1.3249110   2.751675
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9402709   0.4524178   1.954188
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.9058275   0.7724891   4.701916
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.4528190   0.9034969   2.336126
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    0                 1.0628097   0.8621132   1.310227
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.6181015   0.2989442   1.277996
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.9718909   0.5642053   1.674163
6-24 months                   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE               PAKISTAN                       1                    0                 1.0232856   0.7994700   1.309759
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.6368669   1.4243516   1.881090
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 0.9289968   0.6644308   1.298909
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2629461   0.8526219   1.870739
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.6342452   1.0944842   2.440197
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1295301   0.9031485   1.412656
6-24 months                   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          INDIA                          1                    0                 1.3666681   1.1702164   1.596099
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1481775   0.9923027   1.328538


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0058768   -0.0294996   0.0412532
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1439672    0.0897950   0.1981394
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0232879   -0.1349165   0.0883407
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0087505   -0.0084055   0.0259064
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0174222    0.0024162   0.0324283
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0004548   -0.0025840   0.0016743
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0625925   -0.0092905   0.1344754
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0152125    0.0047556   0.0256694
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0489215   -0.0484409   0.1462839
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0222727   -0.0044510   0.0489963
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                -0.0009775   -0.0301255   0.0281705
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0583203    0.0263022   0.0903383
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0008371   -0.0106296   0.0089555
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0044420   -0.0028570   0.0117410
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0484323   -0.0093362   0.1062008
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0004348   -0.0069839   0.0078536
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0505848   -0.1374669   0.0362973
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0012172   -0.0137291   0.0112946
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                 0.0044285   -0.0307270   0.0395840
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1141154    0.0795912   0.1486395
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0322527   -0.1395942   0.0750887
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0109767   -0.0068210   0.0287744
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0171634    0.0022671   0.0320597
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0407555   -0.0349989   0.1165098
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.0140217    0.0047753   0.0232680
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0253767    0.0000783   0.0506750


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0109099   -0.0570077   0.0744635
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.3847507    0.2564679   0.4909007
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0646524   -0.4243639   0.2042169
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0492751   -0.0521561   0.1409280
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1216329    0.0120628   0.2190507
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0022711   -0.0129474   0.0082927
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1241721   -0.0310049   0.2559934
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0770681    0.0226141   0.1284884
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2227214   -0.3565950   0.5546483
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0835691   -0.0227268   0.1788172
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                -0.0045577   -0.1500750   0.1225475
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.4522642    0.2174265   0.6166309
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0154516   -0.2132370   0.1500903
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1663527   -0.1444437   0.3927462
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.2532075   -0.1163605   0.5004310
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0051384   -0.0865122   0.0890580
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.5088235   -1.7418198   0.1696944
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0424864   -0.5818928   0.3129889
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                 0.0102323   -0.0744274   0.0882213
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.3605662    0.2787635   0.4330909
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0906686   -0.4386207   0.1731261
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0681886   -0.0487568   0.1720936
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1305136    0.0117021   0.2350417
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0863890   -0.0893173   0.2337540
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.1057087    0.0334879   0.1725329
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1010567   -0.0059954   0.1967169

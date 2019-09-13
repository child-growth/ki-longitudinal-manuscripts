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
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
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
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                   0      143    375
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                   1      109    375
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                   0       68    375
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                   1       55    375
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
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                   0       75    550
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                   1       61    550
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                   0      184    550
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                   1      230    550
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
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                   0      198    371
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                   1       50    371
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                   0      102    371
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                   1       21    371
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                   0      150   1202
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                   1       13   1202
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                   0      897   1202
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                   1      142   1202
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       68    341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1        0    341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0      273    341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0    341
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                   0      482    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                   1       27    683
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
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                   0      111    529
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                   1       17    529
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                   0      343    529
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                   1       58    529
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
6-24 months                   ki1000109-EE               PAKISTAN                       0                   0      171    373
6-24 months                   ki1000109-EE               PAKISTAN                       0                   1       80    373
6-24 months                   ki1000109-EE               PAKISTAN                       1                   0       79    373
6-24 months                   ki1000109-EE               PAKISTAN                       1                   1       43    373
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
![](/tmp/a7ab6e25-7726-4427-9878-74ee3b41ec8d/2ed5d6f9-d01c-478d-a8cb-4e6af7775826/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a7ab6e25-7726-4427-9878-74ee3b41ec8d/2ed5d6f9-d01c-478d-a8cb-4e6af7775826/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a7ab6e25-7726-4427-9878-74ee3b41ec8d/2ed5d6f9-d01c-478d-a8cb-4e6af7775826/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a7ab6e25-7726-4427-9878-74ee3b41ec8d/2ed5d6f9-d01c-478d-a8cb-4e6af7775826/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                0.4291805   0.3679715   0.4903896
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    NA                0.4540901   0.3653053   0.5428749
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2302158   0.1845479   0.2758837
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3906574   0.3384605   0.4428544
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.3841367   0.2611754   0.5070980
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3629083   0.3101454   0.4156712
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1708424   0.1384870   0.2031978
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2098945   0.1508724   0.2689165
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1261985   0.0993125   0.1530846
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2046733   0.1429340   0.2664125
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2007201   0.1839373   0.2175028
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1750000   0.0916918   0.2583082
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4768920   0.3887569   0.5650271
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5516493   0.5032701   0.6000285
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                0.1817983   0.1670486   0.1965480
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    NA                0.2291141   0.2084384   0.2497899
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1707317   0.0749030   0.2665604
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2262295   0.1750012   0.2774578
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2442041   0.2134115   0.2749966
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2746548   0.2576108   0.2916988
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                0.2013180   0.1513254   0.2513105
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    NA                0.1790501   0.1124534   0.2456468
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0706315   0.0446041   0.0966589
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1348622   0.1024239   0.1673005
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0530452   0.0335604   0.0725299
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0517241   0.0187931   0.0846552
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0222603   0.0102871   0.0342334
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0424242   0.0116498   0.0731987
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1613549   0.0952546   0.2274552
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1412203   0.1069893   0.1754514
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                0.0836520   0.0727622   0.0945418
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    NA                0.0880605   0.0735390   0.1025820
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1500000   0.0603230   0.2396770
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0927152   0.0586870   0.1267434
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0293905   0.0144802   0.0443008
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0290517   0.0231497   0.0349538
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                0.3164738   0.2588822   0.3740653
6-24 months                   ki1000109-EE               PAKISTAN                       1                    NA                0.3574908   0.2718633   0.4431184
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2023740   0.1708355   0.2339125
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3312593   0.2856251   0.3768935
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.3559659   0.2360115   0.4759203
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3614398   0.3089141   0.4139655
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1515851   0.1188337   0.1843364
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1894811   0.1277412   0.2512209
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1147172   0.0884592   0.1409751
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1881560   0.1274118   0.2489001
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4248939   0.3377885   0.5119993
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4860622   0.4375792   0.5345453
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                0.1187588   0.1059602   0.1315575
6-24 months                   ki1135781-COHORTS          INDIA                          1                    NA                0.1619648   0.1436281   0.1803015
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2257418   0.1960765   0.2554071
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2599489   0.2432802   0.2766176


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       NA                   NA                0.4373333   0.3870592   0.4876074
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3741830   0.3195305   0.4288355
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3602015   0.3129196   0.4074834
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2002653   0.1837694   0.2167611
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5290909   0.4873371   0.5708447
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          NA                   NA                0.1973899   0.1862487   0.2085311
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2196532   0.1732957   0.2660107
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2665179   0.2514258   0.2816100
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       NA                   NA                0.1913747   0.1512914   0.2314579
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1289517   0.0982960   0.1596075
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1417769   0.1120237   0.1715302
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0846222   0.0765129   0.0927314
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0994152   0.0685873   0.1302431
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0286500   0.0232922   0.0340079
6-24 months                   ki1000109-EE               PAKISTAN                       NA                   NA                0.3297587   0.2819849   0.3775326
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
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    0                 1.0580399   0.8318432   1.345744
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.6969182   1.3746670   2.094712
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 0.9447374   0.6647292   1.342695
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2285853   0.8761620   1.722766
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.6218357   1.1210526   2.346323
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8718610   0.5376976   1.413697
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1567593   0.9426364   1.419521
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    0                 1.2602654   1.1165276   1.422508
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.3250585   0.7169637   2.448911
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1246937   0.9769165   1.294825
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    0                 0.8893896   0.5692173   1.389652
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.9093779   1.3249110   2.751675
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9750958   0.4675489   2.033609
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.9058275   0.7724891   4.701916
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.8752157   0.5430314   1.410605
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    0                 1.0527010   0.8532205   1.298819
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.6181015   0.2989442   1.277996
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.9884736   0.5683075   1.719280
6-24 months                   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE               PAKISTAN                       1                    0                 1.1296064   0.8374351   1.523713
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.6368669   1.4243516   1.881090
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.0153776   0.7033448   1.465841
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2499981   0.8458529   1.847242
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.6401728   1.1042893   2.436107
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1439615   0.9105877   1.437147
6-24 months                   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          INDIA                          1                    0                 1.3638130   1.1670161   1.593796
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1515322   0.9957150   1.331733


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0081528   -0.0265352   0.0428408
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1439672    0.0897950   0.1981394
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0239352   -0.1366112   0.0887409
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0067413   -0.0106494   0.0241320
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0170376    0.0020465   0.0320286
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0004548   -0.0025840   0.0016743
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0521989   -0.0253358   0.1297336
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0155916    0.0052440   0.0259391
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0489215   -0.0484409   0.1462839
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0223138   -0.0038900   0.0485175
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                -0.0099433   -0.0375045   0.0176180
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0583203    0.0263022   0.0903383
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0003365   -0.0100846   0.0094115
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0044420   -0.0028570   0.0117410
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0195780   -0.0784069   0.0392509
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0009702   -0.0063339   0.0082743
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0505848   -0.1374669   0.0362973
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0007405   -0.0133443   0.0118633
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                 0.0132849   -0.0200352   0.0466051
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1141154    0.0795912   0.1486395
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0002445   -0.1099869   0.1094979
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0093905   -0.0084157   0.0271967
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0167897    0.0019122   0.0316672
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0468730   -0.0296432   0.1233891
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.0138856    0.0045994   0.0231719
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0253713    0.0002848   0.0504578


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0186420   -0.0640104   0.0948741
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.3847507    0.2564679   0.4909007
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0664494   -0.4299327   0.2046379
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0379613   -0.0648374   0.1308358
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1189474    0.0094960   0.2163043
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0022711   -0.0129474   0.0082927
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0986577   -0.0607324   0.2340971
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0789886    0.0251248   0.1298763
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2227214   -0.3565950   0.5546483
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0837234   -0.0204165   0.1772351
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                -0.0519572   -0.2060187   0.0824240
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.4522642    0.2174265   0.6166309
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0063851   -0.2094002   0.1625511
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1663527   -0.1444437   0.3927462
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1380899   -0.6399481   0.2101892
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0114649   -0.0787316   0.0941198
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.5088235   -1.7418198   0.1696944
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0258458   -0.5732888   0.3311084
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                 0.0402868   -0.0663011   0.1362201
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.3605662    0.2787635   0.4330909
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0006873   -0.3620357   0.2647952
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0583351   -0.0585779   0.1623359
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1276716    0.0090047   0.2321287
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0993562   -0.0786181   0.2479645
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.1046831    0.0321356   0.1717928
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1010355   -0.0050981   0.1959618

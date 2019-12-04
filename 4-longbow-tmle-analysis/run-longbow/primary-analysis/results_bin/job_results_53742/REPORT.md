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

**Outcome Variable:** ever_swasted

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

agecat                        studyid                    country                        hdlvry    ever_swasted   n_cell      n
----------------------------  -------------------------  -----------------------------  -------  -------------  -------  -----
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0      303    365
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1       54    365
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        7    365
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        1    365
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    0      326    409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    1       75    409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    0        6    409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    1        2    409
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    0      210    375
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    1       42    375
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    0      100    375
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    1       23    375
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    0      151   1224
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    1       13   1224
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    0      916   1224
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    1      144   1224
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       72    397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        5    397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0      285    397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       35    397
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    0      500    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    1       13    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    0      168    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    1        6    687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      573    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       14    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      161    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1        6    754
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     2110   2262
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      112   2262
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       36   2262
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        4   2262
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    0      132    613
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    1       16    613
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    0      361    613
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    1      104    613
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    0     2916   4904
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    1      114   4904
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    0     1743   4904
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    1      131   4904
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0       39    346
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    1        2    346
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0      289    346
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    1       16    346
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0     1129   4480
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    1       38   4480
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3144   4480
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      169   4480
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0      310    347
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1       30    347
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        7    347
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        0    347
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    0      326    390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    1       56    390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    0        7    390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    1        1    390
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    0      235    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    1       15    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    0      118    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    1        5    373
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    0      161   1202
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    1        2   1202
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    0     1001   1202
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    1       38   1202
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       68    341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        0    341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0      273    341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0    341
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    0      504    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    1        5    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    0      173    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    1        1    683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      583    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1        1    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      165    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1        0    749
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     2175   2254
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       39   2254
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       39   2254
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        1   2254
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    0      136    596
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    1        5    596
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    0      432    596
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    1       23    596
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    0     2760   4526
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    1       43   4526
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    0     1686   4526
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    1       37   4526
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0       39    342
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    1        1    342
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0      293    342
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    1        9    342
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0     1123   4363
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    1        7   4363
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3219   4363
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    1       14   4363
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0      333    370
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1       29    370
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        7    370
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        1    370
6-24 months                   ki1000108-IRC              INDIA                          0                    0      377    410
6-24 months                   ki1000108-IRC              INDIA                          0                    1       25    410
6-24 months                   ki1000108-IRC              INDIA                          1                    0        7    410
6-24 months                   ki1000108-IRC              INDIA                          1                    1        1    410
6-24 months                   ki1000109-EE               PAKISTAN                       0                    0      220    372
6-24 months                   ki1000109-EE               PAKISTAN                       0                    1       30    372
6-24 months                   ki1000109-EE               PAKISTAN                       1                    0      102    372
6-24 months                   ki1000109-EE               PAKISTAN                       1                    1       20    372
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    0      142   1128
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    1       11   1128
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    0      862   1128
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    1      113   1128
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       73    402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        6    402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0      278    402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       45    402
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    0      451    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    1        8    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    0      151    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    1        5    615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      553    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       14    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      157    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1        6    730
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1805   1912
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       76   1912
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       28   1912
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        3   1912
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    0      122    549
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    1       14    549
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    0      324    549
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    1       89    549
6-24 months                   ki1135781-COHORTS          INDIA                          0                    0     2841   4742
6-24 months                   ki1135781-COHORTS          INDIA                          0                    1       83   4742
6-24 months                   ki1135781-COHORTS          INDIA                          1                    0     1716   4742
6-24 months                   ki1135781-COHORTS          INDIA                          1                    1      102   4742
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0       38    339
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    1        1    339
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0      293    339
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    1        7    339
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0     1135   4492
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    1       33   4492
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3159   4492
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      165   4492


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
* agecat: 0-24 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/832ddcb0-9ed4-47c5-a995-ac5071cac75f/ede51da3-1e46-439a-afe6-ef5fc4d9951d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/832ddcb0-9ed4-47c5-a995-ac5071cac75f/ede51da3-1e46-439a-afe6-ef5fc4d9951d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/832ddcb0-9ed4-47c5-a995-ac5071cac75f/ede51da3-1e46-439a-afe6-ef5fc4d9951d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/832ddcb0-9ed4-47c5-a995-ac5071cac75f/ede51da3-1e46-439a-afe6-ef5fc4d9951d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN     0                    NA                0.1656087    0.1196250   0.2115924
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN     1                    NA                0.1910835    0.1208054   0.2613616
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0795905    0.0518388   0.1073423
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.1361898    0.1105334   0.1618462
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.0649351    0.0098275   0.1200426
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.1093750    0.0751355   0.1436145
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0253411    0.0117315   0.0389507
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0344828    0.0073514   0.0616141
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0238501    0.0114986   0.0362016
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0359281    0.0076826   0.0641737
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1088255    0.0562918   0.1613593
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.2214996    0.1834976   0.2595017
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA        0                    NA                0.0426455    0.0345706   0.0507203
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA        1                    NA                0.0638764    0.0525005   0.0752524
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0346653    0.0213483   0.0479822
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0505531    0.0424248   0.0586814
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN     0                    NA                0.0600000    0.0305218   0.0894782
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN     1                    NA                0.0406504    0.0057043   0.0755966
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL        0                    NA                0.0354610    0.0049091   0.0660129
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.0505495    0.0304029   0.0706960
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA        0                    NA                0.0158605    0.0110540   0.0206671
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA        1                    NA                0.0209144    0.0140925   0.0277364
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0061947   -0.0008760   0.0132654
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0043303    0.0013560   0.0073047
6-24 months                   ki1000109-EE               PAKISTAN     0                    NA                0.1192567    0.0789299   0.1595835
6-24 months                   ki1000109-EE               PAKISTAN     1                    NA                0.1705968    0.1039935   0.2372001
6-24 months                   ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0718883    0.0461997   0.0975769
6-24 months                   ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.1159747    0.0877503   0.1441991
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.0759494    0.0174589   0.1344399
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.1393189    0.1015083   0.1771295
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0174292    0.0054476   0.0294108
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0320513    0.0043890   0.0597136
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0246914    0.0119094   0.0374733
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0368098    0.0078837   0.0657359
6-24 months                   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.0990528    0.0484268   0.1496788
6-24 months                   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.2138155    0.1740319   0.2535990
6-24 months                   ki1135781-COHORTS          INDIA        0                    NA                0.0333446    0.0259618   0.0407274
6-24 months                   ki1135781-COHORTS          INDIA        1                    NA                0.0520015    0.0413678   0.0626351
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0296991    0.0187360   0.0406621
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0494374    0.0407451   0.0581298


### Parameter: E(Y)


agecat                        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN     NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.1282680   0.1041743   0.1523617
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1007557   0.0711091   0.1304022
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0276565   0.0153851   0.0399279
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0265252   0.0150478   0.0380026
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1957586   0.1643227   0.2271945
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA        NA                   NA                0.0499592   0.0438611   0.0560573
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0462054   0.0395696   0.0528411
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN     NA                   NA                0.0536193   0.0307280   0.0765106
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.0469799   0.0299780   0.0639817
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA        NA                   NA                0.0176757   0.0138363   0.0215150
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0048132   0.0019592   0.0076672
6-24 months                   ki1000109-EE               PAKISTAN     NA                   NA                0.1344086   0.0997005   0.1691167
6-24 months                   ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.1099291   0.0842813   0.1355769
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1268657   0.0942904   0.1594410
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0211382   0.0097604   0.0325160
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0273973   0.0155476   0.0392469
6-24 months                   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1876138   0.1549271   0.2203006
6-24 months                   ki1135781-COHORTS          INDIA        NA                   NA                0.0390131   0.0335015   0.0445247
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0440784   0.0374167   0.0507400


### Parameter: RR


agecat                        studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN     1                    0                 1.1538254   0.7282844   1.828013
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.7111313   1.1175851   2.619908
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.6843750   0.6817053   4.161797
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.3607427   0.5248752   3.527735
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.5064157   0.5876161   3.861855
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        1                    0                 2.0353642   1.2191051   3.398155
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA        1                    0                 1.4978469   1.1552233   1.942088
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.4583216   0.9577511   2.220516
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN     1                    0                 0.6775069   0.2517051   1.823625
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL        1                    0                 1.4254945   0.5516931   3.683270
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA        1                    0                 1.3186485   0.8447446   2.058414
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH   1                    0                 0.6990411   0.1835273   2.662593
6-24 months                   ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE               PAKISTAN     1                    0                 1.4305006   0.8530438   2.398859
6-24 months                   ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.6132633   1.0645131   2.444891
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.8343653   0.8107074   4.150568
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.8389422   0.6100618   5.543223
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.4907975   0.5817579   3.820279
6-24 months                   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal        NEPAL        1                    0                 2.1586014   1.2515992   3.722885
6-24 months                   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          INDIA        1                    0                 1.5595161   1.1537386   2.108008
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.6646113   1.1079840   2.500876


### Parameter: PAR


agecat                        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN     0                    NA                 0.0077246   -0.0194425   0.0348918
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0486775    0.0132409   0.0841140
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0358206   -0.0165028   0.0881440
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0023153   -0.0053782   0.0100089
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0026751   -0.0041623   0.0095125
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0869330    0.0365787   0.1372873
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA        0                    NA                 0.0073137    0.0011653   0.0134621
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0115401   -0.0005481   0.0236283
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN     0                    NA                -0.0063807   -0.0214851   0.0087237
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0115189   -0.0164245   0.0394622
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA        0                    NA                 0.0018151   -0.0015290   0.0051593
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                -0.0013815   -0.0070817   0.0043188
6-24 months                   ki1000109-EE               PAKISTAN     0                    NA                 0.0151519   -0.0102633   0.0405671
6-24 months                   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0380408    0.0068612   0.0692203
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0509163   -0.0050985   0.1069311
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0037090   -0.0039542   0.0113723
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0027059   -0.0043649   0.0097767
6-24 months                   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0885611    0.0396904   0.1374317
6-24 months                   ki1135781-COHORTS          INDIA        0                    NA                 0.0056685   -0.0000633   0.0114002
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0143793    0.0040471   0.0247115


### Parameter: PAF


agecat                        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN     0                    NA                 0.0445652   -0.1255909   0.1889988
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.3794982    0.0888840   0.5774166
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.3555195   -0.4224191   0.7079938
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0837181   -0.2381152   0.3218946
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.1008518   -0.1929625   0.3223027
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.4440828    0.1287242   0.6452972
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA        0                    NA                 0.1463940    0.0152115   0.2601017
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.2497565   -0.0626984   0.4703434
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN     0                    NA                -0.1190000   -0.4341545   0.1268995
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.2451874   -0.6463468   0.6539356
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA        0                    NA                 0.1026914   -0.1065233   0.2723492
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                -0.2870206   -2.1378343   0.4721129
6-24 months                   ki1000109-EE               PAKISTAN     0                    NA                 0.1127301   -0.0962056   0.2818429
6-24 months                   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.3460485    0.0513350   0.5492060
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.4013403   -0.2308220   0.7088178
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.1754650   -0.2612591   0.4609689
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0987654   -0.1955788   0.3206439
6-24 months                   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.4720390    0.1518695   0.6713444
6-24 months                   ki1135781-COHORTS          INDIA        0                    NA                 0.1452964   -0.0133358   0.2790956
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.3262207    0.0542924   0.5199588

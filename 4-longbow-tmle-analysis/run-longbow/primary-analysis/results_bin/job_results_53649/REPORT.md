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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country                        hdlvry    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  -------  ------------  -------  -----
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0      115    320
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1      199    320
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        4    320
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        2    320
0-24 months   ki1000108-IRC              INDIA                          0                   0      159    395
0-24 months   ki1000108-IRC              INDIA                          0                   1      227    395
0-24 months   ki1000108-IRC              INDIA                          1                   0        3    395
0-24 months   ki1000108-IRC              INDIA                          1                   1        6    395
0-24 months   ki1000109-EE               PAKISTAN                       0                   0      106    322
0-24 months   ki1000109-EE               PAKISTAN                       0                   1      107    322
0-24 months   ki1000109-EE               PAKISTAN                       1                   0       53    322
0-24 months   ki1000109-EE               PAKISTAN                       1                   1       56    322
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                   0       34    675
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                   1       30    675
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0      386    675
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1      225    675
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       40    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1        0    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0      181    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1       13    234
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0       94    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1      132    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       35    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       47    308
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   0       79    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   1      139    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0       38    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       54    310
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0      250    682
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      423    682
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        5    682
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        4    682
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       65    590
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       68    590
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      205    590
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      252    590
0-24 months   ki1135781-COHORTS          INDIA                          0                   0      784   1881
0-24 months   ki1135781-COHORTS          INDIA                          0                   1      294   1881
0-24 months   ki1135781-COHORTS          INDIA                          1                   0      643   1881
0-24 months   ki1135781-COHORTS          INDIA                          1                   1      160   1881
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0        5    129
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1        7    129
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0       67    129
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1       50    129
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      302   1779
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      136   1779
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0      984   1779
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      357   1779
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0       65    199
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1      131    199
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        1    199
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        2    199
0-6 months    ki1000108-IRC              INDIA                          0                   0       86    240
0-6 months    ki1000108-IRC              INDIA                          0                   1      147    240
0-6 months    ki1000108-IRC              INDIA                          1                   0        1    240
0-6 months    ki1000108-IRC              INDIA                          1                   1        6    240
0-6 months    ki1000109-EE               PAKISTAN                       0                   0       36    126
0-6 months    ki1000109-EE               PAKISTAN                       0                   1       47    126
0-6 months    ki1000109-EE               PAKISTAN                       1                   0       18    126
0-6 months    ki1000109-EE               PAKISTAN                       1                   1       25    126
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                   0       11    278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                   1       13    278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   0      125    278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   1      129    278
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       14     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       64     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     78
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0       27    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1      112    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0       13    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1       33    185
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                   0       14    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                   1      126    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   0        7    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       50    197
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0       97    326
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      224    326
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        2    326
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        3    326
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0       26    245
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       30    245
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0       70    245
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1      119    245
0-6 months    ki1135781-COHORTS          INDIA                          0                   0      462   1241
0-6 months    ki1135781-COHORTS          INDIA                          0                   1      294   1241
0-6 months    ki1135781-COHORTS          INDIA                          1                   0      325   1241
0-6 months    ki1135781-COHORTS          INDIA                          1                   1      160   1241
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0        2     78
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1        7     78
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0       19     78
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1       50     78
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0       53    505
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1       94    505
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0      146    505
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      212    505
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0       50    121
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1       68    121
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        3    121
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0    121
6-24 months   ki1000108-IRC              INDIA                          0                   0       73    155
6-24 months   ki1000108-IRC              INDIA                          0                   1       80    155
6-24 months   ki1000108-IRC              INDIA                          1                   0        2    155
6-24 months   ki1000108-IRC              INDIA                          1                   1        0    155
6-24 months   ki1000109-EE               PAKISTAN                       0                   0       70    196
6-24 months   ki1000109-EE               PAKISTAN                       0                   1       60    196
6-24 months   ki1000109-EE               PAKISTAN                       1                   0       35    196
6-24 months   ki1000109-EE               PAKISTAN                       1                   1       31    196
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                   0       23    397
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                   1       17    397
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0      261    397
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1       96    397
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       26    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1        0    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0      117    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1       13    156
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0       67    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1       20    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       22    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       14    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   0       65    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   1       13    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0       31    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1        4    113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0      153    356
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      199    356
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        3    356
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        1    356
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       39    345
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       38    345
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      135    345
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      133    345
6-24 months   ki1135781-COHORTS          INDIA                          0                   0      322    640
6-24 months   ki1135781-COHORTS          INDIA                          0                   1        0    640
6-24 months   ki1135781-COHORTS          INDIA                          1                   0      318    640
6-24 months   ki1135781-COHORTS          INDIA                          1                   1        0    640
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0        3     51
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1        0     51
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0       48     51
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1        0     51
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      249   1274
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1       42   1274
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0      838   1274
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      145   1274


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/ef7d3704-923b-41b8-9265-ec4b25693137/a2d6bd8a-4ab9-4c5d-9118-24f9a46b35d2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ef7d3704-923b-41b8-9265-ec4b25693137/a2d6bd8a-4ab9-4c5d-9118-24f9a46b35d2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ef7d3704-923b-41b8-9265-ec4b25693137/a2d6bd8a-4ab9-4c5d-9118-24f9a46b35d2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ef7d3704-923b-41b8-9265-ec4b25693137/a2d6bd8a-4ab9-4c5d-9118-24f9a46b35d2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.4952886   0.4215018   0.5690755
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.5001319   0.4023508   0.5979131
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4621754   0.3339315   0.5904193
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3675523   0.3274268   0.4076779
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.5817668   0.5152584   0.6482752
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.5761490   0.4611040   0.6911939
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                0.6403525   0.5743190   0.7063861
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   1                    NA                0.6086858   0.5109955   0.7063760
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5115508   0.4145120   0.6085895
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5515135   0.5021929   0.6008341
0-24 months   ki1135781-COHORTS         INDIA        0                    NA                0.2677537   0.2402914   0.2952161
0-24 months   ki1135781-COHORTS         INDIA        1                    NA                0.2135862   0.1843568   0.2428157
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.5833333   0.3560459   0.8106207
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4273504   0.3351375   0.5195633
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3099187   0.2634791   0.3563583
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2679788   0.2434086   0.2925490
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                0.5660610   0.4559354   0.6761866
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                0.5764151   0.4293205   0.7235097
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5970489   0.4014158   0.7926821
0-6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.5081582   0.4457217   0.5705947
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.8005083   0.7344024   0.8666141
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.7453432   0.6256460   0.8650405
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                0.9000000   0.8497073   0.9502927
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   1                    NA                0.8771930   0.7908916   0.9634944
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5564635   0.4285347   0.6843923
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.6334094   0.5640755   0.7027434
0-6 months    ki1135781-COHORTS         INDIA        0                    NA                0.3848729   0.3491490   0.4205969
0-6 months    ki1135781-COHORTS         INDIA        1                    NA                0.3455311   0.3015434   0.3895188
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.6432318   0.5652176   0.7212459
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.5914085   0.5402236   0.6425934
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.4534505   0.3634692   0.5434319
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.4630118   0.3408836   0.5851401
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4305544   0.2760032   0.5851055
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2690006   0.2212729   0.3167283
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2286735   0.1382162   0.3191307
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3861756   0.2116572   0.5606940
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4988321   0.3717644   0.6258998
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4996117   0.4356694   0.5635541
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1437206   0.1007528   0.1866884
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1487164   0.1266214   0.1708114


### Parameter: E(Y)


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.5062112   0.4470670   0.5653554
0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3777778   0.3394240   0.4161316
0-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5423729   0.4984575   0.5862883
0-24 months   ki1135781-COHORTS         INDIA        NA                   NA                0.2413610   0.2219406   0.2607813
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.4418605   0.3551361   0.5285849
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2771220   0.2556194   0.2986246
0-6 months    ki1000109-EE              PAKISTAN     NA                   NA                0.5714286   0.4842880   0.6585691
0-6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.5107914   0.4514901   0.5700927
0-6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.8934010   0.8497799   0.9370221
0-6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.6081633   0.5464350   0.6698915
0-6 months    ki1135781-COHORTS         INDIA        NA                   NA                0.3658340   0.3390250   0.3926430
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.6059406   0.5632798   0.6486014
6-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.4642857   0.3910729   0.5374985
6-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2846348   0.2390527   0.3302168
6-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.4956522   0.4389718   0.5523326
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1467818   0.1275683   0.1659953


### Parameter: RR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN     1                    0                 1.0097788   0.7896250   1.2913131
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.7952658   0.5904416   1.0711437
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.9903435   0.7865146   1.2469957
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   1                    0                 0.9505479   0.7846865   1.1514679
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 1.0781207   0.8738714   1.3301089
0-24 months   ki1135781-COHORTS         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS         INDIA        1                    0                 0.7976964   0.6721761   0.9466562
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.7326007   0.4692527   1.1437415
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.8646744   0.7253045   1.0308248
0-6 months    ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE              PAKISTAN     1                    0                 1.0182914   0.7375175   1.4059563
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.8511165   0.5995000   1.2083391
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.9310875   0.7788722   1.1130503
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   1                    0                 0.9746589   0.8703902   1.0914184
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 1.1382767   0.8809915   1.4706995
0-6 months    ki1135781-COHORTS         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS         INDIA        1                    0                 0.8977797   0.7668193   1.0511059
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9194329   0.7920393   1.0673168
6-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE              PAKISTAN     1                    0                 1.0210856   0.7343703   1.4197413
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.6247774   0.4181383   0.9335352
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.6887643   0.9254600   3.0816294
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 1.0015629   0.7519772   1.3339874
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 1.0347603   0.7408862   1.4452002


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0109225   -0.0316058    0.0534509
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0843977   -0.2063135    0.0375182
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0005980   -0.0351665    0.0339706
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                -0.0177719   -0.0524388    0.0168950
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0308221   -0.0537378    0.1153820
0-24 months   ki1135781-COHORTS         INDIA        0                    NA                -0.0263928   -0.0436589   -0.0091266
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.1414729   -0.3635901    0.0806444
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0327967   -0.0725626    0.0069691
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                 0.0053675   -0.0572562    0.0679913
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0862576   -0.2750615    0.1025464
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0167245   -0.0521785    0.0187295
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                -0.0065990   -0.0355389    0.0223409
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0516997   -0.0620448    0.1654443
0-6 months    ki1135781-COHORTS         INDIA        0                    NA                -0.0190389   -0.0417405    0.0036626
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0372912   -0.1036795    0.0290971
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0108352   -0.0412918    0.0629622
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1459196   -0.2924883    0.0006491
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0477493   -0.0096215    0.1051201
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0031799   -0.1166318    0.1102719
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0030612   -0.0345256    0.0406480


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0215771   -0.0662648    0.1021822
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.2234056   -0.5933752    0.0606599
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0010289   -0.0623122    0.0567190
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                -0.0285455   -0.0856612    0.0255653
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0568282   -0.1130319    0.2007659
0-24 months   ki1135781-COHORTS         INDIA        0                    NA                -0.1093498   -0.1827144   -0.0405360
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.3201754   -0.9499839    0.1062166
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.1183477   -0.2711004    0.0160482
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                 0.0093932   -0.1065905    0.1132205
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1688704   -0.6054062    0.1489642
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0213381   -0.0677422    0.0230493
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                -0.0073864   -0.0403389    0.0245224
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0850096   -0.1224626    0.2541334
0-6 months    ki1135781-COHORTS         INDIA        0                    NA                -0.0520425   -0.1159477    0.0082032
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0615426   -0.1771732    0.0427299
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0233373   -0.0957222    0.1294600
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.5126556   -1.1324569   -0.0730003
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.1727401   -0.0590596    0.3538050
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0064157   -0.2634268    0.1983133
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0208552   -0.2719994    0.2462854

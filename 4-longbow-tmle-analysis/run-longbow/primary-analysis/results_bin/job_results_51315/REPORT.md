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

agecat        studyid                    country                        hdlvry    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  -------  ------------  -------  -----
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0      115    322
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1      200    322
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        4    322
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        3    322
0-24 months   ki1000108-IRC              INDIA                          0                   0      159    395
0-24 months   ki1000108-IRC              INDIA                          0                   1      227    395
0-24 months   ki1000108-IRC              INDIA                          1                   0        3    395
0-24 months   ki1000108-IRC              INDIA                          1                   1        6    395
0-24 months   ki1000109-EE               PAKISTAN                       0                   0       97    255
0-24 months   ki1000109-EE               PAKISTAN                       0                   1       72    255
0-24 months   ki1000109-EE               PAKISTAN                       1                   0       51    255
0-24 months   ki1000109-EE               PAKISTAN                       1                   1       35    255
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                   0       34    675
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                   1       30    675
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0      386    675
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1      225    675
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       40    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1        0    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0      181    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1       13    234
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0       94    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1      132    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       34    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       47    307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   0       79    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   1      139    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0       38    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       55    311
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0      250    682
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      423    682
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        5    682
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        4    682
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       57    513
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       54    513
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      188    513
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      214    513
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
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0       65    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1      132    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        1    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        3    201
0-6 months    ki1000108-IRC              INDIA                          0                   0       86    240
0-6 months    ki1000108-IRC              INDIA                          0                   1      147    240
0-6 months    ki1000108-IRC              INDIA                          1                   0        1    240
0-6 months    ki1000108-IRC              INDIA                          1                   1        6    240
0-6 months    ki1000109-EE               PAKISTAN                       0                   0       31    107
0-6 months    ki1000109-EE               PAKISTAN                       0                   1       41    107
0-6 months    ki1000109-EE               PAKISTAN                       1                   0       15    107
0-6 months    ki1000109-EE               PAKISTAN                       1                   1       20    107
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                   0       11    278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                   1       13    278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   0      125    278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   1      129    278
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       14     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       64     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     78
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0       26    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1      112    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0       13    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1       33    184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                   0       14    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                   1      126    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   0        7    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       51    198
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0       97    326
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      224    326
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        2    326
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        3    326
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0       18    167
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       16    167
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0       52    167
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       81    167
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
6-24 months   ki1000109-EE               PAKISTAN                       0                   0       66    148
6-24 months   ki1000109-EE               PAKISTAN                       0                   1       31    148
6-24 months   ki1000109-EE               PAKISTAN                       1                   0       36    148
6-24 months   ki1000109-EE               PAKISTAN                       1                   1       15    148
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                   0       23    397
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                   1       17    397
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0      261    397
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1       96    397
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       26    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1        0    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0      117    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1       13    156
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0       68    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1       20    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       21    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       14    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   0       65    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   1       13    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0       31    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1        4    113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0      153    356
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      199    356
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        3    356
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        1    356
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       39    346
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       38    346
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      136    346
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      133    346
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
![](/tmp/01cc9123-7b3c-49eb-988c-2d9eaed45a7a/ba2119dd-1da4-4e6d-a1c3-165b039a8b6b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/01cc9123-7b3c-49eb-988c-2d9eaed45a7a/ba2119dd-1da4-4e6d-a1c3-165b039a8b6b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/01cc9123-7b3c-49eb-988c-2d9eaed45a7a/ba2119dd-1da4-4e6d-a1c3-165b039a8b6b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/01cc9123-7b3c-49eb-988c-2d9eaed45a7a/ba2119dd-1da4-4e6d-a1c3-165b039a8b6b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.4228077   0.3419683   0.5036470
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.3913017   0.2825427   0.5000608
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4800737   0.3544728   0.6056747
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3671642   0.3270643   0.4072641
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.5852012   0.5192020   0.6512004
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.6167443   0.5053410   0.7281476
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                0.6369545   0.5709787   0.7029303
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   1                    NA                0.5955356   0.4989468   0.6921244
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4843737   0.3824362   0.5863111
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5329867   0.4804720   0.5855014
0-24 months   ki1135781-COHORTS         INDIA        0                    NA                0.2662094   0.2387754   0.2936435
0-24 months   ki1135781-COHORTS         INDIA        1                    NA                0.2121797   0.1832083   0.2411510
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.5833333   0.3560459   0.8106207
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4273504   0.3351375   0.5195633
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3103167   0.2637581   0.3568753
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2667053   0.2423902   0.2910204
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                0.5881066   0.4696251   0.7065881
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                0.6458257   0.4769594   0.8146920
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4305643   0.2290278   0.6321007
0-6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.5073160   0.4448709   0.5697612
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.8120694   0.7468001   0.8773387
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.7272838   0.5951386   0.8594291
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                0.9000000   0.8497106   0.9502894
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   1                    NA                0.8793103   0.7944001   0.9642206
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5441640   0.3701817   0.7181464
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.6063140   0.5207284   0.6918996
0-6 months    ki1135781-COHORTS         INDIA        0                    NA                0.3865599   0.3511893   0.4219305
0-6 months    ki1135781-COHORTS         INDIA        1                    NA                0.3400967   0.2965176   0.3836757
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.6422450   0.5639509   0.7205391
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.5915025   0.5404494   0.6425556
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.3188734   0.2271351   0.4106116
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.2849323   0.1497277   0.4201369
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3798725   0.2315421   0.5282028
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2683686   0.2206495   0.3160878
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2213297   0.1345608   0.3080986
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3942606   0.2140127   0.5745086
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4878336   0.3635758   0.6120913
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4945528   0.4306375   0.5584682
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1444925   0.1020935   0.1868915
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1482090   0.1263582   0.1700597


### Parameter: E(Y)


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.4196078   0.3541827   0.4850330
0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3777778   0.3394240   0.4161316
0-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5224172   0.4758292   0.5690051
0-24 months   ki1135781-COHORTS         INDIA        NA                   NA                0.2413610   0.2219406   0.2607813
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.4418605   0.3551361   0.5285849
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2771220   0.2556194   0.2986246
0-6 months    ki1000109-EE              PAKISTAN     NA                   NA                0.5700935   0.4742263   0.6659606
0-6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.5107914   0.4514901   0.5700927
0-6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.8939394   0.8505280   0.9373508
0-6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5808383   0.5055058   0.6561709
0-6 months    ki1135781-COHORTS         INDIA        NA                   NA                0.3658340   0.3390250   0.3926430
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.6059406   0.5632798   0.6486014
6-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.3108108   0.2352987   0.3863229
6-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2846348   0.2390527   0.3302168
6-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.4942197   0.4375393   0.5509000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1467818   0.1275683   0.1659953


### Parameter: RR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN     1                    0                 0.9254840   0.6600604   1.2976399
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.7648079   0.5763805   1.0148350
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.0539012   0.8527867   1.3024450
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   1                    0                 0.9349735   0.7707287   1.1342194
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 1.1003627   0.8719810   1.3885602
0-24 months   ki1135781-COHORTS         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS         INDIA        1                    0                 0.7970403   0.6715512   0.9459789
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.7326007   0.4692527   1.1437415
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.8594616   0.7210181   1.0244878
0-6 months    ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE              PAKISTAN     1                    0                 1.0981439   0.7857499   1.5347378
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA        1                    0                 1.1782586   0.7256920   1.9130612
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.8955931   0.7336167   1.0933326
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   1                    0                 0.9770115   0.8738707   1.0923258
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 1.1142118   0.7844403   1.5826162
0-6 months    ki1135781-COHORTS         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS         INDIA        1                    0                 0.8798033   0.7515700   1.0299159
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9209919   0.7930428   1.0695843
6-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE              PAKISTAN     1                    0                 0.8935595   0.5104483   1.5642104
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.7064704   0.4598670   1.0853147
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.7813275   0.9771175   3.2474373
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 1.0137737   0.7614574   1.3496974
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 1.0257208   0.7385478   1.4245567


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0031998   -0.0501196    0.0437199
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1022960   -0.2215903    0.0169983
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0021393   -0.0360274    0.0317487
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                -0.0131603   -0.0479113    0.0215907
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0380435   -0.0521365    0.1282235
0-24 months   ki1135781-COHORTS         INDIA        0                    NA                -0.0248485   -0.0421184   -0.0075785
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.1414729   -0.3635901    0.0806444
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0331947   -0.0729778    0.0065883
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                -0.0180131   -0.0878013    0.0517751
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0802271   -0.1144733    0.2749276
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0240260   -0.0617560    0.0137041
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                -0.0060606   -0.0350005    0.0228793
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0366743   -0.1218828    0.1952314
0-6 months    ki1135781-COHORTS         INDIA        0                    NA                -0.0207259   -0.0430006    0.0015488
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0363044   -0.1028629    0.0302540
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0080625   -0.0650404    0.0489153
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0952377   -0.2360147    0.0455393
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0550931   -0.0033658    0.1135520
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0063861   -0.1030013    0.1157735
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0022893   -0.0346272    0.0392058


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0076258   -0.1258797    0.0982077
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.2707834   -0.6305088    0.0095787
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0036692   -0.0635086    0.0528034
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                -0.0210972   -0.0782661    0.0330407
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0728221   -0.1171425    0.2304841
0-24 months   ki1135781-COHORTS         INDIA        0                    NA                -0.1029514   -0.1763680   -0.0341167
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.3201754   -0.9499839    0.1062166
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.1197838   -0.2725341    0.0146309
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                -0.0315968   -0.1617116    0.0839448
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.1570643   -0.3245783    0.4635723
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0304881   -0.0798624    0.0166286
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                -0.0067797   -0.0397071    0.0251050
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0631403   -0.2536850    0.2998989
0-6 months    ki1135781-COHORTS         INDIA        0                    NA                -0.0566539   -0.1193464    0.0025274
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0599142   -0.1758395    0.0445821
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0259404   -0.2272547    0.1423511
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.3345962   -0.9368396    0.0803849
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.1993073   -0.0330782    0.3794189
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0129216   -0.2352358    0.2112245
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0155966   -0.2710912    0.2376235

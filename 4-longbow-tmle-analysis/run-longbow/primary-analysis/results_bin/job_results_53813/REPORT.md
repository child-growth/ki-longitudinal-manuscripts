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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        hdlvry    ever_co   n_cell      n
------------  -------------------------  -----------------------------  -------  --------  -------  -----
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0      279    370
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1       83    370
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0        7    370
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1        1    370
0-24 months   ki1000108-IRC              INDIA                          0               0      328    410
0-24 months   ki1000108-IRC              INDIA                          0               1       74    410
0-24 months   ki1000108-IRC              INDIA                          1               0        6    410
0-24 months   ki1000108-IRC              INDIA                          1               1        2    410
0-24 months   ki1000109-EE               PAKISTAN                       0               0      143    377
0-24 months   ki1000109-EE               PAKISTAN                       0               1      110    377
0-24 months   ki1000109-EE               PAKISTAN                       1               0       65    377
0-24 months   ki1000109-EE               PAKISTAN                       1               1       59    377
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0               0      140   1232
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0               1       24   1232
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1               0      795   1232
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1               1      273   1232
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               0       55    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               1       26    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1               0      208    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1               1      129    418
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      456    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1       63    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      154    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       27    700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0      545    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1       45    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      142    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       26    758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     2121   2274
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      113   2274
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       38   2274
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        2   2274
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0               0      118    637
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0               1       38    637
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      335    637
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1               1      146    637
0-24 months   ki1135781-COHORTS          INDIA                          0               0     2904   5089
0-24 months   ki1135781-COHORTS          INDIA                          0               1      232   5089
0-24 months   ki1135781-COHORTS          INDIA                          1               0     1679   5089
0-24 months   ki1135781-COHORTS          INDIA                          1               1      274   5089
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               0       40    350
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1        2    350
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0      276    350
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1       32    350
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0     1007   4501
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1      164   4501
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0     2757   4501
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1      573   4501
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               0      327    365
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               1       31    365
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0        7    365
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1        0    365
0-6 months    ki1000108-IRC              INDIA                          0               0      377    409
0-6 months    ki1000108-IRC              INDIA                          0               1       24    409
0-6 months    ki1000108-IRC              INDIA                          1               0        7    409
0-6 months    ki1000108-IRC              INDIA                          1               1        1    409
0-6 months    ki1000109-EE               PAKISTAN                       0               0      215    377
0-6 months    ki1000109-EE               PAKISTAN                       0               1       38    377
0-6 months    ki1000109-EE               PAKISTAN                       1               0      106    377
0-6 months    ki1000109-EE               PAKISTAN                       1               1       18    377
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0               0      159   1226
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0               1        4   1226
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0      985   1226
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1       78   1226
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0       77    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               1        4    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0      307    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1       28    416
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      497    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0               1       22    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      173    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1        8    700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0      581    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               1        9    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      160    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1        8    758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     2216   2274
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1       18   2274
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       39   2274
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        1   2274
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0               0      150    637
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0               1        6    637
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1               0      456    637
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1               1       25    637
0-6 months    ki1135781-COHORTS          INDIA                          0               0     2958   4929
0-6 months    ki1135781-COHORTS          INDIA                          0               1       77   4929
0-6 months    ki1135781-COHORTS          INDIA                          1               0     1837   4929
0-6 months    ki1135781-COHORTS          INDIA                          1               1       57   4929
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               0       39    348
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1        2    348
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0      291    348
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1       16    348
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0     1124   4456
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1       36   4456
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0     3211   4456
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1       85   4456
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0      295    370
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1       67    370
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0        7    370
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1        1    370
6-24 months   ki1000108-IRC              INDIA                          0               0      340    410
6-24 months   ki1000108-IRC              INDIA                          0               1       62    410
6-24 months   ki1000108-IRC              INDIA                          1               0        6    410
6-24 months   ki1000108-IRC              INDIA                          1               1        2    410
6-24 months   ki1000109-EE               PAKISTAN                       0               0      147    370
6-24 months   ki1000109-EE               PAKISTAN                       0               1      101    370
6-24 months   ki1000109-EE               PAKISTAN                       1               0       68    370
6-24 months   ki1000109-EE               PAKISTAN                       1               1       54    370
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0               0      129   1128
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0               1       24   1128
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1               0      727   1128
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1               1      248   1128
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               0       55    401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               1       24    401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1               0      201    401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1               1      121    401
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      407    614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1       52    614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      132    614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       23    614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0      528    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1       39    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      139    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       24    730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1772   1911
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      108   1911
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       30   1911
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        1   1911
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0               0      100    549
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0               1       36    549
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      273    549
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1               1      140    549
6-24 months   ki1135781-COHORTS          INDIA                          0               0     2728   4740
6-24 months   ki1135781-COHORTS          INDIA                          0               1      195   4740
6-24 months   ki1135781-COHORTS          INDIA                          1               0     1563   4740
6-24 months   ki1135781-COHORTS          INDIA                          1               1      254   4740
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               0       38    337
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1        1    337
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0      277    337
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1       21    337
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0     1028   4492
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1      140   4492
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0     2798   4492
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1      526   4492


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
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/10fa8e23-bd43-436f-8ec7-539abaa8d490/26c33033-8645-4a29-83ad-e9aae8929da8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/10fa8e23-bd43-436f-8ec7-539abaa8d490/26c33033-8645-4a29-83ad-e9aae8929da8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/10fa8e23-bd43-436f-8ec7-539abaa8d490/26c33033-8645-4a29-83ad-e9aae8929da8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/10fa8e23-bd43-436f-8ec7-539abaa8d490/26c33033-8645-4a29-83ad-e9aae8929da8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                0.4289645   0.3681023   0.4898267
0-24 months   ki1000109-EE               PAKISTAN     1                    NA                0.4861589   0.3972036   0.5751142
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.1408475   0.0696116   0.2120834
0-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.2571950   0.2245968   0.2897932
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.3756390   0.2640873   0.4871907
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.3793216   0.3273856   0.4312576
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.1215824   0.0934377   0.1497270
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1477221   0.0955504   0.1998938
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0762542   0.0548314   0.0976771
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1622765   0.1073887   0.2171643
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.2570358   0.1835996   0.3304720
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.2994565   0.2583748   0.3405382
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                0.0826470   0.0721268   0.0931672
0-24 months   ki1135781-COHORTS          INDIA        1                    NA                0.1305027   0.1143818   0.1466236
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.1448350   0.1193912   0.1702789
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.1697652   0.1556887   0.1838416
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                0.1520247   0.1077845   0.1962648
0-6 months    ki1000109-EE               PAKISTAN     1                    NA                0.1506719   0.0892007   0.2121431
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0423892   0.0250433   0.0597351
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0441989   0.0142343   0.0741635
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0152542   0.0053581   0.0251504
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0476190   0.0153953   0.0798428
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                0.0384615   0.0082604   0.0686627
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.0519751   0.0321221   0.0718280
0-6 months    ki1135781-COHORTS          INDIA        0                    NA                0.0266060   0.0204690   0.0327430
0-6 months    ki1135781-COHORTS          INDIA        1                    NA                0.0344785   0.0252606   0.0436964
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0329417   0.0200535   0.0458300
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0257779   0.0189102   0.0326457
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                0.4035103   0.3425210   0.4644996
6-24 months   ki1000109-EE               PAKISTAN     1                    NA                0.4537097   0.3638083   0.5436110
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.1843486   0.1059489   0.2627482
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.2562194   0.2228711   0.2895678
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.3682653   0.2574037   0.4791269
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.3753389   0.3220429   0.4286350
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.1129792   0.0839770   0.1419815
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1482782   0.0915187   0.2050378
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0682356   0.0473882   0.0890830
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1449233   0.0898482   0.1999984
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.2767636   0.2011621   0.3523651
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.3329766   0.2874167   0.3785365
6-24 months   ki1135781-COHORTS          INDIA        0                    NA                0.0757071   0.0651432   0.0862710
6-24 months   ki1135781-COHORTS          INDIA        1                    NA                0.1279924   0.1113569   0.1446280
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.1238554   0.1009179   0.1467929
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.1557444   0.1419434   0.1695454


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     NA                   NA                0.4482759   0.3980083   0.4985434
0-24 months   ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.2410714   0.1975050   0.2846379
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.3708134   0.3244530   0.4171738
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.2888540   0.2536300   0.3240780
0-24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.0994301   0.0912079   0.1076524
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.1637414   0.1510998   0.1763830
0-6 months    ki1000109-EE               PAKISTAN     NA                   NA                0.1485411   0.1125944   0.1844878
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0224274   0.0118796   0.0329753
0-6 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.0486656   0.0319433   0.0653880
0-6 months    ki1135781-COHORTS          INDIA        NA                   NA                0.0271860   0.0226456   0.0317265
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0271544   0.0212424   0.0330664
6-24 months   ki1000109-EE               PAKISTAN     NA                   NA                0.4189189   0.3685783   0.4692595
6-24 months   ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.2411348   0.1953341   0.2869354
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.3615960   0.3145115   0.4086805
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.3205829   0.2815081   0.3596576
6-24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.0947257   0.0863884   0.1030631
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.1482636   0.1364361   0.1600910


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE               PAKISTAN     1                    0                 1.1333313   0.8998880   1.427333
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.8260524   1.1480311   2.904510
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.0098036   0.7288438   1.399070
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.2149961   0.7969839   1.852253
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 2.1280980   1.3697083   3.306398
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.1650381   0.8486136   1.599449
0-24 months   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA        1                    0                 1.5790374   1.3231304   1.884439
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.1721279   0.9694037   1.417246
0-6 months    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE               PAKISTAN     1                    0                 0.9911020   0.6017884   1.632273
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.0426921   0.4723343   2.301774
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 3.1216931   1.2225460   7.971044
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    0                 1.3513514   0.5643390   3.235910
0-6 months    ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA        1                    0                 1.2958923   0.9103002   1.844817
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    0                 0.7825311   0.4946622   1.237925
6-24 months   ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE               PAKISTAN     1                    0                 1.1244066   0.8760643   1.443148
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.3898640   0.9763260   1.978562
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.0192081   0.7300702   1.422856
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.3124381   0.8278755   2.080619
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 2.1238674   1.3041327   3.458860
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.2031083   0.8858576   1.633976
6-24 months   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA        1                    0                 1.6906262   1.3980740   2.044396
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.2574694   1.0250523   1.542584


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0193114   -0.0158818   0.0545046
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.1002239    0.0500719   0.1503759
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                -0.0048256   -0.1073272   0.0976760
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0069891   -0.0083359   0.0223140
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0174133    0.0041470   0.0306796
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0318182   -0.0337005   0.0973369
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0167831    0.0088329   0.0247334
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0189064   -0.0023702   0.0401829
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                -0.0034835   -0.0285552   0.0215881
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0004679   -0.0084848   0.0094207
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0071732   -0.0003591   0.0147055
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0102041   -0.0170906   0.0374988
0-6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.0005801   -0.0035882   0.0047483
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                -0.0057873   -0.0163345   0.0047598
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0154086   -0.0202486   0.0510659
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0567862    0.0087036   0.1048688
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                -0.0066693   -0.1087056   0.0953670
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0091706   -0.0068170   0.0251583
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0180658    0.0047906   0.0313410
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0438193   -0.0229281   0.1105667
6-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0190186    0.0108349   0.0272024
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0244082    0.0044344   0.0443820


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0430792   -0.0388097   0.1185129
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.4157436    0.1314683   0.6069740
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                -0.0130136   -0.3308834   0.2289358
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0543594   -0.0722808   0.1660430
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.1859054    0.0373319   0.3115488
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.1101532   -0.1481848   0.3103660
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.1687933    0.0858946   0.2441741
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.1154649   -0.0255251   0.2370715
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                -0.0234517   -0.2069304   0.1321344
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0109184   -0.2216378   0.1992043
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.3198405   -0.0594838   0.5633562
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.2096774   -0.5983068   0.6092053
0-6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.0213367   -0.1446630   0.1632630
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                -0.2131270   -0.6645105   0.1158499
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0367819   -0.0522193   0.1182550
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.2354957   -0.0206254   0.4273444
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                -0.0184440   -0.3437199   0.2280920
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0750769   -0.0647234   0.1965211
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.2093341    0.0474493   0.3437067
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.1366863   -0.0985380   0.3215432
6-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.2007758    0.1111281   0.2813820
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.1646269    0.0181010   0.2892872

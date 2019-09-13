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
0-24 months   ki1000109-EE               PAKISTAN                       0               0      160    377
0-24 months   ki1000109-EE               PAKISTAN                       0               1       93    377
0-24 months   ki1000109-EE               PAKISTAN                       1               0       74    377
0-24 months   ki1000109-EE               PAKISTAN                       1               1       50    377
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0               0      104    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0               1       36    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      280    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1               1      141    561
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
0-6 months    ki1000109-EE               PAKISTAN                       0               0      219    377
0-6 months    ki1000109-EE               PAKISTAN                       0               1       34    377
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0               0      136    561
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0               1        4    561
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1               0      404    561
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1               1       17    561
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
6-24 months   ki1000109-EE               PAKISTAN                       0               0      165    371
6-24 months   ki1000109-EE               PAKISTAN                       0               1       84    371
6-24 months   ki1000109-EE               PAKISTAN                       1               0       75    371
6-24 months   ki1000109-EE               PAKISTAN                       1               1       47    371
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0               0      101    549
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0               1       35    549
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      274    549
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1               1      139    549
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
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/7faccd80-a3d2-4dfc-8a5a-16f9e3ab2a5c/415aca07-3e1c-4a3d-8d5d-9e4fb44d735b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7faccd80-a3d2-4dfc-8a5a-16f9e3ab2a5c/415aca07-3e1c-4a3d-8d5d-9e4fb44d735b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7faccd80-a3d2-4dfc-8a5a-16f9e3ab2a5c/415aca07-3e1c-4a3d-8d5d-9e4fb44d735b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7faccd80-a3d2-4dfc-8a5a-16f9e3ab2a5c/415aca07-3e1c-4a3d-8d5d-9e4fb44d735b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                0.3652674   0.3056187   0.4249160
0-24 months   ki1000109-EE               PAKISTAN     1                    NA                0.3968766   0.3106595   0.4830937
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.1408475   0.0696116   0.2120834
0-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.2571950   0.2245968   0.2897932
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.3803893   0.2696498   0.4911288
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.3806581   0.3285449   0.4327714
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.1218930   0.0937513   0.1500347
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1347990   0.0827884   0.1868095
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0760959   0.0546437   0.0975482
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1555315   0.1003005   0.2107626
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.2751623   0.1963865   0.3539380
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.3290846   0.2838783   0.3742908
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                0.0827019   0.0721607   0.0932431
0-24 months   ki1135781-COHORTS          INDIA        1                    NA                0.1303871   0.1143887   0.1463855
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.1464664   0.1208971   0.1720357
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.1689415   0.1548920   0.1829910
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                0.1326653   0.0905332   0.1747974
0-6 months    ki1000109-EE               PAKISTAN     1                    NA                0.1443825   0.0812878   0.2074771
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0423892   0.0250433   0.0597351
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0441989   0.0142343   0.0741635
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0152542   0.0053581   0.0251504
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0476190   0.0153953   0.0798428
0-6 months    ki1135781-COHORTS          INDIA        0                    NA                0.0265248   0.0204587   0.0325909
0-6 months    ki1135781-COHORTS          INDIA        1                    NA                0.0331426   0.0240975   0.0421878
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0329463   0.0199330   0.0459596
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0257116   0.0189087   0.0325145
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                0.3373615   0.2785017   0.3962214
6-24 months   ki1000109-EE               PAKISTAN     1                    NA                0.3765943   0.2897989   0.4633897
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.1843486   0.1059489   0.2627482
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.2562194   0.2228711   0.2895678
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.3663056   0.2494162   0.4831949
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.3736172   0.3205991   0.4266354
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.1141823   0.0851704   0.1431941
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1425140   0.0862333   0.1987946
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0679516   0.0471012   0.0888019
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1397592   0.0857443   0.1937742
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.2641160   0.1877272   0.3405048
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.3313058   0.2857007   0.3769110
6-24 months   ki1135781-COHORTS          INDIA        0                    NA                0.0762592   0.0656377   0.0868807
6-24 months   ki1135781-COHORTS          INDIA        1                    NA                0.1253208   0.1087194   0.1419222
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.1249771   0.1023331   0.1476212
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.1553416   0.1415406   0.1691427


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     NA                   NA                0.3793103   0.3302660   0.4283547
0-24 months   ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.2410714   0.1975050   0.2846379
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.3708134   0.3244530   0.4171738
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.3155080   0.2770184   0.3539976
0-24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.0994301   0.0912079   0.1076524
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.1637414   0.1510998   0.1763830
0-6 months    ki1000109-EE               PAKISTAN     NA                   NA                0.1379310   0.1030768   0.1727853
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0224274   0.0118796   0.0329753
0-6 months    ki1135781-COHORTS          INDIA        NA                   NA                0.0271860   0.0226456   0.0317265
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0271544   0.0212424   0.0330664
6-24 months   ki1000109-EE               PAKISTAN     NA                   NA                0.3530997   0.3044013   0.4017981
6-24 months   ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.2411348   0.1953341   0.2869354
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.3615960   0.3145115   0.4086805
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.3169399   0.2779838   0.3558960
6-24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.0947257   0.0863884   0.1030631
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.1482636   0.1364361   0.1600910


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE               PAKISTAN     1                    0                 1.0865372   0.8286397   1.424700
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.8260524   1.1480311   2.904510
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.0007067   0.7255626   1.380190
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.1058794   0.7050749   1.734524
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 2.0438882   1.2983124   3.217622
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.1959654   0.8702795   1.643533
0-24 months   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA        1                    0                 1.5765904   1.3216825   1.880661
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.1534489   0.9549492   1.393210
0-6 months    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE               PAKISTAN     1                    0                 1.0883215   0.6346307   1.866351
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.0426921   0.4723343   2.301774
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 3.1216931   1.2225460   7.971044
0-6 months    ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA        1                    0                 1.2494970   0.8750615   1.784152
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    0                 0.7804108   0.4924527   1.236750
6-24 months   ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE               PAKISTAN     1                    0                 1.1162929   0.8361892   1.490225
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.3898640   0.9763260   1.978562
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.0199605   0.7193326   1.446229
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.2481269   0.7809932   1.994666
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 2.0567471   1.2555846   3.369115
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.2543951   0.9102726   1.728611
6-24 months   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA        1                    0                 1.6433521   1.3568864   1.990296
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.2429604   1.0162667   1.520221


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0140430   -0.0207333   0.0488193
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.1002239    0.0500719   0.1503759
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                -0.0095759   -0.1113584   0.0922065
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0066784   -0.0086917   0.0220486
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0175716    0.0043113   0.0308319
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0403457   -0.0299216   0.1106131
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0167282    0.0087524   0.0247041
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0172750   -0.0040624   0.0386124
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0052657   -0.0194119   0.0299434
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0004679   -0.0084848   0.0094207
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0071732   -0.0003591   0.0147055
0-6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.0006613   -0.0034502   0.0047727
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                -0.0057919   -0.0164454   0.0048616
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0157382   -0.0187584   0.0502348
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0567862    0.0087036   0.1048688
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                -0.0047096   -0.1123167   0.1028975
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0079676   -0.0079970   0.0239321
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0183498    0.0050239   0.0316757
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0528239   -0.0149891   0.1206368
6-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0184665    0.0102295   0.0267035
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0232864    0.0035830   0.0429899


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0370224   -0.0592168   0.1245174
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.4157436    0.1314683   0.6069740
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                -0.0258241   -0.3406722   0.2150840
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0519433   -0.0750479   0.1639336
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.1875957    0.0389321   0.3132632
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.1278755   -0.1257671   0.3243708
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.1682409    0.0850548   0.2438639
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.1055017   -0.0357475   0.2274881
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0381767   -0.1584424   0.2014241
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0109184   -0.2216378   0.1992043
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.3198405   -0.0594838   0.5633562
0-6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.0243236   -0.1392324   0.1643984
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                -0.2132943   -0.6696062   0.1183053
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0445715   -0.0583121   0.1374533
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.2354957   -0.0206254   0.4273444
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                -0.0130244   -0.3589745   0.2448582
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0652279   -0.0742501   0.1865964
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.2126245    0.0500456   0.3473791
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.1666684   -0.0771303   0.3552855
6-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.1949470    0.1046612   0.2761285
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.1570610    0.0129094   0.2801612

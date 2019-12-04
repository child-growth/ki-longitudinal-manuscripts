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

**Outcome Variable:** whz

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

agecat      studyid                    country                        hdlvry    n_cell      n  outcome_variable 
----------  -------------------------  -----------------------------  -------  -------  -----  -----------------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0             86     86  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              0     86  whz              
Birth       ki1000108-IRC              INDIA                          0            337    343  whz              
Birth       ki1000108-IRC              INDIA                          1              6    343  whz              
Birth       ki1000109-EE               PAKISTAN                       0            120    175  whz              
Birth       ki1000109-EE               PAKISTAN                       1             55    175  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          0            108    957  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            849    957  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     0            387    532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1            145    532  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0            548    707  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1            159    707  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          0            143    596  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          1            453    596  whz              
Birth       ki1135781-COHORTS          INDIA                          0           2763   4389  whz              
Birth       ki1135781-COHORTS          INDIA                          1           1626   4389  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0             27    292  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            265    292  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0            500   2384  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1           1884   2384  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            357    365  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              8    365  whz              
6 months    ki1000108-IRC              INDIA                          0            400    408  whz              
6 months    ki1000108-IRC              INDIA                          1              8    408  whz              
6 months    ki1000109-EE               PAKISTAN                       0            252    373  whz              
6 months    ki1000109-EE               PAKISTAN                       1            121    373  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          0            147   1088  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            941   1088  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             76    380  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            304    380  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            450    603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            153    603  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            554    715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            161    715  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1888   1920  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             32   1920  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          0            129    528  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          1            399    528  whz              
6 months    ki1135781-COHORTS          INDIA                          0           2896   4694  whz              
6 months    ki1135781-COHORTS          INDIA                          1           1798   4694  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0             39    334  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            295    334  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           1082   4042  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2960   4042  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            361    369  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              8    369  whz              
24 months   ki1000108-IRC              INDIA                          0            401    409  whz              
24 months   ki1000108-IRC              INDIA                          1              8    409  whz              
24 months   ki1000109-EE               PAKISTAN                       0            112    167  whz              
24 months   ki1000109-EE               PAKISTAN                       1             55    167  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            433    579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            146    579  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            391    514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            123    514  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6      6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      6  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          0            118    455  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          1            337    455  whz              
24 months   ki1135781-COHORTS          INDIA                          0           2214   3533  whz              
24 months   ki1135781-COHORTS          INDIA                          1           1319   3533  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             34    289  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            255    289  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           1032   3993  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2961   3993  whz              


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/315320e6-3070-444d-a6e7-04e6bbdc8b41/6bcbc5b9-37a8-4e4e-a051-89afcea2710e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/315320e6-3070-444d-a6e7-04e6bbdc8b41/6bcbc5b9-37a8-4e4e-a051-89afcea2710e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/315320e6-3070-444d-a6e7-04e6bbdc8b41/6bcbc5b9-37a8-4e4e-a051-89afcea2710e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.9918991   -1.1804921   -0.8033061
Birth       ki1000108-IRC              INDIA                          1                    NA                -2.0600000   -3.2141159   -0.9058841
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -0.3009036   -0.5296753   -0.0721318
Birth       ki1000109-EE               PAKISTAN                       1                    NA                -0.4275750   -0.7750266   -0.0801234
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.6740938   -0.8050105   -0.5431772
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.6629343   -0.8796010   -0.4462675
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.2863908   -1.3775808   -1.1952007
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.3424662   -1.4829709   -1.2019616
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.2015906   -1.2956822   -1.1074990
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.4021358   -1.5929093   -1.2113623
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.1992707   -1.3911940   -1.0073473
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.1093820   -1.2109589   -1.0078051
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.9804000   -1.0268812   -0.9339187
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.9961279   -1.0585196   -0.9337362
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.6172019   -1.0747269   -0.1596769
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.8722268   -0.9971024   -0.7473512
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.6979600   -0.8338164   -0.5621036
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.6933576   -0.7484661   -0.6382491
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.5089262   -0.6640006   -0.3538519
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.3072917   -0.9616161    0.3470328
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.5926333   -0.7305001   -0.4547666
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.9137500   -1.5807163   -0.2467837
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.7097690   -0.8524169   -0.5671212
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -0.8443223   -1.0369578   -0.6516867
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.4164458   -0.5327295   -0.3001621
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.7045253   -0.8526779   -0.5563727
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.7785495   -1.0346834   -0.5224157
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -1.0766047   -1.2073573   -0.9458522
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1853247   -0.2811718   -0.0894777
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2413626   -0.4051903   -0.0775348
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0652385   -0.0240061    0.1544831
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0649827   -0.2380434    0.1080780
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0679948    0.0129453    0.1230444
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2279651   -0.0631089    0.5190392
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.5052692   -0.6887035   -0.3218350
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.6289365   -0.7304883   -0.5273847
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.6595297   -0.7034290   -0.6156304
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.8074305   -0.8685434   -0.7463177
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.5742260   -0.9427758   -0.2056762
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6294545   -0.7379730   -0.5209360
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.2702943   -0.3497458   -0.1908428
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.4121896   -0.4657512   -0.3586280
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.5487673   -0.6500596   -0.4474751
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.3150000   -0.8468853    0.2168853
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.7384331   -0.8312559   -0.6456103
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.1158333   -1.4387631   -0.7929036
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.9842699   -1.1695237   -0.7990162
24 months   ki1000109-EE               PAKISTAN                       1                    NA                -1.1082105   -1.3386140   -0.8778070
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.8650653   -0.9600677   -0.7700630
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9697040   -1.1393178   -0.8000903
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.5654748   -0.6761814   -0.4547682
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.7323372   -0.9137644   -0.5509100
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.1235825   -1.3247924   -0.9223726
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.1312827   -1.2367097   -1.0258556
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.5385266   -0.5831044   -0.4939489
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.8530166   -0.9144716   -0.7915616
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.0674498   -1.7349565   -0.3999432
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3457700   -1.4864307   -1.2051093
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.1779146   -1.2484207   -1.1074086
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.2612043   -1.2999982   -1.2224104


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -0.3410000   -0.5302198   -0.1517802
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6570846   -0.8496671   -0.4645022
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1277349   -1.2174865   -1.0379833
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9755867   -1.0106993   -0.9404741
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.8532192   -0.9644938   -0.7419446
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6907341   -0.7437042   -0.6377640
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5045068   -0.6566169   -0.3523968
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.7695800   -0.8839306   -0.6552294
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6734421   -0.8121314   -0.5347528
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0688763    0.0147308    0.1230218
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.5992551   -0.6878945   -0.5106156
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.7160077   -0.7492815   -0.6827338
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.6044910   -0.7122040   -0.4967781
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3760651   -0.4191017   -0.3330285
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5436992   -0.6434110   -0.4439874
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -1.0103892   -1.1580613   -0.8627171
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1238388   -1.2161263   -1.0315513
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6520577   -0.6860033   -0.6181122
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2989273   -1.4377964   -1.1600583
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2421463   -1.2763113   -1.2079812


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                 -1.0681009   -2.2375241    0.1013224
Birth       ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       1                    0                 -0.1266715   -0.5445476    0.2912047
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0111596   -0.2317793    0.2540984
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0560755   -0.2240245    0.1118735
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.2005452   -0.4141728    0.0130824
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0898886   -0.1270712    0.3068484
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 -0.0157279   -0.0934056    0.0619497
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.2550249   -0.7485789    0.2385292
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0046024   -0.1412973    0.1505021
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.2016346   -0.4708151    0.8740843
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 -0.3211167   -1.0021830    0.3599496
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.1345533   -0.3720007    0.1028941
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.2880795   -0.4727301   -0.1034289
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.2980552   -0.5852909   -0.0108195
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0560378   -0.2457423    0.1336666
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1302213   -0.3262436    0.0658010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1599703   -0.1361222    0.4560628
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.1236673   -0.3335918    0.0862573
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.1479008   -0.2229496   -0.0728521
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0552285   -0.4227976    0.3123406
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.1418953   -0.2358378   -0.0479528
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.2337673   -0.3076771    0.7752117
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.3774002   -0.7134057   -0.0413948
24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.1239405   -0.4202210    0.1723399
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1046387   -0.2987405    0.0894631
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1668624   -0.3795679    0.0458430
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0077002   -0.2350989    0.2196985
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.3144900   -0.3902949   -0.2386850
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.2783202   -0.9239440    0.3673036
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0832897   -0.1624530   -0.0041263


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.0186840   -0.0514705    0.0141025
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -0.0400964   -0.1731691    0.0929763
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0170092   -0.1942499    0.2282683
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0120679   -0.0582200    0.0340842
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0425608   -0.0906044    0.0054829
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0715358   -0.0947827    0.2378542
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0048133   -0.0250979    0.0347244
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.2360173   -0.6989566    0.2269221
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0072259   -0.1083735    0.1228254
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0044194   -0.0126632    0.0215020
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0062964   -0.0238639    0.0112711
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0598110   -0.1370617    0.0174398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.2569963   -0.4195721   -0.0944205
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.2336084   -0.4692219    0.0020052
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0137659   -0.0618724    0.0343405
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0354763   -0.0800941    0.0091415
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0008815   -0.0064137    0.0081767
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0939858   -0.2544804    0.0665088
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0564780   -0.0862660   -0.0266900
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0302650   -0.3684076    0.3078776
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1057708   -0.1728534   -0.0386881
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0050681   -0.0089078    0.0190440
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0073819   -0.0171941    0.0024303
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0261193   -0.1196202    0.0673816
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0278017   -0.0763299    0.0207265
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0448754   -0.0958943    0.0061435
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0002563   -0.1745963    0.1740836
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.1135311   -0.1434700   -0.0835922
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.2314775   -0.8361178    0.3731628
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0642316   -0.1234703   -0.0049929

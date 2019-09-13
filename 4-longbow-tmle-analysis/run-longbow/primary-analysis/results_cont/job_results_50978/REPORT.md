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

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
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

agecat      studyid                    country                        hdlvry    n_cell      n
----------  -------------------------  -----------------------------  -------  -------  -----
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0             90     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              0     90
Birth       ki1000108-IRC              INDIA                          0            381    388
Birth       ki1000108-IRC              INDIA                          1              7    388
Birth       ki1000109-EE               PAKISTAN                       0              2      2
Birth       ki1000109-EE               PAKISTAN                       1              0      2
Birth       ki1000304b-SAS-CompFeed    INDIA                          0             11    180
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            169    180
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0             22     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              5     27
Birth       ki1135781-COHORTS          INDIA                          0           2938   4694
Birth       ki1135781-COHORTS          INDIA                          1           1756   4694
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0             11    300
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            289    300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0             47    820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            773    820
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            358    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              8    366
6 months    ki1000108-IRC              INDIA                          0            399    407
6 months    ki1000108-IRC              INDIA                          1              8    407
6 months    ki1000109-EE               PAKISTAN                       0            248    370
6 months    ki1000109-EE               PAKISTAN                       1            122    370
6 months    ki1000304b-SAS-CompFeed    INDIA                          0            147   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            944   1091
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             76    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            304    380
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            433    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            150    583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            554    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            161    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1889   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             32   1921
6 months    ki1113344-GMS-Nepal        NEPAL                          0            129    527
6 months    ki1113344-GMS-Nepal        NEPAL                          1            398    527
6 months    ki1135781-COHORTS          INDIA                          0           2900   4699
6 months    ki1135781-COHORTS          INDIA                          1           1799   4699
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0             39    332
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            293    332
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           1081   4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2957   4038
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            361    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              8    369
24 months   ki1000108-IRC              INDIA                          0            401    409
24 months   ki1000108-IRC              INDIA                          1              8    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            432    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            145    577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            391    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            123    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      6
24 months   ki1113344-GMS-Nepal        NEPAL                          0            120    467
24 months   ki1113344-GMS-Nepal        NEPAL                          1            347    467
24 months   ki1135781-COHORTS          INDIA                          0           2233   3559
24 months   ki1135781-COHORTS          INDIA                          1           1326   3559
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             35    291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            256    291
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           1033   4005
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2972   4005


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/b2f29cfd-3833-46a1-b0b8-222a60afb9ce/85f2147a-a6f6-4b45-a5a6-bbafb954611d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b2f29cfd-3833-46a1-b0b8-222a60afb9ce/85f2147a-a6f6-4b45-a5a6-bbafb954611d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b2f29cfd-3833-46a1-b0b8-222a60afb9ce/85f2147a-a6f6-4b45-a5a6-bbafb954611d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.3138845   -0.4765233   -0.1512457
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.0100000   -1.0310607    1.0510607
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -2.5572118   -2.7131506   -2.4012730
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.3531181   -1.5244103   -1.1818258
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.1640909   -1.6003506   -0.7278312
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.8720000   -1.8180272    0.0740272
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.6271730   -0.6719424   -0.5824035
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.7551840   -0.8146689   -0.6956991
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.7034528   -2.5528177   -0.8540879
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3298832   -1.4803775   -1.1793889
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.1554440   -1.4838218   -0.8270661
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.5151673   -1.6023485   -1.4279861
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.4288687   -1.5726614   -1.2850760
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.9754167   -1.7693720   -0.1814613
6 months    ki1000108-IRC              INDIA                          0                    NA                -1.2276901   -1.3618868   -1.0934933
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.5693750   -2.0379505   -1.1007995
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -2.1608109   -2.3117159   -2.0099059
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -2.2726635   -2.4883165   -2.0570104
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -1.2564964   -1.3503946   -1.1625983
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.4987295   -1.5699172   -1.4275419
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -1.7081754   -1.9565976   -1.4597532
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -1.9549708   -2.0859680   -1.8239737
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.0173348   -1.1054350   -0.9292346
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.2478257   -1.4057064   -1.0899449
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.1533840   -1.2362241   -1.0705439
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.3455259   -1.4833877   -1.2076640
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5418351   -0.5931681   -0.4905021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.6975019   -0.9864376   -0.4085662
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.1992421   -1.3485978   -1.0498863
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.3454714   -1.4408111   -1.2501317
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.9413654   -0.9861362   -0.8965946
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -1.2803092   -1.3437837   -1.2168348
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.1189841   -1.5407299   -0.6972382
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.2940073   -1.4402771   -1.1477374
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.2387525   -1.3194830   -1.1580220
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.3859821   -1.4353665   -1.3365977
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -2.5650139   -2.6667807   -2.4632470
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.4075000   -3.0472699   -1.7677301
24 months   ki1000108-IRC              INDIA                          0                    NA                -1.7707024   -1.8661096   -1.6752952
24 months   ki1000108-IRC              INDIA                          1                    NA                -2.3727083   -2.8339592   -1.9114574
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.5485611   -1.6452987   -1.4518234
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.7006130   -1.8627276   -1.5384985
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.3880339   -1.4849095   -1.2911583
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.5617299   -1.7236282   -1.3998315
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.8230095   -1.9929763   -1.6530428
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.8979198   -1.9948767   -1.8009630
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -1.8446300   -1.8975767   -1.7916833
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -2.3828949   -2.4575481   -2.3082418
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.8797977   -2.1773932   -1.5822022
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.1962880   -2.3374163   -2.0551597
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.6029423   -1.6762285   -1.5296562
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.7966808   -1.8409658   -1.7523958


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.3976667   -1.5639119   -1.2314214
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1100000   -1.5086894   -0.7113106
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6762420   -0.7093108   -0.6431732
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3381333   -1.4898513   -1.1864153
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.4966707   -1.5808284   -1.4125130
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4189572   -1.5607165   -1.2771979
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.2011622   -2.3246467   -2.0776776
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4699588   -1.5446559   -1.3952616
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5440573   -0.5945614   -0.4935533
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3111986   -1.3908744   -1.2315228
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -1.0458076   -1.0793244   -1.0122908
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2787349   -1.4248268   -1.1326431
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3481303   -1.3904710   -1.3057895
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5615989   -2.6621298   -2.4610681
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8686046   -1.9550497   -1.7821594
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.0097359   -2.0499675   -1.9695043
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.1549141   -2.2975185   -2.0123097
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7500225   -1.7884190   -1.7116259


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                  0.3238845   -0.7298036    1.3775727
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                  1.2040937    0.9614163    1.4467711
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.2920909   -0.7496816    1.3338634
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 -0.1280110   -0.2022073   -0.0538147
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.3735696   -0.4533324    1.2004715
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.3597233   -0.6994371   -0.0200096
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.4534520   -0.3534193    1.2603234
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 -0.3416849   -0.8290982    0.1457284
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.1118526   -0.3771835    0.1534784
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.2422331   -0.3513840   -0.1330823
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.2467955   -0.5281579    0.0345670
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.2304909   -0.4115071   -0.0494746
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1921418   -0.3530735   -0.0312101
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1556668   -0.4492270    0.1378934
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.1462293   -0.3238341    0.0313755
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.3389438   -0.4162901   -0.2615976
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.1750232   -0.5766775    0.2266311
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.1472296   -0.2387273   -0.0557320
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1575139   -0.4902994    0.8053271
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.6020059   -1.0730207   -0.1309911
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1520520   -0.3407201    0.0366162
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1736960   -0.3626258    0.0152338
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0749103   -0.2702901    0.1204695
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.5382649   -0.6307269   -0.4458030
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.3164903   -0.6182396   -0.0147410
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.1937385   -0.2766936   -0.1107833


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.0058433   -0.0208468    0.0325333
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 1.1595451    0.8870100    1.4320802
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0540909   -0.1436981    0.2518800
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.0490690   -0.0777048   -0.0204332
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3653194   -0.4410021    1.1716410
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.3412267   -0.6629131   -0.0195404
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0099115   -0.0113762    0.0311993
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0067162   -0.0197457    0.0063134
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0403513   -0.1290258    0.0483233
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.2134623   -0.3110857   -0.1158389
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.1905088   -0.4216201    0.0406024
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0697692   -0.1161312   -0.0234073
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0452943   -0.0819637   -0.0086249
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0022222   -0.0092490    0.0048045
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1119565   -0.2469417    0.0230287
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.1044422   -0.1344735   -0.0744110
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1597509   -0.5297195    0.2102178
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1093778   -0.1761726   -0.0425830
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0034149   -0.0129491    0.0197790
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0117752   -0.0260614    0.0025111
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0375568   -0.0851167    0.0100031
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0414992   -0.0871420    0.0041437
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0455950   -0.1907859    0.0995958
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.1651059   -0.2020555   -0.1281562
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.2751164   -0.5504601    0.0002273
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1470801   -0.2094757   -0.0846845

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

agecat      studyid                    country                        hdlvry    n_cell      n
----------  -------------------------  -----------------------------  -------  -------  -----
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0             86     86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              0     86
Birth       ki1000108-IRC              INDIA                          0            337    343
Birth       ki1000108-IRC              INDIA                          1              6    343
Birth       ki1000109-EE               PAKISTAN                       0            120    175
Birth       ki1000109-EE               PAKISTAN                       1             55    175
Birth       ki1000304b-SAS-CompFeed    INDIA                          0            108    957
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            849    957
Birth       ki1017093b-PROVIDE         BANGLADESH                     0            387    532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1            145    532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0            548    707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1            159    707
Birth       ki1113344-GMS-Nepal        NEPAL                          0            143    596
Birth       ki1113344-GMS-Nepal        NEPAL                          1            453    596
Birth       ki1135781-COHORTS          INDIA                          0           2763   4389
Birth       ki1135781-COHORTS          INDIA                          1           1626   4389
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0             27    292
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            265    292
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0            500   2384
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1           1884   2384
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            357    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              8    365
6 months    ki1000108-IRC              INDIA                          0            400    408
6 months    ki1000108-IRC              INDIA                          1              8    408
6 months    ki1000109-EE               PAKISTAN                       0            252    373
6 months    ki1000109-EE               PAKISTAN                       1            121    373
6 months    ki1000304b-SAS-CompFeed    INDIA                          0            147   1088
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            941   1088
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             76    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            304    380
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            450    603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            153    603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            554    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            161    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1888   1920
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             32   1920
6 months    ki1113344-GMS-Nepal        NEPAL                          0            129    528
6 months    ki1113344-GMS-Nepal        NEPAL                          1            399    528
6 months    ki1135781-COHORTS          INDIA                          0           2896   4694
6 months    ki1135781-COHORTS          INDIA                          1           1798   4694
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0             39    334
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            295    334
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           1082   4042
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2960   4042
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            361    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              8    369
24 months   ki1000108-IRC              INDIA                          0            401    409
24 months   ki1000108-IRC              INDIA                          1              8    409
24 months   ki1000109-EE               PAKISTAN                       0            112    167
24 months   ki1000109-EE               PAKISTAN                       1             55    167
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            433    579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            146    579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            391    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            123    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      6
24 months   ki1113344-GMS-Nepal        NEPAL                          0            118    455
24 months   ki1113344-GMS-Nepal        NEPAL                          1            337    455
24 months   ki1135781-COHORTS          INDIA                          0           2214   3533
24 months   ki1135781-COHORTS          INDIA                          1           1319   3533
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             34    289
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            255    289
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           1032   3993
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2961   3993


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
![](/tmp/dab32b5f-0a1e-4277-8662-6690b1e84e6a/8b7baac2-557f-4275-a9bf-9878e70085ea/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/dab32b5f-0a1e-4277-8662-6690b1e84e6a/8b7baac2-557f-4275-a9bf-9878e70085ea/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/dab32b5f-0a1e-4277-8662-6690b1e84e6a/8b7baac2-557f-4275-a9bf-9878e70085ea/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.9918991   -1.1804921   -0.8033061
Birth       ki1000108-IRC              INDIA                          1                    NA                -2.0600000   -3.2141159   -0.9058841
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -0.3037408   -0.5318044   -0.0756772
Birth       ki1000109-EE               PAKISTAN                       1                    NA                -0.4262110   -0.7681140   -0.0843081
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.6740938   -0.8050105   -0.5431772
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.6629343   -0.8796010   -0.4462675
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.2857398   -1.3772370   -1.1942426
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.3385187   -1.4804910   -1.1965465
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.1992589   -1.2931000   -1.1054178
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.3930234   -1.5801291   -1.2059177
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.1950047   -1.3831427   -1.0068667
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.1111326   -1.2126762   -1.0095891
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.9787367   -1.0258452   -0.9316282
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -1.0056725   -1.0680881   -0.9432568
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.5398409   -1.0301167   -0.0495650
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.8715352   -0.9964861   -0.7465842
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.7026851   -0.8387452   -0.5666250
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.6938739   -0.7489401   -0.6388077
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.5089262   -0.6640006   -0.3538519
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.3072917   -0.9616161    0.3470328
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.5926333   -0.7305001   -0.4547666
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.9137500   -1.5807163   -0.2467837
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.7357772   -0.8777932   -0.5937613
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -0.8951332   -1.0836983   -0.7065681
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.4164458   -0.5327295   -0.3001621
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.7045253   -0.8526779   -0.5563727
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.8010783   -1.0577998   -0.5443568
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -1.0719926   -1.2034974   -0.9404879
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1849727   -0.2809229   -0.0890225
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2216411   -0.3896268   -0.0536553
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0662241   -0.0229581    0.1554063
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0406048   -0.2168276    0.1356180
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0680238    0.0129796    0.1230680
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1932058   -0.1020565    0.4884681
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.5045819   -0.6856447   -0.3235190
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.6228113   -0.7239410   -0.5216816
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.6585824   -0.7027720   -0.6143928
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.8168546   -0.8785307   -0.7551786
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.5461683   -0.8858212   -0.2065155
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6299903   -0.7405390   -0.5194417
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.2702912   -0.3492061   -0.1913763
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.4132818   -0.4646367   -0.3619268
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.5487673   -0.6500596   -0.4474751
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.3150000   -0.8468853    0.2168853
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.7384331   -0.8312559   -0.6456103
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.1158333   -1.4387631   -0.7929036
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.9922608   -1.1801110   -0.8044106
24 months   ki1000109-EE               PAKISTAN                       1                    NA                -1.1105150   -1.3470220   -0.8740080
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.8649601   -0.9598694   -0.7700508
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9769689   -1.1435149   -0.8104229
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.5672127   -0.6776675   -0.4567580
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.7449729   -0.9309155   -0.5590303
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.1242452   -1.3219536   -0.9265368
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.1349836   -1.2408410   -1.0291261
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.5438405   -0.5883875   -0.4992935
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.8513668   -0.9130987   -0.7896349
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.1179521   -1.6244121   -0.6114920
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3408983   -1.4814908   -1.2003058
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.1784420   -1.2490476   -1.1078365
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.2625331   -1.3027855   -1.2222808


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
Birth       ki1000109-EE               PAKISTAN                       1                    0                 -0.1224702   -0.5356044    0.2906640
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0111596   -0.2317793    0.2540984
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0527790   -0.2218025    0.1162446
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1937645   -0.4031888    0.0156599
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0838721   -0.1295413    0.2972855
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 -0.0269358   -0.1049802    0.0511087
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.3316943   -0.8607225    0.1973339
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0088111   -0.1370342    0.1546564
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.2016346   -0.4708151    0.8740843
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 -0.3211167   -1.0021830    0.3599496
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.1593560   -0.3956263    0.0769143
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.2880795   -0.4727301   -0.1034289
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.2709143   -0.5600337    0.0182050
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0366684   -0.2307557    0.1574189
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1068288   -0.3054265    0.0917688
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1251820   -0.1750373    0.4254012
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.1182294   -0.3259192    0.0894603
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.1582722   -0.2339739   -0.0825705
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0838220   -0.4259312    0.2582872
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.1429905   -0.2351754   -0.0508056
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.2337673   -0.3076771    0.7752117
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.3774002   -0.7134057   -0.0413948
24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.1182542   -0.4218787    0.1853703
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1120088   -0.3029282    0.0789106
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1777602   -0.3938806    0.0383603
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0107384   -0.2358132    0.2143365
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.3075263   -0.3835086   -0.2315440
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.2229462   -0.7206807    0.2747882
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0840911   -0.1642238   -0.0039584


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.0186840   -0.0514705    0.0141025
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -0.0372592   -0.1699794    0.0954609
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0170092   -0.1942499    0.2282683
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0127189   -0.0587025    0.0332648
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0448924   -0.0923406    0.0025557
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0672698   -0.0958918    0.2304315
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0031500   -0.0274433    0.0337433
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.3133783   -0.8100583    0.1833017
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0119510   -0.1036931    0.1275952
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0044194   -0.0126632    0.0215020
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0062964   -0.0238639    0.0112711
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0338028   -0.1117918    0.0441863
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.2569963   -0.4195721   -0.0944205
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.2110796   -0.4471225    0.0249633
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0141179   -0.0626678    0.0344320
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0364618   -0.0807538    0.0078302
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0008525   -0.0064155    0.0081205
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0946732   -0.2531337    0.0637873
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0574252   -0.0876113   -0.0272392
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0583227   -0.3724318    0.2557864
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1057738   -0.1723014   -0.0392462
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0050681   -0.0089078    0.0190440
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0073819   -0.0171941    0.0024303
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0181284   -0.1135746    0.0773178
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0279069   -0.0758511    0.0200373
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0431375   -0.0943762    0.0081012
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0004064   -0.1710296    0.1718424
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.1082173   -0.1380734   -0.0783612
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1809753   -0.6346801    0.2727295
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0637042   -0.1231729   -0.0042355

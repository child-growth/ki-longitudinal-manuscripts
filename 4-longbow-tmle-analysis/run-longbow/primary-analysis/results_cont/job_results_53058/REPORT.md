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
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0             92     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              0     92
Birth       ki1000108-IRC              INDIA                          0            381    388
Birth       ki1000108-IRC              INDIA                          1              7    388
Birth       ki1000109-EE               PAKISTAN                       0            161    238
Birth       ki1000109-EE               PAKISTAN                       1             77    238
Birth       ki1000304b-SAS-CompFeed    INDIA                          0            124   1085
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            961   1085
Birth       ki1017093b-PROVIDE         BANGLADESH                     0            391    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1            148    539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0            567    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1            165    732
Birth       ki1113344-GMS-Nepal        NEPAL                          0            157    646
Birth       ki1113344-GMS-Nepal        NEPAL                          1            489    646
Birth       ki1135781-COHORTS          INDIA                          0           2938   4694
Birth       ki1135781-COHORTS          INDIA                          1           1756   4694
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0             41    349
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            308    349
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0            554   2808
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1           2254   2808
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            358    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              8    366
6 months    ki1000108-IRC              INDIA                          0            399    407
6 months    ki1000108-IRC              INDIA                          1              8    407
6 months    ki1000109-EE               PAKISTAN                       0            250    371
6 months    ki1000109-EE               PAKISTAN                       1            121    371
6 months    ki1000304b-SAS-CompFeed    INDIA                          0            147   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            944   1091
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             76    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            304    380
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            450    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            154    604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            554    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            161    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1889   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             32   1921
6 months    ki1113344-GMS-Nepal        NEPAL                          0            129    528
6 months    ki1113344-GMS-Nepal        NEPAL                          1            399    528
6 months    ki1135781-COHORTS          INDIA                          0           2900   4699
6 months    ki1135781-COHORTS          INDIA                          1           1799   4699
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0             39    332
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            293    332
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           1081   4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2957   4038
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            360    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              8    368
24 months   ki1000108-IRC              INDIA                          0            401    409
24 months   ki1000108-IRC              INDIA                          1              8    409
24 months   ki1000109-EE               PAKISTAN                       0            112    166
24 months   ki1000109-EE               PAKISTAN                       1             54    166
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            433    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            145    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            391    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            123    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      6
24 months   ki1113344-GMS-Nepal        NEPAL                          0            118    456
24 months   ki1113344-GMS-Nepal        NEPAL                          1            338    456
24 months   ki1135781-COHORTS          INDIA                          0           2233   3556
24 months   ki1135781-COHORTS          INDIA                          1           1323   3556
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             35    291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            256    291
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           1033   4005
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2972   4005


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
![](/tmp/322851ad-2d36-4e0b-92fe-12ecec3a847d/92f95f77-5435-4b9a-a326-6e8572f14918/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/322851ad-2d36-4e0b-92fe-12ecec3a847d/92f95f77-5435-4b9a-a326-6e8572f14918/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/322851ad-2d36-4e0b-92fe-12ecec3a847d/92f95f77-5435-4b9a-a326-6e8572f14918/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.3138845   -0.4765233   -0.1512457
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.0100000   -1.0310607    1.0510607
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -1.8786472   -2.1152570   -1.6420375
Birth       ki1000109-EE               PAKISTAN                       1                    NA                -1.8975219   -2.2118257   -1.5832182
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -1.3355847   -1.4491182   -1.2220512
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.4405559   -1.5412669   -1.3398449
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.8418160   -0.9318983   -0.7517337
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9819911   -1.1163366   -0.8476456
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.8844836   -0.9643918   -0.8045755
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.9923664   -1.1577469   -0.8269860
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.0467273   -1.2202654   -0.8731892
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.1014337   -1.1959901   -1.0068773
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.6268727   -0.6715356   -0.5822097
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.7643063   -0.8235014   -0.7051112
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.6612525   -1.0149203   -0.3075848
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3644331   -1.5339511   -1.1949150
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.3770615   -1.5058341   -1.2482889
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.5559525   -1.6107227   -1.5011823
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.4288687   -1.5726614   -1.2850760
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.9754167   -1.7693720   -0.1814613
6 months    ki1000108-IRC              INDIA                          0                    NA                -1.2276901   -1.3618868   -1.0934933
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.5693750   -2.0379505   -1.1007995
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -2.0302237   -2.1757418   -1.8847055
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -2.1769865   -2.3822024   -1.9717706
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -1.2673690   -1.3591093   -1.1756287
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.4981869   -1.5697170   -1.4266567
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -1.7272318   -1.9677542   -1.4867095
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -1.9552677   -2.0869642   -1.8235712
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.0299711   -1.1159514   -0.9439909
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.2595271   -1.4137056   -1.1053486
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.1532714   -1.2361403   -1.0704026
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.3378720   -1.4762155   -1.1995286
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5418295   -0.5931733   -0.4904857
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.8035468   -1.0790402   -0.5280535
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.2175689   -1.3691932   -1.0659446
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.3621925   -1.4560896   -1.2682954
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.9454832   -0.9906063   -0.9003601
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -1.2823624   -1.3481143   -1.2166106
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.1732916   -1.5843388   -0.7622443
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3192317   -1.4670318   -1.1714316
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.2357648   -1.3160738   -1.1554558
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.3844378   -1.4334477   -1.3354279
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -2.5640139   -2.6645275   -2.4635003
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.4300000   -3.0592261   -1.8007739
24 months   ki1000108-IRC              INDIA                          0                    NA                -1.7871446   -1.8820825   -1.6922068
24 months   ki1000108-IRC              INDIA                          1                    NA                -2.3818750   -2.8405973   -1.9231527
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -2.7404000   -2.9285667   -2.5522333
24 months   ki1000109-EE               PAKISTAN                       1                    NA                -2.7054667   -2.9225730   -2.4883605
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.5605203   -1.6572838   -1.4637567
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.7303389   -1.8937360   -1.5669418
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.3974176   -1.4945671   -1.3002681
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.5431550   -1.7038519   -1.3824581
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.8360631   -2.0085958   -1.6635303
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.8961872   -1.9951378   -1.7972367
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -2.0568050   -2.1077626   -2.0058473
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -2.5991071   -2.6721842   -2.5260300
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.9008226   -2.2258401   -1.5758050
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.2034695   -2.3471804   -2.0597587
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.6329634   -1.7066330   -1.5592939
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.8186832   -1.8620390   -1.7753274


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -1.8614286   -2.0501173   -1.6727398
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4401843   -1.5334809   -1.3468878
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.0909443   -1.1734385   -1.0084500
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6762420   -0.7093108   -0.6431732
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2665330   -1.4233277   -1.1097382
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5216453   -1.5715117   -1.4717789
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4189572   -1.5607165   -1.2771979
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.0826460   -2.2022514   -1.9630406
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4699588   -1.5446559   -1.3952616
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5440573   -0.5945614   -0.4935533
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3296275   -1.4093037   -1.2499514
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -1.0458076   -1.0793244   -1.0122908
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3017169   -1.4476325   -1.1558012
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3481303   -1.3904710   -1.3057895
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5611005   -2.6603759   -2.4618252
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -2.6770382   -2.8210532   -2.5330231
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8717982   -1.9591776   -1.7844189
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.2218335   -2.2619519   -2.1817151
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.1628866   -2.3052995   -2.0204737
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7725918   -1.8111207   -1.7340629


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                  0.3238845   -0.7298036    1.3775727
Birth       ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       1                    0                 -0.0188747   -0.4139557    0.3762064
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.1049712   -0.2421812    0.0322387
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1401751   -0.3019136    0.0215634
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1078828   -0.2923423    0.0765768
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0547064   -0.2505821    0.1411693
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 -0.1374336   -0.2113885   -0.0634787
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.7031805   -1.0962562   -0.3101049
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.1788910   -0.3196027   -0.0381793
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.4534520   -0.3534193    1.2603234
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 -0.3416849   -0.8290982    0.1457284
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.1467628   -0.3987959    0.1052703
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.2308179   -0.3388002   -0.1228355
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.2280359   -0.5027127    0.0466410
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.2295560   -0.4063291   -0.0527828
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1846006   -0.3459333   -0.0232680
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.2617174   -0.5420399    0.0186052
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.1446236   -0.3236633    0.0344161
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.3368793   -0.4162984   -0.2574602
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.1459401   -0.5361340    0.2442537
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.1486730   -0.2394208   -0.0579251
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1340139   -0.5031898    0.7712175
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.5947304   -1.0631739   -0.1262869
24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                  0.0349333   -0.2549488    0.3248154
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1698186   -0.3598078    0.0201705
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1457374   -0.3335721    0.0420974
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0601242   -0.2588306    0.1385822
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.5423021   -0.6321825   -0.4524217
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.3026470   -0.6321601    0.0268661
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.1857197   -0.2684583   -0.1029812


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.0058433   -0.0208468    0.0325333
Birth       ki1000109-EE               PAKISTAN                       0                    NA                 0.0172187   -0.1107612    0.1451985
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.1045997   -0.2249930    0.0157936
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0432861   -0.0880235    0.0014514
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0250109   -0.0662469    0.0162251
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0442170   -0.1937990    0.1053651
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.0493693   -0.0779861   -0.0207526
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.6052804   -0.9599988   -0.2505620
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1445838   -0.2589950   -0.0301726
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0099115   -0.0113762    0.0311993
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0067162   -0.0197457    0.0063134
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0524223   -0.1355901    0.0307454
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.2025898   -0.2977890   -0.1073906
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.1714524   -0.3961150    0.0532102
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0617204   -0.1065444   -0.0168964
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0454069   -0.0820948   -0.0087190
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0022279   -0.0093186    0.0048628
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1120586   -0.2494815    0.0253642
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.1003244   -0.1307332   -0.0699157
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1284253   -0.4874656    0.2306150
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1123654   -0.1788736   -0.0458573
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0029133   -0.0131417    0.0189684
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0116329   -0.0258108    0.0025451
24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0633619   -0.0447862    0.1715099
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0419019   -0.0895567    0.0057530
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0438470   -0.0892826    0.0015886
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0357352   -0.1818697    0.1103993
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.1650285   -0.1995984   -0.1304586
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.2620640   -0.5606551    0.0365270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1396283   -0.2023713   -0.0768853

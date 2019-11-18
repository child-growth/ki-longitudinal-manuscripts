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

agecat      studyid                    country                        hdlvry    n_cell      n  outcome_variable 
----------  -------------------------  -----------------------------  -------  -------  -----  -----------------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0             92     92  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              0     92  haz              
Birth       ki1000108-IRC              INDIA                          0            381    388  haz              
Birth       ki1000108-IRC              INDIA                          1              7    388  haz              
Birth       ki1000109-EE               PAKISTAN                       0            161    238  haz              
Birth       ki1000109-EE               PAKISTAN                       1             77    238  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          0            124   1085  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            961   1085  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     0            391    539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1            148    539  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0            567    732  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1            165    732  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          0            157    646  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          1            489    646  haz              
Birth       ki1135781-COHORTS          INDIA                          0           2938   4694  haz              
Birth       ki1135781-COHORTS          INDIA                          1           1756   4694  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0             30    334  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            304    334  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0            554   2808  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1           2254   2808  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            358    366  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              8    366  haz              
6 months    ki1000108-IRC              INDIA                          0            399    407  haz              
6 months    ki1000108-IRC              INDIA                          1              8    407  haz              
6 months    ki1000109-EE               PAKISTAN                       0            250    371  haz              
6 months    ki1000109-EE               PAKISTAN                       1            121    371  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          0            147   1091  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            944   1091  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             76    380  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            304    380  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            450    604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            154    604  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            554    715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            161    715  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1889   1921  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             32   1921  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          0            129    528  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          1            399    528  haz              
6 months    ki1135781-COHORTS          INDIA                          0           2900   4699  haz              
6 months    ki1135781-COHORTS          INDIA                          1           1799   4699  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0             39    332  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            293    332  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           1081   4038  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2957   4038  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            360    368  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              8    368  haz              
24 months   ki1000108-IRC              INDIA                          0            401    409  haz              
24 months   ki1000108-IRC              INDIA                          1              8    409  haz              
24 months   ki1000109-EE               PAKISTAN                       0            112    166  haz              
24 months   ki1000109-EE               PAKISTAN                       1             54    166  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            433    578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            145    578  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            391    514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            123    514  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6      6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      6  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          0            118    456  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          1            338    456  haz              
24 months   ki1135781-COHORTS          INDIA                          0           2233   3556  haz              
24 months   ki1135781-COHORTS          INDIA                          1           1323   3556  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             35    291  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            256    291  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           1033   4005  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2972   4005  haz              


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
![](/tmp/388978af-8f02-43f4-8ea0-7615a39e763e/81518d06-b7b6-4a02-a73c-06e169db94bf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/388978af-8f02-43f4-8ea0-7615a39e763e/81518d06-b7b6-4a02-a73c-06e169db94bf/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/388978af-8f02-43f4-8ea0-7615a39e763e/81518d06-b7b6-4a02-a73c-06e169db94bf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.3138845   -0.4765233   -0.1512457
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.0100000   -1.0310607    1.0510607
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -1.8791673   -2.1152980   -1.6430365
Birth       ki1000109-EE               PAKISTAN                       1                    NA                -1.9259652   -2.2366264   -1.6153040
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -1.3355847   -1.4491182   -1.2220512
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.4405559   -1.5412669   -1.3398449
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.8454960   -0.9354613   -0.7555306
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9869661   -1.1184746   -0.8554576
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.8832472   -0.9629797   -0.8035147
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.9960094   -1.1571825   -0.8348363
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.0525841   -1.2293641   -0.8758041
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.1028595   -1.1974962   -1.0082228
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.6266024   -0.6710174   -0.5821875
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.7717752   -0.8315651   -0.7119854
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.0534397   -1.3658371   -0.7410423
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3919179   -1.5541555   -1.2296804
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.3742838   -1.5021040   -1.2464637
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.5578679   -1.6126575   -1.5030783
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.4288687   -1.5726614   -1.2850760
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.9754167   -1.7693720   -0.1814613
6 months    ki1000108-IRC              INDIA                          0                    NA                -1.2276901   -1.3618868   -1.0934933
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.5693750   -2.0379505   -1.1007995
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -2.0412923   -2.1878229   -1.8947616
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -2.1534178   -2.3600174   -1.9468182
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -1.2673690   -1.3591093   -1.1756287
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.4981869   -1.5697170   -1.4266567
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -1.7109730   -1.9437247   -1.4782214
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -1.9524572   -2.0841243   -1.8207902
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.0312405   -1.1168471   -0.9456340
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.2713530   -1.4204150   -1.1222911
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.1551600   -1.2377156   -1.0726045
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.3601255   -1.4986630   -1.2215880
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5416345   -0.5929679   -0.4903012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.7499093   -1.0286513   -0.4711672
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.2182978   -1.3664500   -1.0701456
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.3621998   -1.4574493   -1.2669502
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.9432441   -0.9880483   -0.8984400
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -1.2769047   -1.3410665   -1.2127429
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.1499254   -1.5739349   -0.7259160
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.2957430   -1.4429129   -1.1485731
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.2320891   -1.3120267   -1.1521514
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.3860633   -1.4348031   -1.3373235
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -2.5640139   -2.6645275   -2.4635003
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.4300000   -3.0592261   -1.8007739
24 months   ki1000108-IRC              INDIA                          0                    NA                -1.7871446   -1.8820825   -1.6922068
24 months   ki1000108-IRC              INDIA                          1                    NA                -2.3818750   -2.8405973   -1.9231527
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -2.7151532   -2.9004914   -2.5298151
24 months   ki1000109-EE               PAKISTAN                       1                    NA                -2.6889029   -2.9086141   -2.4691916
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.5648256   -1.6615405   -1.4681108
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.7338184   -1.8980203   -1.5696165
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.3998436   -1.4972106   -1.3024767
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.5837140   -1.7456243   -1.4218036
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.8391999   -2.0213299   -1.6570698
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.8898163   -1.9887784   -1.7908542
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -2.0541752   -2.1057771   -2.0025733
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -2.6037734   -2.6770781   -2.5304688
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.9310718   -2.2227233   -1.6394204
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.1919575   -2.3367211   -2.0471939
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.6274137   -1.7003248   -1.5545027
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.8199929   -1.8637663   -1.7762195


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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3684731   -1.5219775   -1.2149687
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2787349   -1.4248268   -1.1326431
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3481303   -1.3904710   -1.3057895
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5611005   -2.6603759   -2.4618252
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -2.6770382   -2.8210532   -2.5330231
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8717982   -1.9591776   -1.7844189
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.2218335   -2.2619519   -2.1817151
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.1571821   -2.2993457   -2.0150186
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7725918   -1.8111207   -1.7340629


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                  0.3238845   -0.7298036    1.3775727
Birth       ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       1                    0                 -0.0467979   -0.4380663    0.3444704
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.1049712   -0.2421812    0.0322387
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1414702   -0.3013160    0.0183756
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1127622   -0.2926281    0.0671037
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0502754   -0.2501191    0.1495683
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 -0.1451728   -0.2194307   -0.0709149
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.3384782   -0.6876652    0.0107087
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.1835841   -0.3231658   -0.0440024
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.4534520   -0.3534193    1.2603234
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 -0.3416849   -0.8290982    0.1457284
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.1121255   -0.3656810    0.1414299
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.2308179   -0.3388002   -0.1228355
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.2414842   -0.5090817    0.0261133
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.2401125   -0.4121540   -0.0680710
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.2049655   -0.3664179   -0.0435131
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.2082747   -0.4917875    0.0752380
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.1439020   -0.3202616    0.0324577
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.3336606   -0.4115751   -0.2557461
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.1458176   -0.5495637    0.2579285
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.1539742   -0.2444150   -0.0635334
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1340139   -0.5031898    0.7712175
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.5947304   -1.0631739   -0.1262869
24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                  0.0262504   -0.2632536    0.3157543
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1689927   -0.3599575    0.0219720
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1838704   -0.3724738    0.0047330
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0506164   -0.2580220    0.1567892
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.5495982   -0.6403289   -0.4588676
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.2608857   -0.5606721    0.0389008
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.1925792   -0.2747073   -0.1104510


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.0058433   -0.0208468    0.0325333
Birth       ki1000109-EE               PAKISTAN                       0                    NA                 0.0177387   -0.1097382    0.1452155
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.1045997   -0.2249930    0.0157936
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0396061   -0.0847610    0.0055489
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0262473   -0.0667480    0.0142533
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0383602   -0.1914687    0.1147482
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.0496396   -0.0779529   -0.0213263
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.3150333   -0.6349951    0.0049284
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1473615   -0.2607152   -0.0340077
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0099115   -0.0113762    0.0311993
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0067162   -0.0197457    0.0063134
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0413537   -0.1242613    0.0415538
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.2025898   -0.2977890   -0.1073906
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.1877112   -0.4048319    0.0294096
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0604510   -0.1048054   -0.0160965
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0435183   -0.0805306   -0.0065060
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0024228   -0.0094705    0.0046248
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1113298   -0.2455037    0.0228442
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.1025635   -0.1326267   -0.0725003
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1288095   -0.5011969    0.2435779
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1160412   -0.1822913   -0.0497911
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0029133   -0.0131417    0.0189684
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0116329   -0.0258108    0.0025451
24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0381151   -0.0637644    0.1399945
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0375965   -0.0853248    0.0101318
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0414210   -0.0867777    0.0039357
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0325984   -0.1873323    0.1221355
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.1676583   -0.2030135   -0.1323032
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.2261103   -0.5028894    0.0506688
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1451780   -0.2071046   -0.0832514

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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        hdlvry    sstunted   n_cell      n
----------  -------------------------  -----------------------------  -------  ---------  -------  -----
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0       88     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        4     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0        0     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1        0     92
Birth       ki1000108-IRC              INDIA                          0                0      365    388
Birth       ki1000108-IRC              INDIA                          0                1       16    388
Birth       ki1000108-IRC              INDIA                          1                0        7    388
Birth       ki1000108-IRC              INDIA                          1                1        0    388
Birth       ki1000109-EE               PAKISTAN                       0                0      130    238
Birth       ki1000109-EE               PAKISTAN                       0                1       31    238
Birth       ki1000109-EE               PAKISTAN                       1                0       60    238
Birth       ki1000109-EE               PAKISTAN                       1                1       17    238
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                0      117   1085
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                1        7   1085
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                0      894   1085
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                1       67   1085
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                0      389    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                1        2    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                0      146    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                1        2    539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0      558    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        9    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0      164    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        1    732
Birth       ki1113344-GMS-Nepal        NEPAL                          0                0      150    646
Birth       ki1113344-GMS-Nepal        NEPAL                          0                1        7    646
Birth       ki1113344-GMS-Nepal        NEPAL                          1                0      469    646
Birth       ki1113344-GMS-Nepal        NEPAL                          1                1       20    646
Birth       ki1135781-COHORTS          INDIA                          0                0     2855   4694
Birth       ki1135781-COHORTS          INDIA                          0                1       83   4694
Birth       ki1135781-COHORTS          INDIA                          1                0     1702   4694
Birth       ki1135781-COHORTS          INDIA                          1                1       54   4694
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0       30    334
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1        0    334
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0      284    334
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1       20    334
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0      520   2808
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1       34   2808
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0     2056   2808
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1      198   2808
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0      318    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1       40    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0        7    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1    366
6 months    ki1000108-IRC              INDIA                          0                0      370    407
6 months    ki1000108-IRC              INDIA                          0                1       29    407
6 months    ki1000108-IRC              INDIA                          1                0        8    407
6 months    ki1000108-IRC              INDIA                          1                1        0    407
6 months    ki1000109-EE               PAKISTAN                       0                0      198    371
6 months    ki1000109-EE               PAKISTAN                       0                1       52    371
6 months    ki1000109-EE               PAKISTAN                       1                0       93    371
6 months    ki1000109-EE               PAKISTAN                       1                1       28    371
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                0      141   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                1        6   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0      839   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1      105   1091
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                0       69    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                1        7    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0      257    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1       47    380
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      443    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        7    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      147    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1        7    604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      535    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1       19    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      157    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1        4    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1873   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       16   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0       30   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        2   1921
6 months    ki1113344-GMS-Nepal        NEPAL                          0                0      127    528
6 months    ki1113344-GMS-Nepal        NEPAL                          0                1        2    528
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0      383    528
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1       16    528
6 months    ki1135781-COHORTS          INDIA                          0                0     2788   4699
6 months    ki1135781-COHORTS          INDIA                          0                1      112   4699
6 months    ki1135781-COHORTS          INDIA                          1                0     1680   4699
6 months    ki1135781-COHORTS          INDIA                          1                1      119   4699
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0       37    332
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1        2    332
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0      283    332
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1       10    332
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0     1028   4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1       53   4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     2790   4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1      167   4038
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0      238    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1      122    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0        6    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1        2    368
24 months   ki1000108-IRC              INDIA                          0                0      362    409
24 months   ki1000108-IRC              INDIA                          0                1       39    409
24 months   ki1000108-IRC              INDIA                          1                0        6    409
24 months   ki1000108-IRC              INDIA                          1                1        2    409
24 months   ki1000109-EE               PAKISTAN                       0                0       70    166
24 months   ki1000109-EE               PAKISTAN                       0                1       42    166
24 months   ki1000109-EE               PAKISTAN                       1                0       37    166
24 months   ki1000109-EE               PAKISTAN                       1                1       17    166
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      397    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1       36    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      129    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       16    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      364    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       27    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      114    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1        9    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        5      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0      6
24 months   ki1113344-GMS-Nepal        NEPAL                          0                0      105    456
24 months   ki1113344-GMS-Nepal        NEPAL                          0                1       13    456
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0      305    456
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1       33    456
24 months   ki1135781-COHORTS          INDIA                          0                0     1819   3556
24 months   ki1135781-COHORTS          INDIA                          0                1      414   3556
24 months   ki1135781-COHORTS          INDIA                          1                0      816   3556
24 months   ki1135781-COHORTS          INDIA                          1                1      507   3556
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0       31    291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1        4    291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0      204    291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1       52    291
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0      971   4005
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1       62   4005
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     2659   4005
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      313   4005


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
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/d619f478-2899-4ac0-bd7a-6391137c561e/6f2bfea0-f17a-4f4c-beb6-95f059eccde7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d619f478-2899-4ac0-bd7a-6391137c561e/6f2bfea0-f17a-4f4c-beb6-95f059eccde7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d619f478-2899-4ac0-bd7a-6391137c561e/6f2bfea0-f17a-4f4c-beb6-95f059eccde7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d619f478-2899-4ac0-bd7a-6391137c561e/6f2bfea0-f17a-4f4c-beb6-95f059eccde7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000109-EE               PAKISTAN     0                    NA                0.1965446   0.1356416   0.2574476
Birth       ki1000109-EE               PAKISTAN     1                    NA                0.2432746   0.1501110   0.3364382
Birth       ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0564516   0.0274585   0.0854447
Birth       ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.0697190   0.0451096   0.0943285
Birth       ki1113344-GMS-Nepal        NEPAL        0                    NA                0.0445860   0.0122765   0.0768954
Birth       ki1113344-GMS-Nepal        NEPAL        1                    NA                0.0408998   0.0233318   0.0584678
Birth       ki1135781-COHORTS          INDIA        0                    NA                0.0282753   0.0221453   0.0344054
Birth       ki1135781-COHORTS          INDIA        1                    NA                0.0306308   0.0219132   0.0393485
Birth       kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0639788   0.0360536   0.0919039
Birth       kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0874323   0.0737014   0.1011631
6 months    ki1000109-EE               PAKISTAN     0                    NA                0.2041246   0.1540312   0.2542180
6 months    ki1000109-EE               PAKISTAN     1                    NA                0.2428939   0.1661129   0.3196749
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0408163   0.0221750   0.0594577
6 months    ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.1112288   0.0906768   0.1317809
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.0921053   0.0270064   0.1572041
6 months    ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.1546053   0.1139117   0.1952988
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0155556   0.0041126   0.0269986
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0454545   0.0125289   0.0783802
6 months    ki1135781-COHORTS          INDIA        0                    NA                0.0441464   0.0359077   0.0523851
6 months    ki1135781-COHORTS          INDIA        1                    NA                0.0643838   0.0522072   0.0765603
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0524935   0.0381281   0.0668590
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0554669   0.0444458   0.0664879
24 months   ki1000109-EE               PAKISTAN     0                    NA                0.3745147   0.2841094   0.4649199
24 months   ki1000109-EE               PAKISTAN     1                    NA                0.2987026   0.1708227   0.4265826
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0829918   0.0570271   0.1089564
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1160345   0.0646425   0.1674266
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0690537   0.0438979   0.0942095
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0731707   0.0271040   0.1192374
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1053115   0.0480990   0.1625240
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.0969436   0.0652575   0.1286296
24 months   ki1135781-COHORTS          INDIA        0                    NA                0.2074414   0.1893045   0.2255783
24 months   ki1135781-COHORTS          INDIA        1                    NA                0.3465405   0.3192261   0.3738548
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0641089   0.0457798   0.0824381
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.1028789   0.0905702   0.1151876


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000109-EE               PAKISTAN     NA                   NA                0.2016807   0.1505956   0.2527658
Birth       ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.0682028   0.0450759   0.0913296
Birth       ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.0417957   0.0263516   0.0572398
Birth       ki1135781-COHORTS          INDIA        NA                   NA                0.0291862   0.0243703   0.0340021
Birth       kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0826211   0.0705468   0.0946953
6 months    ki1000109-EE               PAKISTAN     NA                   NA                0.2156334   0.1737285   0.2575383
6 months    ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.1017415   0.0806841   0.1227990
6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1421053   0.1069532   0.1772573
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0231788   0.0111688   0.0351888
6 months    ki1135781-COHORTS          INDIA        NA                   NA                0.0491594   0.0429771   0.0553417
6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0544824   0.0460698   0.0628950
24 months   ki1000109-EE               PAKISTAN     NA                   NA                0.3554217   0.2823892   0.4284541
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0700389   0.0479542   0.0921236
24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1008772   0.0732047   0.1285497
24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.2589989   0.2445981   0.2733997
24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0936330   0.0833093   0.1039566


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1000109-EE               PAKISTAN     1                    0                 1.2377580   0.7543150   2.031041
Birth       ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.2350230   0.7402466   2.060505
Birth       ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal        NEPAL        1                    0                 0.9173240   0.3950715   2.129952
Birth       ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA        1                    0                 1.0833059   0.7574969   1.549249
Birth       kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.3665821   0.8550421   2.184157
6 months    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000109-EE               PAKISTAN     1                    0                 1.1899295   0.7972930   1.775925
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA        1                    0                 2.7251056   1.6370778   4.536254
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.6785713   0.7895723   3.568516
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 2.9220779   1.0407048   8.204574
6 months    ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA        1                    0                 1.4584146   1.1187889   1.901139
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.0566419   0.7598123   1.469431
24 months   ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000109-EE               PAKISTAN     1                    0                 0.7975725   0.4860384   1.308789
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.3981450   0.8119812   2.407456
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.0596206   0.5119815   2.193040
24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 0.9205414   0.4880203   1.736396
24 months   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA        1                    0                 1.6705466   1.4865281   1.877345
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.6047518   1.1798596   2.182657


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000109-EE               PAKISTAN     0                    NA                 0.0051361   -0.0311267   0.0413989
Birth       ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0117512   -0.0152182   0.0387205
Birth       ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0027903   -0.0306294   0.0250488
Birth       ki1135781-COHORTS          INDIA        0                    NA                 0.0009109   -0.0030473   0.0048690
Birth       kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0186423   -0.0068969   0.0441814
6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0115088   -0.0180895   0.0411071
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0609252    0.0357423   0.0861081
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0500000   -0.0114686   0.1114686
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0076233   -0.0013249   0.0165714
6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.0050130   -0.0010604   0.0110863
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0019889   -0.0107943   0.0147721
24 months   ki1000109-EE               PAKISTAN     0                    NA                -0.0190930   -0.0702805   0.0320945
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0069736   -0.0074330   0.0213803
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0009852   -0.0115760   0.0135464
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0044343   -0.0540189   0.0451503
24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0515575    0.0382348   0.0648802
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0295240    0.0129410   0.0461070


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000109-EE               PAKISTAN     0                    NA                 0.0254664   -0.1716803   0.1894413
Birth       ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.1722973   -0.3094683   0.4768169
Birth       ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0667610   -0.9909847   0.4284340
Birth       ki1135781-COHORTS          INDIA        0                    NA                 0.0312089   -0.1142715   0.1576953
Birth       kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.2256360   -0.1554387   0.4810286
6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0533720   -0.0942004   0.1810417
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.5988233    0.3630716   0.7473142
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.3518518   -0.2498734   0.6638891
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.3288889   -0.1267356   0.6002699
6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.1019741   -0.0298173   0.2168995
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0365051   -0.2283157   0.2442315
24 months   ki1000109-EE               PAKISTAN     0                    NA                -0.0537193   -0.2081584   0.0809778
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0775146   -0.0960685   0.2236076
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0140665   -0.1825711   0.1780073
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0439574   -0.6716178   0.3480286
24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.1990646    0.1463900   0.2484887
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.3153167    0.1147782   0.4704252

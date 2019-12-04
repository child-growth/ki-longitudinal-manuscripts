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

**Intervention Variable:** vagbrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* W_nrooms
* brthmon
* W_parity
* impfloor
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        vagbrth    sstunted   n_cell       n
----------  -------------------------  -----------------------------  --------  ---------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       10      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        1      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       78      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        3      92
Birth       ki1000108-IRC              INDIA                          0                 0       67     388
Birth       ki1000108-IRC              INDIA                          0                 1        1     388
Birth       ki1000108-IRC              INDIA                          1                 0      305     388
Birth       ki1000108-IRC              INDIA                          1                 1       15     388
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                 0      107     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                 1        1     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 0      428     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 1        3     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      185     477
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        1     477
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      290     477
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        1     477
Birth       ki1119695-PROBIT           BELARUS                        0                 0     1596   13890
Birth       ki1119695-PROBIT           BELARUS                        0                 1        1   13890
Birth       ki1119695-PROBIT           BELARUS                        1                 0    12289   13890
Birth       ki1119695-PROBIT           BELARUS                        1                 1        4   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                 0     1136   13761
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                 1       30   13761
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                 0    12191   13761
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                 1      404   13761
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0      501   22418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1       38   22418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0    19471   22418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2408   22418
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0       73    2822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1        3    2822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0     2516    2822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1      230    2822
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       23     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        2     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      304     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       40     369
6 months    ki1000108-IRC              INDIA                          0                 0       64     407
6 months    ki1000108-IRC              INDIA                          0                 1        5     407
6 months    ki1000108-IRC              INDIA                          1                 0      314     407
6 months    ki1000108-IRC              INDIA                          1                 1       24     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0      137     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1        2     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      453     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       12     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      183     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        4     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      258     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       12     457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0      189    2005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        0    2005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1797    2005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       19    2005
6 months    ki1119695-PROBIT           BELARUS                        0                 0     1771   15761
6 months    ki1119695-PROBIT           BELARUS                        0                 1       28   15761
6 months    ki1119695-PROBIT           BELARUS                        1                 0    13747   15761
6 months    ki1119695-PROBIT           BELARUS                        1                 1      215   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                 0      714    8601
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                 1       26    8601
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 0     7536    8601
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 1      325    8601
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0     1029   16732
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1       48   16732
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0    14687   16732
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1      968   16732
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0      326    4052
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1       10    4052
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0     3504    4052
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1      212    4052
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       16     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        8     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      230     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1      117     371
24 months   ki1000108-IRC              INDIA                          0                 0       66     409
24 months   ki1000108-IRC              INDIA                          0                 1        3     409
24 months   ki1000108-IRC              INDIA                          1                 0      302     409
24 months   ki1000108-IRC              INDIA                          1                 1       38     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      130     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1        7     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      396     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       45     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0       92     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        7     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      146     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       15     260
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1       6
24 months   ki1119695-PROBIT           BELARUS                        0                 0      465    4035
24 months   ki1119695-PROBIT           BELARUS                        0                 1        7    4035
24 months   ki1119695-PROBIT           BELARUS                        1                 0     3505    4035
24 months   ki1119695-PROBIT           BELARUS                        1                 1       58    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 0      123    1619
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 1       10    1619
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 0     1321    1619
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 1      165    1619
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0      444    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1       36    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     6805    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     1299    8584
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0      309    4020
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1       14    4020
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     3335    4020
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      362    4020


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
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
![](/tmp/e653bb6c-77d5-4df3-81de-ab88a2b9c5b4/b7500ae9-9454-4398-baa5-3e5659b09e51/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e653bb6c-77d5-4df3-81de-ab88a2b9c5b4/b7500ae9-9454-4398-baa5-3e5659b09e51/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e653bb6c-77d5-4df3-81de-ab88a2b9c5b4/b7500ae9-9454-4398-baa5-3e5659b09e51/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e653bb6c-77d5-4df3-81de-ab88a2b9c5b4/b7500ae9-9454-4398-baa5-3e5659b09e51/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                0.0254951    0.0161577   0.0348326
Birth       ki1126311-ZVITAMBO         ZIMBABWE     1                    NA                0.0322780    0.0291867   0.0353693
Birth       kiGH5241-JiVitA-3          BANGLADESH   0                    NA                0.0749757    0.0555225   0.0944290
Birth       kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.1099190    0.1052856   0.1145525
6 months    ki1000108-IRC              INDIA        0                    NA                0.0724638    0.0112169   0.1337106
6 months    ki1000108-IRC              INDIA        1                    NA                0.0710059    0.0435916   0.0984202
6 months    ki1119695-PROBIT           BELARUS      0                    NA                0.0163961    0.0088465   0.0239457
6 months    ki1119695-PROBIT           BELARUS      1                    NA                0.0153670    0.0099643   0.0207697
6 months    ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                0.0307154    0.0181842   0.0432467
6 months    ki1126311-ZVITAMBO         ZIMBABWE     1                    NA                0.0417754    0.0373381   0.0462128
6 months    kiGH5241-JiVitA-3          BANGLADESH   0                    NA                0.0472450    0.0338043   0.0606857
6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.0615634    0.0575444   0.0655823
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0290482    0.0119680   0.0461284
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0570040    0.0479486   0.0660594
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.3333333    0.1444810   0.5221856
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.3371758    0.2873681   0.3869835
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0510949    0.0141917   0.0879981
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1020408    0.0737647   0.1303170
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0707071    0.0201159   0.1212983
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0931677    0.0481827   0.1381527
24 months   ki1119695-PROBIT           BELARUS      0                    NA                0.0148305   -0.0010089   0.0306699
24 months   ki1119695-PROBIT           BELARUS      1                    NA                0.0162784    0.0034501   0.0291067
24 months   ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                0.0699139    0.0246396   0.1151881
24 months   ki1126311-ZVITAMBO         ZIMBABWE     1                    NA                0.1120405    0.0960561   0.1280248
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                0.0763621    0.0525848   0.1001395
24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.1601861    0.1511567   0.1692156
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0438919    0.0192878   0.0684959
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0980074    0.0870261   0.1089888


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE     NA                   NA                0.0315384   0.0286183   0.0344585
Birth       kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.1091088   0.1045539   0.1136636
6 months    ki1000108-IRC              INDIA        NA                   NA                0.0712531   0.0462303   0.0962759
6 months    ki1119695-PROBIT           BELARUS      NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1126311-ZVITAMBO         ZIMBABWE     NA                   NA                0.0408092   0.0366277   0.0449907
6 months    kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.0607220   0.0568736   0.0645704
6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0547878   0.0463432   0.0632323
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.3369272   0.2887662   0.3850883
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0846154   0.0507212   0.1185095
24 months   ki1119695-PROBIT           BELARUS      NA                   NA                0.0161090   0.0034156   0.0288025
24 months   ki1126311-ZVITAMBO         ZIMBABWE     NA                   NA                0.1080914   0.0929623   0.1232206
24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.1555219   0.1467695   0.1642743
24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0935323   0.0832327   0.1038320


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1126311-ZVITAMBO         ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE     1                    0                 1.2660483   0.8670705   1.848613
Birth       kiGH5241-JiVitA-3          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH   1                    0                 1.4660616   1.1275431   1.906212
6 months    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA        1                    0                 0.9798817   0.3869206   2.481564
6 months    ki1119695-PROBIT           BELARUS      0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS      1                    0                 0.9372373   0.6791710   1.293362
6 months    ki1126311-ZVITAMBO         ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE     1                    0                 1.3600793   0.8923234   2.073033
6 months    kiGH5241-JiVitA-3          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    0                 1.3030655   0.9720268   1.746845
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.9623946   1.0695813   3.600467
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 1.0115274   0.5632472   1.816587
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.9970845   0.9213693   4.328717
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.3176575   0.5558122   3.123755
24 months   ki1119695-PROBIT           BELARUS      0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT           BELARUS      1                    0                 1.0976304   0.5128046   2.349418
24 months   ki1126311-ZVITAMBO         ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE     1                    0                 1.6025506   0.8260164   3.109101
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    0                 2.0977167   1.5319984   2.872337
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 2.2329294   1.2581727   3.962869


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                 0.0060433   -0.0029937   0.0150803
Birth       kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0341330    0.0146951   0.0535710
6 months    ki1000108-IRC              INDIA        0                    NA                -0.0012107   -0.0569370   0.0545156
6 months    ki1119695-PROBIT           BELARUS      0                    NA                -0.0009783   -0.0056390   0.0036824
6 months    ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                 0.0100938   -0.0020491   0.0222366
6 months    kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0134769    0.0002182   0.0267357
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0257396    0.0081239   0.0433552
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0035939   -0.1790816   0.1862693
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0388705    0.0033552   0.0743858
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0139083   -0.0280339   0.0558505
24 months   ki1119695-PROBIT           BELARUS      0                    NA                 0.0012785   -0.0087765   0.0113336
24 months   ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                 0.0381776   -0.0059275   0.0822826
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0791598    0.0554251   0.1028944
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0496405    0.0246670   0.0746140


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                 0.1916173   -0.1516204   0.4325538
Birth       kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.3128349    0.1107660   0.4689859
6 months    ki1000108-IRC              INDIA        0                    NA                -0.0169915   -1.1942765   0.5286502
6 months    ki1119695-PROBIT           BELARUS      0                    NA                -0.0634516   -0.4104838   0.1981976
6 months    ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                 0.2473403   -0.1162817   0.4925146
6 months    kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.2219451   -0.0289057   0.4116376
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.4698052    0.0530835   0.7031348
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0106667   -0.7113840   0.4280766
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.4320606   -0.1095941   0.7093035
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.1643710   -0.5055688   0.5362046
24 months   ki1119695-PROBIT           BELARUS      0                    NA                 0.0793677   -0.8142793   0.5328372
24 months   ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                 0.3531970   -0.2124414   0.6549490
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.5089943    0.3333700   0.6383502
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.5307306    0.1848082   0.7298626

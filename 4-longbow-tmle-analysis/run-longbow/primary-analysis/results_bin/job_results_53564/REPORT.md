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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        vagbrth    wasted   n_cell       n
----------  -------------------------  -----------------------------  --------  -------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               0        8      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               1        2      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0       67      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        9      86
Birth       ki1000108-IRC              INDIA                          0               0       45     343
Birth       ki1000108-IRC              INDIA                          0               1       21     343
Birth       ki1000108-IRC              INDIA                          1               0      206     343
Birth       ki1000108-IRC              INDIA                          1               1       71     343
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               0       85     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               1       23     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               0      330     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               1       94     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0      150     465
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1       34     465
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0      220     465
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1       61     465
Birth       ki1119695-PROBIT           BELARUS                        0               0     1304   13830
Birth       ki1119695-PROBIT           BELARUS                        0               1      289   13830
Birth       ki1119695-PROBIT           BELARUS                        1               0     9639   13830
Birth       ki1119695-PROBIT           BELARUS                        1               1     2598   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               0      906   12814
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               1      194   12814
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0     9861   12814
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1     1853   12814
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               0      398   17985
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1      102   17985
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0    15618   17985
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1     1867   17985
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0       57    2395
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1       14    2395
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0     2099    2395
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1      225    2395
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               0       21     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               1        4     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0      301     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1       42     368
6 months    ki1000108-IRC              INDIA                          0               0       61     408
6 months    ki1000108-IRC              INDIA                          0               1        7     408
6 months    ki1000108-IRC              INDIA                          1               0      293     408
6 months    ki1000108-IRC              INDIA                          1               1       47     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      134     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               1        5     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      444     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1       20     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0      185     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               1        2     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      257     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1       13     457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0      181    2004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        8    2004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0     1737    2004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       78    2004
6 months    ki1119695-PROBIT           BELARUS                        0               0     1779   15758
6 months    ki1119695-PROBIT           BELARUS                        0               1       19   15758
6 months    ki1119695-PROBIT           BELARUS                        1               0    13849   15758
6 months    ki1119695-PROBIT           BELARUS                        1               1      111   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               0      697    8437
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               1       24    8437
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0     7478    8437
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1      238    8437
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               0     1001   16705
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1       74   16705
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0    14288   16705
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1     1342   16705
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0      323    4056
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1       14    4056
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0     3516    4056
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1      203    4056
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0       23     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0      326     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1       21     372
24 months   ki1000108-IRC              INDIA                          0               0       64     409
24 months   ki1000108-IRC              INDIA                          0               1        5     409
24 months   ki1000108-IRC              INDIA                          1               0      314     409
24 months   ki1000108-IRC              INDIA                          1               1       26     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      126     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1       11     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      391     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       51     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0       90     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1        9     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      143     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       18     260
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ki1119695-PROBIT           BELARUS                        0               0      459    3972
24 months   ki1119695-PROBIT           BELARUS                        0               1        4    3972
24 months   ki1119695-PROBIT           BELARUS                        1               0     3469    3972
24 months   ki1119695-PROBIT           BELARUS                        1               1       40    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               0       27     426
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               1        1     426
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0      321     426
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1       77     426
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               0      396    8555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1       79    8555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     6292    8555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1     1788    8555
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0      263    4008
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1       60    4008
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0     2934    4008
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1      751    4008


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
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

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
![](/tmp/5ec1b0e8-afaa-4a9a-b1a1-ad6b1c3fb7aa/c247bb26-46dc-49c6-9ac2-5580c22c2b8c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5ec1b0e8-afaa-4a9a-b1a1-ad6b1c3fb7aa/c247bb26-46dc-49c6-9ac2-5580c22c2b8c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5ec1b0e8-afaa-4a9a-b1a1-ad6b1c3fb7aa/c247bb26-46dc-49c6-9ac2-5580c22c2b8c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5ec1b0e8-afaa-4a9a-b1a1-ad6b1c3fb7aa/c247bb26-46dc-49c6-9ac2-5580c22c2b8c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          0                    NA                0.3123205   0.1940200   0.4306210
Birth       ki1000108-IRC              INDIA                          1                    NA                0.2577352   0.2059021   0.3095683
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2147727   0.1375651   0.2919802
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2211426   0.1816147   0.2606704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1873032   0.1311260   0.2434803
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2142540   0.1660612   0.2624468
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                0.1846079   0.1186268   0.2505889
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                0.2120429   0.1455977   0.2784881
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1773615   0.1540846   0.2006383
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1585323   0.1519103   0.1651544
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1801420   0.1481496   0.2121343
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1072232   0.1019902   0.1124562
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1953294   0.0929233   0.2977354
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0967059   0.0813412   0.1120706
6 months    ki1000108-IRC              INDIA                          0                    NA                0.1029412   0.0306257   0.1752567
6 months    ki1000108-IRC              INDIA                          1                    NA                0.1382353   0.1015032   0.1749674
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0359712   0.0049882   0.0669542
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0431034   0.0246091   0.0615978
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0423280   0.0136171   0.0710390
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0429752   0.0336429   0.0523075
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0106185   0.0058706   0.0153664
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0079299   0.0063540   0.0095059
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0315006   0.0182054   0.0447959
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0311158   0.0272263   0.0350054
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0766762   0.0579511   0.0954013
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0854191   0.0805005   0.0903378
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0417293   0.0165138   0.0669449
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0545804   0.0442972   0.0648637
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0724638   0.0112173   0.1337102
24 months   ki1000108-IRC              INDIA                          1                    NA                0.0764706   0.0481884   0.1047528
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0810938   0.0347608   0.1274269
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1156197   0.0855448   0.1456946
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0909091   0.0341710   0.1476472
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1118012   0.0630315   0.1605710
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1741653   0.1333777   0.2149530
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2210260   0.2106323   0.2314197
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1905907   0.1423023   0.2388791
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2034985   0.1880485   0.2189485


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.2682216   0.2212677   0.3151755
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2199248   0.1846953   0.2551543
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2043011   0.1676152   0.2409869
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.2087491   0.1435025   0.2739957
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1597472   0.1534034   0.1660909
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1094801   0.1043667   0.1145935
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0997912   0.0844161   0.1151664
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1323529   0.0994307   0.1652752
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0414594   0.0255348   0.0573839
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0429142   0.0340389   0.0517895
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0082498   0.0066007   0.0098989
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0310537   0.0273521   0.0347553
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0847650   0.0799741   0.0895560
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0535010   0.0438560   0.0631459
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0757946   0.0501131   0.1014762
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1038462   0.0666939   0.1409984
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2182350   0.2083008   0.2281691
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2023453   0.1877652   0.2169254


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                 0.8252268   0.5370207   1.2681060
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.0296588   0.6892925   1.5380948
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.1438889   0.7859005   1.6649458
Birth       ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                 1.1486122   0.9484332   1.3910415
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.8938376   0.7788684   1.0257774
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.5952150   0.4942135   0.7168580
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.4950917   0.2851944   0.8594689
6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 1.3428571   0.6336429   2.8458701
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1982759   0.4577659   3.1366798
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0152893   0.4980591   2.0696586
6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 0.7468049   0.4919787   1.1336213
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9877840   0.6360720   1.5339729
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.1140246   0.8705403   1.4256100
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.3079637   0.6938113   2.4657557
24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 1.0552941   0.4194722   2.6548739
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.4257514   0.7610486   2.6710081
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.2298137   0.5743075   2.6335048
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.2690584   0.9979219   1.6138630
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.0677255   0.8193191   1.3914452


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.0440989   -0.1499131    0.0617152
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0051522   -0.0640158    0.0743201
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0169979   -0.0279861    0.0619819
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 0.0241412   -0.0082864    0.0565688
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0176143   -0.0398560    0.0046274
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0706619   -0.1022498   -0.0390740
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0955381   -0.1961184    0.0050421
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.0294118   -0.0381917    0.0970152
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0054881   -0.0222783    0.0332546
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0005861   -0.0267563    0.0279285
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0023687   -0.0063053    0.0015679
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0004470   -0.0131679    0.0122740
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0080889   -0.0099873    0.0261650
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0117717   -0.0132378    0.0367811
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0033309   -0.0527495    0.0594112
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0259873   -0.0164430    0.0684177
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0129371   -0.0334089    0.0592830
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0440696    0.0034912    0.0846481
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0117546   -0.0351502    0.0586594


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.1644122   -0.6330357    0.1697329
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0234269   -0.3475908    0.2922962
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0832003   -0.1650903    0.2785781
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 0.1156470   -0.0494106    0.2547433
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1102637   -0.2585583    0.0205575
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.6454309   -0.9627197   -0.3794343
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.9573800   -2.2830498   -0.1670052
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.2222222   -0.4955071    0.5954962
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1323741   -0.8735818    0.5982163
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0136582   -0.8817567    0.4829989
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.2871235   -0.8418230    0.1005179
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0143930   -0.5190772    0.3226195
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0954269   -0.1451797    0.2854812
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2200271   -0.4109116    0.5688194
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0439458   -1.0726677    0.5590033
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.2426881   -0.2718449    0.5490635
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1245791   -0.4545902    0.4731425
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2019366   -0.0065585    0.3672447
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0580918   -0.2044610    0.2634124

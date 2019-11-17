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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        vagbrth    stunted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0        9      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        2      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0       66      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1       15      92
Birth       ki1000108-IRC              INDIA                          0                0       58     388
Birth       ki1000108-IRC              INDIA                          0                1       10     388
Birth       ki1000108-IRC              INDIA                          1                0      285     388
Birth       ki1000108-IRC              INDIA                          1                1       35     388
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                0       98     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                1       10     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                0      393     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                1       38     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0      160     477
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1       26     477
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0      253     477
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1       38     477
Birth       ki1119695-PROBIT           BELARUS                        0                0     1594   13890
Birth       ki1119695-PROBIT           BELARUS                        0                1        3   13890
Birth       ki1119695-PROBIT           BELARUS                        1                0    12263   13890
Birth       ki1119695-PROBIT           BELARUS                        1                1       30   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                0     1076   13761
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                1       90   13761
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0    11273   13761
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1     1322   13761
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0      418   22418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1      121   22418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0    14626   22418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1     7253   22418
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0       57    2822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1       19    2822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0     1908    2822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1      838    2822
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0       17     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1        8     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0      241     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1      103     369
6 months    ki1000108-IRC              INDIA                          0                0       50     407
6 months    ki1000108-IRC              INDIA                          0                1       19     407
6 months    ki1000108-IRC              INDIA                          1                0      257     407
6 months    ki1000108-IRC              INDIA                          1                1       81     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      117     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1       22     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      391     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1       74     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      151     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1       36     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      198     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1       72     457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0      172    2005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       17    2005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     1636    2005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1      180    2005
6 months    ki1119695-PROBIT           BELARUS                        0                0     1699   15761
6 months    ki1119695-PROBIT           BELARUS                        0                1      100   15761
6 months    ki1119695-PROBIT           BELARUS                        1                0    13074   15761
6 months    ki1119695-PROBIT           BELARUS                        1                1      888   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0      628    8601
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1      112    8601
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0     6568    8601
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1     1293    8601
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0      909   16732
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1      168   16732
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0    11614   16732
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1     4041   16732
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0      281    4052
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1       55    4052
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     2758    4052
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1      958    4052
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0        8     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1       16     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       97     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1      250     371
24 months   ki1000108-IRC              INDIA                          0                0       42     409
24 months   ki1000108-IRC              INDIA                          0                1       27     409
24 months   ki1000108-IRC              INDIA                          1                0      195     409
24 months   ki1000108-IRC              INDIA                          1                1      145     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0       99     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1       38     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      289     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1      152     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0       75     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       24     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      104     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       57     260
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        1       6
24 months   ki1119695-PROBIT           BELARUS                        0                0      437    4035
24 months   ki1119695-PROBIT           BELARUS                        0                1       35    4035
24 months   ki1119695-PROBIT           BELARUS                        1                0     3254    4035
24 months   ki1119695-PROBIT           BELARUS                        1                1      309    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0       96    1619
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1       37    1619
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0      962    1619
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1      524    1619
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0      324    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1      156    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     4043    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     4061    8584
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0      237    4020
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1       86    4020
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     2177    4020
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1     1520    4020


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
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
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




# Results Detail

## Results Plots
![](/tmp/adc091f8-f374-40aa-8b3f-27ec45ed21ca/19e0eaac-d98c-4d7c-a00e-1fff8bf5e4a9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/adc091f8-f374-40aa-8b3f-27ec45ed21ca/19e0eaac-d98c-4d7c-a00e-1fff8bf5e4a9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/adc091f8-f374-40aa-8b3f-27ec45ed21ca/19e0eaac-d98c-4d7c-a00e-1fff8bf5e4a9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/adc091f8-f374-40aa-8b3f-27ec45ed21ca/19e0eaac-d98c-4d7c-a00e-1fff8bf5e4a9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          0                    NA                0.1620878   0.0799613   0.2442144
Birth       ki1000108-IRC              INDIA                          1                    NA                0.1104533   0.0761619   0.1447446
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0901698   0.0350485   0.1452910
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0879027   0.0610973   0.1147081
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1426820   0.0934856   0.1918784
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1329592   0.0942215   0.1716970
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0770417   0.0609601   0.0931233
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1053589   0.0999919   0.1107259
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2303278   0.1999929   0.2606627
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3313044   0.3238398   0.3387689
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2605380   0.1553377   0.3657383
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3052393   0.2847206   0.3257580
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3200000   0.1368964   0.5031036
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2994186   0.2509538   0.3478835
6 months    ki1000108-IRC              INDIA                          0                    NA                0.2688629   0.1620712   0.3756547
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2396232   0.1940096   0.2852368
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1611960   0.1000784   0.2223136
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1574975   0.1243280   0.1906669
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1960707   0.1398521   0.2522893
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2606159   0.2082548   0.3129769
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0847110   0.0439822   0.1254399
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0996922   0.0859103   0.1134741
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0568606   0.0387942   0.0749271
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0635430   0.0497462   0.0773398
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1414345   0.1147518   0.1681173
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1659970   0.1577806   0.1742134
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1871039   0.1561371   0.2180706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2565282   0.2482286   0.2648278
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1749851   0.1300731   0.2198971
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2570310   0.2400258   0.2740362
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6666667   0.4778144   0.8555190
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7204611   0.6731791   0.7677431
24 months   ki1000108-IRC              INDIA                          0                    NA                0.3922993   0.2747163   0.5098823
24 months   ki1000108-IRC              INDIA                          1                    NA                0.4259908   0.3733101   0.4786716
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3087667   0.2293813   0.3881521
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3301886   0.2867193   0.3736579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2371274   0.1534836   0.3207712
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3621167   0.2877866   0.4364468
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0769568   0.0388043   0.1151093
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0867713   0.0572065   0.1163361
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2555151   0.1793300   0.3317002
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3550782   0.3308000   0.3793564
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3566693   0.3056406   0.4076980
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4983272   0.4848903   0.5117642
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2796400   0.1992339   0.3600461
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4088099   0.3895563   0.4280636


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1341719   0.1035529   0.1647909
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1026088   0.0975387   0.1076790
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3289321   0.3215578   0.3363064
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3036853   0.2836812   0.3236894
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2363239   0.1973320   0.2753157
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0982544   0.0852222   0.1112865
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765238
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1633531   0.1555398   0.1711664
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2515539   0.2434271   0.2596807
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2500000   0.2338924   0.2661076
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7169811   0.6710815   0.7628807
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4205379   0.3726382   0.4684376
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3115385   0.2551365   0.3679404
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3465102   0.3233236   0.3696967
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4912628   0.4781447   0.5043809
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3995025   0.3807924   0.4182126


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC              INDIA                          1                    0                 0.6814408   0.3762243   1.234268
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9748573   0.4921659   1.930948
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 0.9318569   0.5931697   1.463927
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.3675558   1.1031349   1.695358
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.4384039   1.2605395   1.641365
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1715730   0.7751656   1.770697
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9356831   0.5162674   1.695832
6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA                          1                    0                 0.8912467   0.5736670   1.384637
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9770555   0.6335393   1.506832
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.3291932   0.9388627   1.881803
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1768500   0.7140515   1.939602
6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.1175216   0.8949968   1.395373
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1736666   0.9659498   1.426051
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.3710472   1.1599465   1.620566
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.4688738   1.1289372   1.911170
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0806916   0.8080108   1.445395
24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA                          1                    0                 1.0858823   0.7850518   1.501991
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.0693788   0.8041055   1.422165
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.5270977   1.0186055   2.289432
24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.1275331   0.8075042   1.574395
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.3896562   1.0240409   1.885808
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.3971688   1.2089007   1.614757
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.4619151   1.0932630   1.954878


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.0461085   -0.1192682   0.0270513
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0011160   -0.0502210   0.0479891
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0085101   -0.0465858   0.0295656
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0255671    0.0099500   0.0411842
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0986043    0.0688350   0.1283737
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0431473   -0.0620907   0.1483853
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0191870   -0.1957642   0.1573902
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0231627   -0.1198019   0.0734765
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0022556   -0.0559216   0.0514104
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0402531   -0.0050355   0.0855418
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0135433   -0.0253974   0.0524840
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0058257   -0.0054377   0.0170891
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0219186   -0.0037307   0.0475679
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0644500    0.0340673   0.0948328
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0750149    0.0312155   0.1188143
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0503145   -0.1317778   0.2324068
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0282386   -0.0795450   0.1360222
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0199530   -0.0503578   0.0902639
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0744111    0.0053756   0.1434465
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0082972   -0.0139326   0.0305271
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0909951    0.0176652   0.1643249
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1345935    0.0843709   0.1848161
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1198625    0.0428998   0.1968252


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.3975574   -1.1958855   0.1105335
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0125314   -0.7453947   0.4126144
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0634269   -0.3888946   0.1857721
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2491706    0.0808827   0.3866454
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2997711    0.2032304   0.3846144
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1420790   -0.2837317   0.4266493
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0637838   -0.8471227   0.3873521
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0942722   -0.5671525   0.2359190
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0141917   -0.4148488   0.2730072
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1703304   -0.0437204   0.3404828
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1378395   -0.3651878   0.4555176
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0929345   -0.1078420   0.2573239
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1341791   -0.0380008   0.2777984
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2562077    0.1253304   0.3675017
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3000597    0.1024485   0.4541635
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0701754   -0.2220596   0.2925274
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0671488   -0.2278848   0.2912923
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0606992   -0.1794704   0.2519643
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2388503   -0.0169528   0.4303090
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0973238   -0.2104188   0.3268245
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2626043    0.0172779   0.4466875
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2739745    0.1644723   0.3691257
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3000293    0.0763618   0.4695337

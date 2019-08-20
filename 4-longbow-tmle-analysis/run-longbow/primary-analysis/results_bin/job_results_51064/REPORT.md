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
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        vagbrth    stunted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0        9      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0       65      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1       14      90
Birth       ki1000108-IRC              INDIA                          0                0       58     388
Birth       ki1000108-IRC              INDIA                          0                1       10     388
Birth       ki1000108-IRC              INDIA                          1                0      285     388
Birth       ki1000108-IRC              INDIA                          1                1       35     388
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0        1      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0       15      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        3      19
Birth       ki1119695-PROBIT           BELARUS                        0                0     1594   13884
Birth       ki1119695-PROBIT           BELARUS                        0                1        3   13884
Birth       ki1119695-PROBIT           BELARUS                        1                0    12257   13884
Birth       ki1119695-PROBIT           BELARUS                        1                1       30   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                0     1073   13716
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                1       89   13716
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0    11233   13716
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1     1321   13716
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0        2   19586
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1        1   19586
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0    13256   19586
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1     6327   19586
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0        1     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0      574     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1      247     822
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0       17     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1        8     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0      241     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1      103     369
6 months    ki1000108-IRC              INDIA                          0                0       50     407
6 months    ki1000108-IRC              INDIA                          0                1       19     407
6 months    ki1000108-IRC              INDIA                          1                0      257     407
6 months    ki1000108-IRC              INDIA                          1                1       81     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      112     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1       22     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      377     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1       72     583
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
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0      597    8228
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1      110    8228
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0     6259    8228
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1     1262    8228
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0      909   16732
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1      168   16732
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0    11614   16732
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1     4041   16732
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0      281    4052
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1       55    4052
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     2759    4052
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1      957    4052
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0        8     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1       17     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       98     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1      249     372
24 months   ki1000108-IRC              INDIA                          0                0       42     409
24 months   ki1000108-IRC              INDIA                          0                1       27     409
24 months   ki1000108-IRC              INDIA                          1                0      197     409
24 months   ki1000108-IRC              INDIA                          1                1      143     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0       99     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1       38     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      288     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1      152     577
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
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0       11     450
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1       18     450
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0      145     450
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1      276     450
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0      324    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1      156    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     4046    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     4058    8584
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0      238    4020
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1       85    4020
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     2210    4020
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1     1487    4020


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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
![](/tmp/88f953c9-7343-4d0d-9ae3-c4ccf4077813/b3c26249-585d-405c-ba9c-d8a798f38651/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/88f953c9-7343-4d0d-9ae3-c4ccf4077813/b3c26249-585d-405c-ba9c-d8a798f38651/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/88f953c9-7343-4d0d-9ae3-c4ccf4077813/b3c26249-585d-405c-ba9c-d8a798f38651/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/88f953c9-7343-4d0d-9ae3-c4ccf4077813/b3c26249-585d-405c-ba9c-d8a798f38651/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          0                    NA                0.1460645   0.0600003   0.2321287
Birth       ki1000108-IRC              INDIA                          1                    NA                0.1099815   0.0756822   0.1442808
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0758880   0.0601537   0.0916222
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1054886   0.1001097   0.1108675
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3200000   0.1368964   0.5031036
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2994186   0.2509538   0.3478835
6 months    ki1000108-IRC              INDIA                          0                    NA                0.2929497   0.1859978   0.3999017
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2401393   0.1945896   0.2856890
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1684983   0.1052533   0.2317433
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1592677   0.1253476   0.1931879
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1866551   0.1301777   0.2431324
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2728908   0.2202359   0.3255457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0845887   0.0436536   0.1255238
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0995205   0.0857648   0.1132762
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0555122   0.0376825   0.0733419
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0636233   0.0497515   0.0774951
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1437163   0.1167218   0.1707107
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1692143   0.1607297   0.1776990
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1918540   0.1596594   0.2240485
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2576009   0.2492726   0.2659293
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1600888   0.1177818   0.2023959
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2574288   0.2404652   0.2743925
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6800000   0.4968984   0.8631016
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7175793   0.6701495   0.7650090
24 months   ki1000108-IRC              INDIA                          0                    NA                0.3871720   0.2680739   0.5062701
24 months   ki1000108-IRC              INDIA                          1                    NA                0.4214398   0.3688336   0.4740460
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3221489   0.2409100   0.4033879
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3384904   0.2938057   0.3831752
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2127872   0.1287975   0.2967768
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3510175   0.2773210   0.4247139
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0812877   0.0329216   0.1296539
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0863269   0.0567751   0.1158787
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6258897   0.4607338   0.7910456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.6585742   0.6131663   0.7039821
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3467692   0.2980407   0.3954978
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4994402   0.4860226   0.5128577
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2655271   0.1923806   0.3386736
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4022960   0.3831539   0.4214380


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1027997   0.0977170   0.1078823
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2363239   0.1973320   0.2753157
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0982544   0.0852222   0.1112865
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765238
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1667477   0.1586931   0.1748023
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2515539   0.2434271   0.2596807
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2497532   0.2336426   0.2658638
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7150538   0.6691221   0.7609854
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3115385   0.2551365   0.3679404
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6533333   0.6093135   0.6973532
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4909133   0.4777756   0.5040511
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3910448   0.3723963   0.4096932


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC              INDIA                          1                    0                 0.7529654   0.3864669   1.467026
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.3900571   1.1228027   1.720924
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9356831   0.5162674   1.695832
6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA                          1                    0                 0.8197287   0.5429136   1.237683
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9452184   0.6142597   1.454495
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.4620061   1.0236368   2.088106
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1765224   0.7116456   1.945076
6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.1461136   0.9065364   1.449006
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1774194   0.9695773   1.429815
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.3426928   1.1326738   1.591653
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.6080376   1.2260822   2.108982
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0552636   0.7997388   1.392431
24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA                          1                    0                 1.0885080   0.7808720   1.517342
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.0507265   0.7917923   1.394338
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.6496177   1.0564696   2.575785
24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.0619925   0.6777448   1.664090
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0522209   0.8028709   1.379012
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.4402667   1.2497175   1.659870
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.5150842   1.1467997   2.001640


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.0300851   -0.1067880   0.0466178
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0269117    0.0116278   0.0421955
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0191870   -0.1957642   0.1573902
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0472495   -0.1442939   0.0497950
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0072633   -0.0625386   0.0480119
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0496688    0.0041597   0.0951779
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0136656   -0.0254640   0.0527953
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0071742   -0.0045813   0.0189297
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0230314   -0.0029442   0.0490070
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0596999    0.0279686   0.0914313
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0896644    0.0481852   0.1311435
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0350538   -0.1413823   0.2114898
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0284759   -0.0805808   0.1375327
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0071405   -0.0655400   0.0798210
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0987513    0.0278930   0.1696096
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0039663   -0.0289143   0.0368469
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0274436   -0.1319376   0.1868249
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1441441    0.0964239   0.1918644
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1255176    0.0558890   0.1951463


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.2594004   -1.1232702   0.2529970
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2617877    0.0976024   0.3961006
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0637838   -0.8471227   0.3873521
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.1923053   -0.6609517   0.1441100
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0450482   -0.4507501   0.2471992
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2101726   -0.0068773   0.3804336
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1390844   -0.3672385   0.4579031
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.1144456   -0.0953900   0.2840846
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1381214   -0.0325849   0.2806066
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2373246    0.1005167   0.3533246
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3590119    0.1716167   0.5040150
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0490226   -0.2327896   0.2664133
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0685098   -0.2347100   0.2972649
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0216846   -0.2258457   0.2192320
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3169795    0.0484838   0.5097120
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0465236   -0.4339254   0.3659940
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0420056   -0.2358239   0.2573753
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2936244    0.1895886   0.3843046
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3209802    0.1153622   0.4788061

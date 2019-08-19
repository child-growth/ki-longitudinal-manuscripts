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

**Outcome Variable:** swasted

## Predictor Variables

**Intervention Variable:** vagbrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
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

agecat      studyid                    country                        vagbrth    swasted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0       10      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0       73      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1        5      88
Birth       ki1000108-IRC              INDIA                          0                0       52     343
Birth       ki1000108-IRC              INDIA                          0                1       14     343
Birth       ki1000108-IRC              INDIA                          1                0      237     343
Birth       ki1000108-IRC              INDIA                          1                1       40     343
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0        1      17
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0      17
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0       15      17
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        1      17
Birth       ki1119695-PROBIT           BELARUS                        0                0     1501   13824
Birth       ki1119695-PROBIT           BELARUS                        0                1       92   13824
Birth       ki1119695-PROBIT           BELARUS                        1                0    11412   13824
Birth       ki1119695-PROBIT           BELARUS                        1                1      819   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                0     1016   12813
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                1       83   12813
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0    11011   12813
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1      703   12813
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0        2   15689
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1        0   15689
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0    15434   15689
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1      253   15689
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0        1     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1        0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0      677     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1        5     683
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0       25     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0      331     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1       12     368
6 months    ki1000108-IRC              INDIA                          0                0       64     408
6 months    ki1000108-IRC              INDIA                          0                1        4     408
6 months    ki1000108-IRC              INDIA                          1                0      322     408
6 months    ki1000108-IRC              INDIA                          1                1       18     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      134     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        0     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      443     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1        5     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      187     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      270     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1        0     457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0      187    2004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        2    2004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     1805    2004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       10    2004
6 months    ki1119695-PROBIT           BELARUS                        0                0     1794   15757
6 months    ki1119695-PROBIT           BELARUS                        0                1        4   15757
6 months    ki1119695-PROBIT           BELARUS                        1                0    13947   15757
6 months    ki1119695-PROBIT           BELARUS                        1                1       12   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0      701    8197
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1        5    8197
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0     7418    8197
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1       73    8197
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0     1068   16705
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1        7   16705
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0    15408   16705
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      222   16705
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0      333    4056
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1        4    4056
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     3695    4056
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1       24    4056
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0       25     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0      344     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1        3     372
24 months   ki1000108-IRC              INDIA                          0                0       67     409
24 months   ki1000108-IRC              INDIA                          0                1        2     409
24 months   ki1000108-IRC              INDIA                          1                0      337     409
24 months   ki1000108-IRC              INDIA                          1                1        3     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      135     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1        2     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      434     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1        7     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0       98     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1        1     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      160     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1        1     260
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   ki1119695-PROBIT           BELARUS                        0                0      462    3971
24 months   ki1119695-PROBIT           BELARUS                        0                1        1    3971
24 months   ki1119695-PROBIT           BELARUS                        1                0     3505    3971
24 months   ki1119695-PROBIT           BELARUS                        1                1        3    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0       28     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1        0     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0      359     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       30     417
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0      458    8555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1       17    8555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     7763    8555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      317    8555
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0      316    4008
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1        7    4008
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     3581    4008
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      104    4008


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
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/15bfc1f0-1172-4467-9bc3-dc996c293d20/c9dbb8f8-3d29-4728-8f35-95b6ab5b4a62/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/15bfc1f0-1172-4467-9bc3-dc996c293d20/c9dbb8f8-3d29-4728-8f35-95b6ab5b4a62/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/15bfc1f0-1172-4467-9bc3-dc996c293d20/c9dbb8f8-3d29-4728-8f35-95b6ab5b4a62/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/15bfc1f0-1172-4467-9bc3-dc996c293d20/c9dbb8f8-3d29-4728-8f35-95b6ab5b4a62/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC        INDIA        0                    NA                0.2112986   0.1119218   0.3106754
Birth       ki1000108-IRC        INDIA        1                    NA                0.1459696   0.1043695   0.1875697
Birth       ki1119695-PROBIT     BELARUS      0                    NA                0.0609092   0.0311508   0.0906676
Birth       ki1119695-PROBIT     BELARUS      1                    NA                0.0669184   0.0326297   0.1012071
Birth       ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                0.0745905   0.0586344   0.0905465
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0602303   0.0559148   0.0645457
6 months    ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                0.0070822   0.0008961   0.0132682
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0097450   0.0075203   0.0119697
6 months    kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0065116   0.0016099   0.0114134
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0142035   0.0120341   0.0163728
24 months   kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0368699   0.0199223   0.0538175
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0391664   0.0346852   0.0436476
24 months   kiGH5241-JiVitA-4    BANGLADESH   0                    NA                0.0216718   0.0056736   0.0376701
24 months   kiGH5241-JiVitA-4    BANGLADESH   1                    NA                0.0282225   0.0220464   0.0343986


### Parameter: E(Y)


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC        INDIA        NA                   NA                0.1574344   0.1188345   0.1960344
Birth       ki1119695-PROBIT     BELARUS      NA                   NA                0.0658999   0.0328405   0.0989593
Birth       ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0613439   0.0571889   0.0654990
6 months    ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0095157   0.0074139   0.0116175
6 months    kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0137085   0.0116390   0.0157780
24 months   kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0390415   0.0347089   0.0433741
24 months   kiGH5241-JiVitA-4    BANGLADESH   NA                   NA                0.0276946   0.0218340   0.0335552


### Parameter: RR


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC        INDIA        0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC        INDIA        1                    0                 0.6908212   0.3991638   1.195584
Birth       ki1119695-PROBIT     BELARUS      0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT     BELARUS      1                    0                 1.0986578   0.8081923   1.493517
Birth       ki1126311-ZVITAMBO   ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    0                 0.8074796   0.6443972   1.011834
6 months    ki1126311-ZVITAMBO   ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    0                 1.3759978   0.5578710   3.393921
6 months    kiGH5241-JiVitA-3    BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    0                 2.1812447   1.0194849   4.666894
24 months   kiGH5241-JiVitA-3    BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    0                 1.0622862   0.6611351   1.706840
24 months   kiGH5241-JiVitA-4    BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4    BANGLADESH   1                    0                 1.3022679   0.6065679   2.795897


### Parameter: PAR


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC        INDIA        0                    NA                -0.0538642   -0.1409477   0.0332192
Birth       ki1119695-PROBIT     BELARUS      0                    NA                 0.0049906   -0.0127225   0.0227038
Birth       ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                -0.0132465   -0.0284229   0.0019299
6 months    ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                 0.0024335   -0.0035742   0.0084412
6 months    kiGH5241-JiVitA-3    BANGLADESH   0                    NA                 0.0071968    0.0022767   0.0121170
24 months   kiGH5241-JiVitA-3    BANGLADESH   0                    NA                 0.0021716   -0.0144098   0.0187530
24 months   kiGH5241-JiVitA-4    BANGLADESH   0                    NA                 0.0060228   -0.0095887   0.0216342


### Parameter: PAF


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC        INDIA        0                    NA                -0.3421375   -1.0211563   0.1087611
Birth       ki1119695-PROBIT     BELARUS      0                    NA                 0.0757307   -0.2168258   0.2979489
Birth       ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                -0.2159383   -0.4898356   0.0076046
6 months    ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                 0.2557383   -0.7325140   0.6802765
6 months    kiGH5241-JiVitA-3    BANGLADESH   0                    NA                 0.5249924    0.0071734   0.7727375
24 months   kiGH5241-JiVitA-3    BANGLADESH   0                    NA                 0.0556230   -0.4803072   0.3975251
24 months   kiGH5241-JiVitA-4    BANGLADESH   0                    NA                 0.2174713   -0.6006481   0.6174355

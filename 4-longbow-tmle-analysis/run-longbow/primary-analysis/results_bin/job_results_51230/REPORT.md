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

agecat      studyid                    country                        vagbrth    wasted   n_cell       n
----------  -------------------------  -----------------------------  --------  -------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               0        8      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               1        2      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0       66      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1       12      88
Birth       ki1000108-IRC              INDIA                          0               0       45     343
Birth       ki1000108-IRC              INDIA                          0               1       21     343
Birth       ki1000108-IRC              INDIA                          1               0      206     343
Birth       ki1000108-IRC              INDIA                          1               1       71     343
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0        0      17
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1        1      17
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0       15      17
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1        1      17
Birth       ki1119695-PROBIT           BELARUS                        0               0     1303   13824
Birth       ki1119695-PROBIT           BELARUS                        0               1      290   13824
Birth       ki1119695-PROBIT           BELARUS                        1               0     9633   13824
Birth       ki1119695-PROBIT           BELARUS                        1               1     2598   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               0      906   12813
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               1      193   12813
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0     9861   12813
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1     1853   12813
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               0        2   15689
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1        0   15689
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0    14183   15689
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1     1504   15689
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0        1     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1        0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0      646     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1       36     683
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               0       21     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               1        4     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0      301     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1       42     368
6 months    ki1000108-IRC              INDIA                          0               0       61     408
6 months    ki1000108-IRC              INDIA                          0               1        7     408
6 months    ki1000108-IRC              INDIA                          1               0      293     408
6 months    ki1000108-IRC              INDIA                          1               1       47     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      129     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               1        5     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      429     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1       19     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0      185     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               1        2     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      257     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1       13     457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0      181    2004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        8    2004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0     1737    2004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       78    2004
6 months    ki1119695-PROBIT           BELARUS                        0               0     1779   15757
6 months    ki1119695-PROBIT           BELARUS                        0               1       19   15757
6 months    ki1119695-PROBIT           BELARUS                        1               0    13848   15757
6 months    ki1119695-PROBIT           BELARUS                        1               1      111   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               0      682    8197
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               1       24    8197
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0     7253    8197
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1      238    8197
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      124     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1       13     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      389     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       52     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0       90     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1        9     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      143     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       18     260
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ki1119695-PROBIT           BELARUS                        0               0      459    3971
24 months   ki1119695-PROBIT           BELARUS                        0               1        4    3971
24 months   ki1119695-PROBIT           BELARUS                        1               0     3468    3971
24 months   ki1119695-PROBIT           BELARUS                        1               1       40    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               0       27     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               1        1     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0      314     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1       75     417
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
![](/tmp/4e1ace6b-664c-4df6-90a8-3dc0cf597b07/38628697-1d4a-4ba9-8dab-cc42fd71625f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4e1ace6b-664c-4df6-90a8-3dc0cf597b07/38628697-1d4a-4ba9-8dab-cc42fd71625f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4e1ace6b-664c-4df6-90a8-3dc0cf597b07/38628697-1d4a-4ba9-8dab-cc42fd71625f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4e1ace6b-664c-4df6-90a8-3dc0cf597b07/38628697-1d4a-4ba9-8dab-cc42fd71625f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          0                    NA                0.3093064   0.1957981   0.4228147
Birth       ki1000108-IRC              INDIA                          1                    NA                0.2551690   0.2036337   0.3067044
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                0.1806880   0.1136258   0.2477502
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                0.2126788   0.1463500   0.2790075
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1743255   0.1514723   0.1971787
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1586472   0.1520188   0.1652755
6 months    ki1000108-IRC              INDIA                          0                    NA                0.1029412   0.0306257   0.1752567
6 months    ki1000108-IRC              INDIA                          1                    NA                0.1382353   0.1015032   0.1749674
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0373134   0.0051958   0.0694311
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0424107   0.0237336   0.0610878
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0423280   0.0136171   0.0710390
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0429752   0.0336429   0.0523075
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0106899   0.0059155   0.0154643
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0079304   0.0063542   0.0095066
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0333398   0.0194273   0.0472523
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0319497   0.0279514   0.0359481
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0733110   0.0560153   0.0906067
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0858426   0.0808989   0.0907863
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0415052   0.0163230   0.0666874
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0545907   0.0443101   0.0648712
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0724638   0.0112173   0.1337102
24 months   ki1000108-IRC              INDIA                          1                    NA                0.0764706   0.0481884   0.1047528
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0935847   0.0434862   0.1436833
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1190190   0.0884601   0.1495778
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0909091   0.0341710   0.1476472
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1118012   0.0630315   0.1605710
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1706737   0.1293081   0.2120394
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2213750   0.2109645   0.2317854
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1837573   0.1371828   0.2303319
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2037225   0.1883536   0.2190914


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.2682216   0.2212677   0.3151755
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.2089120   0.1435514   0.2742726
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1596816   0.1533387   0.1660245
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1323529   0.0994307   0.1652752
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0412371   0.0250690   0.0574052
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0429142   0.0340389   0.0517895
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0082503   0.0066012   0.0098994
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0319629   0.0281547   0.0357711
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0847650   0.0799741   0.0895560
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0535010   0.0438560   0.0631459
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0757946   0.0501131   0.1014762
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1038462   0.0666939   0.1409984
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2182350   0.2083008   0.2281691
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2023453   0.1877652   0.2169254


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC              INDIA                          1                    0                 0.8249716   0.5426856   1.254093
Birth       ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                 1.1770497   0.9737881   1.422739
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9100627   0.7931290   1.044236
6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA                          1                    0                 1.3428571   0.6336429   2.845870
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1366071   0.4322192   2.988937
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0152893   0.4980591   2.069659
6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 0.7418568   0.4888525   1.125803
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9583066   0.6198703   1.481522
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.1709371   0.9237559   1.484260
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.3152725   0.6961694   2.484944
24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA                          1                    0                 1.0552941   0.4194722   2.654874
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2717773   0.7021041   2.303672
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.2298137   0.5743075   2.633505
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.2970651   1.0124132   1.661750
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1086498   0.8505072   1.445143


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.0410848   -0.1419625   0.0597928
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 0.0282240   -0.0028037   0.0592517
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0146440   -0.0364788   0.0071908
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.0294118   -0.0381917   0.0970152
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0039237   -0.0246761   0.0325234
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0005861   -0.0267563   0.0279285
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0024396   -0.0064012   0.0015220
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0013769   -0.0146913   0.0119375
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0114540   -0.0051401   0.0280481
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0119958   -0.0129768   0.0369683
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0033309   -0.0527495   0.0594112
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0188720   -0.0261516   0.0638956
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0129371   -0.0334089   0.0592830
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0475612    0.0066168   0.0885056
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0185880   -0.0266873   0.0638633


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.1531750   -0.5972030   0.1674117
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 0.1351000   -0.0249427   0.2701524
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0917073   -0.2373558   0.0367970
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.2222222   -0.4955071   0.5954962
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0951493   -0.9453954   0.5791319
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0136582   -0.8817567   0.4829989
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.2957002   -0.8532442   0.0941080
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0430776   -0.5549976   0.3003135
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1351266   -0.0848025   0.3104681
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2242162   -0.4064737   0.5720925
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0439458   -1.0726677   0.5590033
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1678156   -0.3444673   0.4849032
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1245791   -0.4545902   0.4731425
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2179358    0.0065621   0.3843356
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0918626   -0.1613922   0.2898923

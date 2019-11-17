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

**Outcome Variable:** y_rate_wtkg

## Predictor Variables

**Intervention Variable:** vagbrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        vagbrth    n_cell       n
-------------  -------------------------  -----------------------------  --------  -------  ------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              23     331
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1             308     331
0-3 months     ki1000108-IRC              INDIA                          0              66     394
0-3 months     ki1000108-IRC              INDIA                          1             328     394
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0             149     640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1             491     640
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             195     472
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             277     472
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             189    1997
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            1808    1997
0-3 months     ki1119695-PROBIT           BELARUS                        0             783    7546
0-3 months     ki1119695-PROBIT           BELARUS                        1            6763    7546
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0             704    8110
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1            7406    8110
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0             435   10004
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1            9569   10004
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0              37     638
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1             601     638
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              21     322
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1             301     322
3-6 months     ki1000108-IRC              INDIA                          0              66     399
3-6 months     ki1000108-IRC              INDIA                          1             333     399
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0             139     601
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1             462     601
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             184     449
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             265     449
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             158    1645
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            1487    1645
3-6 months     ki1119695-PROBIT           BELARUS                        0             692    6702
3-6 months     ki1119695-PROBIT           BELARUS                        1            6010    6702
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0             531    6090
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1            5559    6090
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0             392    6284
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1            5892    6284
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0              21     412
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1             391     412
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              22     325
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1             303     325
6-9 months     ki1000108-IRC              INDIA                          0              70     410
6-9 months     ki1000108-IRC              INDIA                          1             340     410
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0             129     576
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1             447     576
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             180     438
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             258     438
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             142    1480
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            1338    1480
6-9 months     ki1119695-PROBIT           BELARUS                        0             659    6268
6-9 months     ki1119695-PROBIT           BELARUS                        1            5609    6268
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0             474    5524
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1            5050    5524
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0              35     684
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1             649     684
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              23     327
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             304     327
9-12 months    ki1000108-IRC              INDIA                          0              69     403
9-12 months    ki1000108-IRC              INDIA                          1             334     403
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0             128     569
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1             441     569
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             178     428
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             250     428
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             100    1068
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             968    1068
9-12 months    ki1119695-PROBIT           BELARUS                        0             650    6267
9-12 months    ki1119695-PROBIT           BELARUS                        1            5617    6267
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0             418    5011
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            4593    5011
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0              45     736
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1             691     736
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              21     334
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             313     334
12-15 months   ki1000108-IRC              INDIA                          0              69     392
12-15 months   ki1000108-IRC              INDIA                          1             323     392
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0             121     537
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1             416     537
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             171     411
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             240     411
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              71     778
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             707     778
12-15 months   ki1119695-PROBIT           BELARUS                        0              27     282
12-15 months   ki1119695-PROBIT           BELARUS                        1             255     282
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0             145    1840
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            1695    1840
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0              50     737
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1             687     737
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              22     325
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             303     325
15-18 months   ki1000108-IRC              INDIA                          0              67     383
15-18 months   ki1000108-IRC              INDIA                          1             316     383
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0             124     533
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1             409     533
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             138     351
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             213     351
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              60     655
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             595     655
15-18 months   ki1119695-PROBIT           BELARUS                        0               1      38
15-18 months   ki1119695-PROBIT           BELARUS                        1              37      38
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0              92    1187
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            1095    1187
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0              59     751
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1             692     751
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              23     310
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             287     310
18-21 months   ki1000108-IRC              INDIA                          0              64     380
18-21 months   ki1000108-IRC              INDIA                          1             316     380
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0             123     542
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1             419     542
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             119     295
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             176     295
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      11
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              10      11
18-21 months   ki1119695-PROBIT           BELARUS                        0               2      21
18-21 months   ki1119695-PROBIT           BELARUS                        1              19      21
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0              44     648
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             604     648
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              23     311
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             288     311
21-24 months   ki1000108-IRC              INDIA                          0              65     389
21-24 months   ki1000108-IRC              INDIA                          1             324     389
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0             109     485
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1             376     485
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              94     241
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             147     241
21-24 months   ki1119695-PROBIT           BELARUS                        0               3      33
21-24 months   ki1119695-PROBIT           BELARUS                        1              30      33
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0              20     296
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             276     296


The following strata were considered:

* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
![](/tmp/80f13b45-1221-44e0-8f32-f52d6bcefbc3/5829b436-f8e6-4470-86b3-fbe1dc50f6ad/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/80f13b45-1221-44e0-8f32-f52d6bcefbc3/5829b436-f8e6-4470-86b3-fbe1dc50f6ad/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/80f13b45-1221-44e0-8f32-f52d6bcefbc3/5829b436-f8e6-4470-86b3-fbe1dc50f6ad/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6967204    0.6139620   0.7794788
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7504923    0.7258460   0.7751386
0-3 months     ki1000108-IRC              INDIA                          0                    NA                0.7594520    0.6967586   0.8221454
0-3 months     ki1000108-IRC              INDIA                          1                    NA                0.7697087    0.7500601   0.7893573
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.9278173    0.8956272   0.9600074
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8937055    0.8772015   0.9102096
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.8460417    0.8184754   0.8736080
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8861169    0.8615053   0.9107285
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9248109    0.8871426   0.9624791
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9217936    0.9113287   0.9322585
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                0.8070215    0.7924850   0.8215580
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                0.8254111    0.8084602   0.8423619
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.9468264    0.9299575   0.9636953
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.9498845    0.9444755   0.9552934
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.9244159    0.9035552   0.9452765
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.8471130    0.8430161   0.8512099
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.5610409    0.4229927   0.6990892
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.7409243    0.7143891   0.7674596
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.4433967    0.3843515   0.5024419
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.4773725    0.4575885   0.4971564
3-6 months     ki1000108-IRC              INDIA                          0                    NA                0.4960738    0.4561598   0.5359878
3-6 months     ki1000108-IRC              INDIA                          1                    NA                0.4601253    0.4406829   0.4795678
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.5047004    0.4795079   0.5298929
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4843558    0.4691843   0.4995273
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.4932105    0.4716751   0.5147460
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4946545    0.4767700   0.5125389
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4347369    0.4012160   0.4682577
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4174119    0.4084657   0.4263581
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                0.6662258    0.6443021   0.6881495
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                0.6653357    0.6496984   0.6809730
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.4918481    0.4759743   0.5077219
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4770704    0.4723271   0.4818136
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4755443    0.4472739   0.5038148
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4434315    0.4393436   0.4475193
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.4961780    0.4363939   0.5559622
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4406018    0.4165789   0.4646247
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3214219    0.2211207   0.4217231
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2550994    0.2395825   0.2706163
6-9 months     ki1000108-IRC              INDIA                          0                    NA                0.2686975    0.2350117   0.3023833
6-9 months     ki1000108-IRC              INDIA                          1                    NA                0.2613820    0.2461688   0.2765952
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2640026    0.2435139   0.2844912
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2448834    0.2305477   0.2592192
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2667459    0.2464672   0.2870245
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2328150    0.2168097   0.2488202
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2704957    0.2391843   0.3018071
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2546842    0.2453706   0.2639979
6-9 months     ki1119695-PROBIT           BELARUS                        0                    NA                0.4834693    0.4584648   0.5084738
6-9 months     ki1119695-PROBIT           BELARUS                        1                    NA                0.4761914    0.4608486   0.4915342
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2650123    0.2495434   0.2804812
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2578001    0.2530802   0.2625199
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2262776    0.2005647   0.2519906
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2326924    0.2216584   0.2437264
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2270089    0.1623449   0.2916729
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2112203    0.1930541   0.2293865
9-12 months    ki1000108-IRC              INDIA                          0                    NA                0.2134720    0.1735889   0.2533550
9-12 months    ki1000108-IRC              INDIA                          1                    NA                0.2131733    0.1981060   0.2282406
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1895571    0.1688887   0.2102255
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1740412    0.1636199   0.1844625
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2071066    0.1862902   0.2279230
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1677362    0.1504990   0.1849734
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2321493    0.1972810   0.2670177
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2024956    0.1919442   0.2130471
9-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.3739528    0.3475592   0.4003463
9-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.3714909    0.3449088   0.3980731
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1823612    0.1667396   0.1979828
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1795148    0.1747562   0.1842735
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1411141    0.1141028   0.1681254
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1364653    0.1266838   0.1462468
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1708676    0.1229563   0.2187790
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1490980    0.1347296   0.1634665
12-15 months   ki1000108-IRC              INDIA                          0                    NA                0.2056900    0.1699238   0.2414563
12-15 months   ki1000108-IRC              INDIA                          1                    NA                0.1771123    0.1636564   0.1905683
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1830276    0.1614450   0.2046102
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1791612    0.1654183   0.1929040
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1676118    0.1479721   0.1872516
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1678164    0.1515368   0.1840959
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2069898    0.1705236   0.2434560
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1698148    0.1579272   0.1817025
12-15 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.1583841   -0.0178337   0.3346019
12-15 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.2352790    0.1049232   0.3656347
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1367229    0.1084041   0.1650417
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1511673    0.1428908   0.1594437
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1221499    0.0509229   0.1933768
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1267837    0.1171636   0.1364037
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1570290    0.1129017   0.2011562
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1518317    0.1369923   0.1666711
15-18 months   ki1000108-IRC              INDIA                          0                    NA                0.1667875    0.1335978   0.1999773
15-18 months   ki1000108-IRC              INDIA                          1                    NA                0.1591167    0.1442588   0.1739747
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1633141    0.1371929   0.1894353
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1542405    0.1411129   0.1673681
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1507476    0.1259115   0.1755838
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1440828    0.1288171   0.1593484
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1876146    0.1386797   0.2365496
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1685508    0.1536081   0.1834936
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1531535    0.1158745   0.1904325
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1327276    0.1216518   0.1438035
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1680136    0.1118654   0.2241617
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1552097    0.1452762   0.1651432
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1604712    0.1087589   0.2121835
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1332101    0.1173637   0.1490566
18-21 months   ki1000108-IRC              INDIA                          0                    NA                0.1447141    0.1014130   0.1880152
18-21 months   ki1000108-IRC              INDIA                          1                    NA                0.1618683    0.1483988   0.1753377
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1176558    0.0909219   0.1443897
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1368423    0.1243203   0.1493643
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1220873    0.1008265   0.1433480
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1544407    0.1373560   0.1715253
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0708016   -0.0072671   0.1488702
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1238536    0.1063633   0.1413439
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1356124    0.0707771   0.2004477
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1494742    0.1353214   0.1636270
21-24 months   ki1000108-IRC              INDIA                          0                    NA                0.2085540    0.1761323   0.2409758
21-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1715510    0.1563802   0.1867218
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1344298    0.1124688   0.1563908
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1441565    0.1308565   0.1574565
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1515337    0.1206961   0.1823713
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1446813    0.1245341   0.1648284
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2242570    0.1007436   0.3477705
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1012276    0.0726468   0.1298084


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7467559   0.7230662   0.7704455
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                0.7679906   0.7485485   0.7874326
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8695604   0.8510808   0.8880400
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9220792   0.9119561   0.9322023
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.8235029   0.8073992   0.8396066
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.9496190   0.9444671   0.9547709
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.8504744   0.8464036   0.8545452
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.7304922   0.7041278   0.7568567
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4751567   0.4562440   0.4940693
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                0.4660717   0.4485044   0.4836390
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4940627   0.4803039   0.5078216
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4190760   0.4103682   0.4277837
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.6654276   0.6499538   0.6809014
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4783589   0.4738121   0.4829056
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4454347   0.4411516   0.4497177
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4434346   0.4203399   0.4665293
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2595889   0.2435057   0.2756721
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                0.2626310   0.2487635   0.2764985
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2467592   0.2340792   0.2594392
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2562013   0.2472582   0.2651444
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.4769566   0.4617272   0.4921860
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2584189   0.2539042   0.2629336
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2323642   0.2218436   0.2428847
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2123308   0.1948351   0.2298265
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                0.2132244   0.1989917   0.2274571
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1841099   0.1707043   0.1975155
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2052722   0.1951535   0.2153909
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.3717463   0.3460555   0.3974370
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1797523   0.1752000   0.1843045
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1367495   0.1274323   0.1460668
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1504668   0.1366572   0.1642764
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                0.1821426   0.1693469   0.1949383
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1677313   0.1551957   0.1802668
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1732074   0.1618786   0.1845362
12-15 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2279167   0.1049452   0.3508882
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1500290   0.1420829   0.1579751
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1264693   0.1158831   0.1370555
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1521835   0.1380291   0.1663379
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                0.1604586   0.1468913   0.1740260
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1467031   0.1332390   0.1601672
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1702971   0.1559960   0.1845983
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1343108   0.1236882   0.1449334
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1562156   0.1459304   0.1665008
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1352327   0.1200477   0.1504178
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                0.1589791   0.1455977   0.1723606
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1413896   0.1279457   0.1548336
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1202513   0.1030776   0.1374250
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1484491   0.1344875   0.1624106
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1777340   0.1639174   0.1915507
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1473540   0.1301532   0.1645548
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1095404   0.0813931   0.1376877


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0537719   -0.0325785    0.1401223
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  0.0102567   -0.0554436    0.0759570
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0341118   -0.0702862    0.0020626
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0400752    0.0031207    0.0770296
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0030173   -0.0421122    0.0360777
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.0183896    0.0047782    0.0320009
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0030580   -0.0146568    0.0207729
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0773028   -0.0987952   -0.0558105
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.1798834    0.0386607    0.3211061
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0339758   -0.0282957    0.0962473
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                 -0.0359485   -0.0803460    0.0084490
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0203447   -0.0497528    0.0090635
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0014439   -0.0265494    0.0294373
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0173249   -0.0520190    0.0173692
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                 -0.0008901   -0.0187336    0.0169533
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0147778   -0.0313451    0.0017895
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0321129   -0.0606357   -0.0035901
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0555762   -0.1192509    0.0080985
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0663225   -0.1678169    0.0351719
6-9 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          1                    0                 -0.0073155   -0.0442772    0.0296463
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0191191   -0.0441251    0.0058868
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0339309   -0.0597648   -0.0080969
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0158114   -0.0484787    0.0168558
6-9 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        1                    0                 -0.0072779   -0.0285624    0.0140065
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0072122   -0.0233851    0.0089607
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0064148   -0.0218259    0.0346554
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0157886   -0.0829559    0.0513787
9-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0002987   -0.0429330    0.0423356
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0155159   -0.0386630    0.0076311
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0393704   -0.0663971   -0.0123436
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0296537   -0.0660835    0.0067761
9-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        1                    0                 -0.0024619   -0.0243754    0.0194516
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0028464   -0.0191767    0.0134840
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0046488   -0.0334261    0.0241285
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0217696   -0.0717891    0.0282499
12-15 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          1                    0                 -0.0285777   -0.0667914    0.0096360
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0038664   -0.0294530    0.0217202
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0002045   -0.0253052    0.0257142
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0371749   -0.0755298    0.0011800
12-15 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS                        1                    0                  0.0768949   -0.1208572    0.2746469
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0144444   -0.0150591    0.0439478
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0046338   -0.0663583    0.0756259
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0051973   -0.0517529    0.0413583
15-18 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          1                    0                 -0.0076708   -0.0440345    0.0286929
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0090736   -0.0383080    0.0201608
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0066649   -0.0358175    0.0224877
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0190638   -0.0702293    0.0321017
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0204259   -0.0593155    0.0184637
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0128038   -0.0696613    0.0440536
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0272611   -0.0813468    0.0268247
18-21 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          1                    0                  0.0171542   -0.0281935    0.0625019
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0191865   -0.0103347    0.0487077
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0323534    0.0050787    0.0596280
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0530520   -0.0269519    0.1330559
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0138618   -0.0525002    0.0802239
21-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0370030   -0.0727986   -0.0012074
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0097267   -0.0159477    0.0354011
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0068525   -0.0436881    0.0299832
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.1230294   -0.2498065    0.0037476


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0500355   -0.0303282    0.1303993
0-3 months     ki1000108-IRC              INDIA                          0                    NA                 0.0085385   -0.0461574    0.0632345
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0261701   -0.0539452    0.0016049
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0235187    0.0017584    0.0452791
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0027317   -0.0381266    0.0326632
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0164814    0.0043807    0.0285822
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0027926   -0.0133845    0.0189697
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0739415   -0.0945383   -0.0533447
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1694513    0.0365850    0.3023176
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0317600   -0.0264576    0.0899775
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0300021   -0.0670789    0.0070747
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0156393   -0.0382563    0.0069777
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0008522   -0.0156696    0.0173740
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0156609   -0.0470236    0.0157018
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                -0.0007982   -0.0167972    0.0152007
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0134893   -0.0286124    0.0016339
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0301097   -0.0567450   -0.0034743
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0527434   -0.1129360    0.0074491
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0618330   -0.1564743    0.0328084
6-9 months     ki1000108-IRC              INDIA                          0                    NA                -0.0060665   -0.0367189    0.0245859
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0148373   -0.0342539    0.0045793
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0199867   -0.0352842   -0.0046891
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0142944   -0.0438283    0.0152395
6-9 months     ki1119695-PROBIT           BELARUS                        0                    NA                -0.0065127   -0.0255839    0.0125584
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0065934   -0.0213786    0.0081919
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0060865   -0.0207059    0.0328790
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0146781   -0.0771226    0.0477664
9-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0002475   -0.0355822    0.0350871
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0120255   -0.0299734    0.0059224
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0229967   -0.0388903   -0.0071031
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0268771   -0.0599000    0.0061457
9-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0022065   -0.0218515    0.0174384
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0026089   -0.0175771    0.0123592
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0043646   -0.0314009    0.0226717
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0204008   -0.0672788    0.0264772
12-15 months   ki1000108-IRC              INDIA                          0                    NA                -0.0235474   -0.0550532    0.0079584
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0029952   -0.0228170    0.0168266
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0001194   -0.0147767    0.0150156
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0337824   -0.0686451    0.0010804
12-15 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0695326   -0.1096265    0.2486916
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0133061   -0.0138729    0.0404851
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0043194   -0.0618124    0.0704512
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0048455   -0.0482498    0.0385589
15-18 months   ki1000108-IRC              INDIA                          0                    NA                -0.0063289   -0.0363328    0.0236749
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0069627   -0.0293982    0.0154728
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0040445   -0.0217387    0.0136497
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0173175   -0.0637980    0.0291630
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0188427   -0.0547195    0.0170340
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0117979   -0.0640417    0.0404458
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0252385   -0.0753178    0.0248408
18-21 months   ki1000108-IRC              INDIA                          0                    NA                 0.0142651   -0.0234506    0.0519808
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0148324   -0.0079994    0.0376641
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0193023    0.0029292    0.0356755
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0494497   -0.0251289    0.1240284
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0128367   -0.0486189    0.0742922
21-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0308200   -0.0606659   -0.0009741
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0075407   -0.0123669    0.0274483
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0041797   -0.0266519    0.0182925
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1147166   -0.2329802    0.0035469

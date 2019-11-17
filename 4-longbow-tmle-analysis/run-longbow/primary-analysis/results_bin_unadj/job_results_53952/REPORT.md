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

**Outcome Variable:** ever_sstunted

## Predictor Variables

**Intervention Variable:** mbmi

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mbmi             ever_sstunted   n_cell       n
------------  -------------------------  -----------------------------  --------------  --------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                0      176     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                1       46     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                  0       22     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                  1       10     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                0      192     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                1       19     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                  0        8     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                  1        2     221
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                0      148     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                1       45     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                  0       36     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                  1       13     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                0      217     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                1       21     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                  0        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                  1        0     238
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight                0      225     290
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight                1       60     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                  0        2     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                  1        3     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                0      195     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                1       67     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                  0        5     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                  1        3     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                0      114     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                1      128     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                  0        6     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                  1        8     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight                0      712    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight                1      316    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                  0      231    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                  1      148    1407
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                0      374     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                1      149     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                  0       59     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                  1       47     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                0      477     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                1       65     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                  0       98     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                  1       29     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                0      603     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                1       84     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                  0       53     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                  1       15     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                0     2078    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                1      229    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  0       34    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  1        4    2345
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight                0     2480    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight                1      282    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                  0      398    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                  1       56    3216
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight                0    12699   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight                1      506   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                  0      496   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                  1       27   13728
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                0     7629    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                1     1673    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                  0      394    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                  1      123    9819
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                0      550     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                1      142     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                  0      110     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                  1       35     837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight                0    13500   27105
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight                1     3222   27105
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight                  0     8606   27105
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight                  1     1777   27105
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight                0      206     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight                1       16     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                  0       29     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                  1        3     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight                0      196     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight                1       15     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                  0        9     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                  1        1     221
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight                0      179     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight                1       14     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                  0       43     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                  1        6     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight                0      228     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight                1       10     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                  0        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                  1        0     238
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight                0      250     290
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight                1       35     290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                  0        3     290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                  1        2     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                0      237     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                1       25     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                  0        6     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                  1        2     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                0      208     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                1       34     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                  0       11     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                  1        3     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight                0      884    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight                1      141    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                  0      304    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                  1       75    1404
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight                0      478     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight                1       45     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                  0       92     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                  1       14     629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight                0      515     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight                1       27     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                  0      123     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                  1        4     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                0      649     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                1       38     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                  0       59     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                  1        9     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                0     2209    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                1       98    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  0       35    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  1        3    2345
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight                0    13039   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight                1      166   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                  0      512   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                  1       11   13728
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                0     8377    9808
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                1      914    9808
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                  0      443    9808
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                  1       74    9808
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight                0      206     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight                1       18     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                  0       45     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                  1        2     271
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight                0    14120   27039
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight                1     2567   27039
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight                  0     8937   27039
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight                  1     1415   27039


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/ee99f690-5710-466d-a0ba-a824c25ec2fc/5750c8bd-94a6-476d-bed2-927e8237a4fe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ee99f690-5710-466d-a0ba-a824c25ec2fc/5750c8bd-94a6-476d-bed2-927e8237a4fe/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ee99f690-5710-466d-a0ba-a824c25ec2fc/5750c8bd-94a6-476d-bed2-927e8237a4fe/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ee99f690-5710-466d-a0ba-a824c25ec2fc/5750c8bd-94a6-476d-bed2-927e8237a4fe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     Normal weight        NA                0.2072072   0.1537864   0.2606280
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     Underweight          NA                0.3125000   0.1515870   0.4734130
0-24 months   ki0047075b-MAL-ED         INDIA                          Normal weight        NA                0.2331606   0.1733817   0.2929396
0-24 months   ki0047075b-MAL-ED         INDIA                          Underweight          NA                0.2653061   0.1414333   0.3891790
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.5289256   0.4659123   0.5919389
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.5714286   0.3116959   0.8311612
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          Normal weight        NA                0.3073930   0.2648404   0.3499455
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          Underweight          NA                0.3905013   0.3442165   0.4367862
0-24 months   ki1017093-NIH-Birth       BANGLADESH                     Normal weight        NA                0.2848948   0.2461807   0.3236090
0-24 months   ki1017093-NIH-Birth       BANGLADESH                     Underweight          NA                0.4433962   0.3487486   0.5380439
0-24 months   ki1017093b-PROVIDE        BANGLADESH                     Normal weight        NA                0.1199262   0.0925553   0.1472971
0-24 months   ki1017093b-PROVIDE        BANGLADESH                     Underweight          NA                0.2283465   0.1552865   0.3014064
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Normal weight        NA                0.1222707   0.0977576   0.1467839
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Underweight          NA                0.2205882   0.1219703   0.3192062
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO                   Normal weight        NA                0.1020999   0.0810032   0.1231967
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO                   Underweight          NA                0.1233480   0.0718839   0.1748121
0-24 months   ki1119695-PROBIT          BELARUS                        Normal weight        NA                0.0383188   0.0300884   0.0465492
0-24 months   ki1119695-PROBIT          BELARUS                        Underweight          NA                0.0516252   0.0326607   0.0705898
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       Normal weight        NA                0.1798538   0.1720485   0.1876591
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       Underweight          NA                0.2379110   0.2012052   0.2746169
0-24 months   ki1148112-LCNI-5          MALAWI                         Normal weight        NA                0.2052023   0.1750949   0.2353098
0-24 months   ki1148112-LCNI-5          MALAWI                         Underweight          NA                0.2413793   0.1716868   0.3110718
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     Normal weight        NA                0.1926803   0.1857645   0.1995961
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     Underweight          NA                0.1711451   0.1630863   0.1792039
0-6 months    ki0047075b-MAL-ED         INDIA                          Normal weight        NA                0.0725389   0.0358696   0.1092081
0-6 months    ki0047075b-MAL-ED         INDIA                          Underweight          NA                0.1224490   0.0304754   0.2144225
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          Normal weight        NA                0.1375610   0.1179684   0.1571535
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          Underweight          NA                0.1978892   0.1535731   0.2422053
0-6 months    ki1017093-NIH-Birth       BANGLADESH                     Normal weight        NA                0.0860421   0.0619895   0.1100946
0-6 months    ki1017093-NIH-Birth       BANGLADESH                     Underweight          NA                0.1320755   0.0675706   0.1965804
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Normal weight        NA                0.0553130   0.0382083   0.0724176
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Underweight          NA                0.1323529   0.0517558   0.2129501
0-6 months    ki1119695-PROBIT          BELARUS                        Normal weight        NA                0.0125710   0.0092156   0.0159263
0-6 months    ki1119695-PROBIT          BELARUS                        Underweight          NA                0.0210325   0.0109067   0.0311583
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       Normal weight        NA                0.0983748   0.0923187   0.1044309
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       Underweight          NA                0.1431335   0.1129442   0.1733227
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     Normal weight        NA                0.1538323   0.1477185   0.1599462
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     Underweight          NA                0.1366886   0.1293316   0.1440455


### Parameter: E(Y)


agecat        studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.2204724   0.1693889   0.2715560
0-24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.2396694   0.1857746   0.2935643
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5312500   0.4700011   0.5924989
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.3297797   0.2987556   0.3608038
0-24 months   ki1017093-NIH-Birth       BANGLADESH                     NA                   NA                0.3116057   0.2753823   0.3478292
0-24 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.1405082   0.1141551   0.1668613
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.1311258   0.1070332   0.1552185
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO                   NA                   NA                0.1050995   0.0855497   0.1246493
0-24 months   ki1119695-PROBIT          BELARUS                        NA                   NA                0.0388258   0.0305723   0.0470792
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.1829107   0.1752637   0.1905577
0-24 months   ki1148112-LCNI-5          MALAWI                         NA                   NA                0.2114695   0.1837888   0.2391503
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.1844309   0.1788328   0.1900291
0-6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                0.0826446   0.0478818   0.1174075
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.1538462   0.1345929   0.1730994
0-6 months    ki1017093-NIH-Birth       BANGLADESH                     NA                   NA                0.0937997   0.0709973   0.1166021
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.0622517   0.0450059   0.0794974
0-6 months    ki1119695-PROBIT          BELARUS                        NA                   NA                0.0128934   0.0095196   0.0162671
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.1007341   0.0947773   0.1066909
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.1472688   0.1422160   0.1523215


### Parameter: RR


agecat        studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     Underweight          Normal weight     1.5081522   0.8479171   2.6824827
0-24 months   ki0047075b-MAL-ED         INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         INDIA                          Underweight          Normal weight     1.1378685   0.6679713   1.9383239
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.0803571   0.6753029   1.7283675
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          Underweight          Normal weight     1.2703651   1.0361717   1.5574902
0-24 months   ki1017093-NIH-Birth       BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth       BANGLADESH                     Underweight          Normal weight     1.5563505   1.2084028   2.0044863
0-24 months   ki1017093b-PROVIDE        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH                     Underweight          Normal weight     1.9040581   1.2852775   2.8207429
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Underweight          Normal weight     1.8040966   1.1052787   2.9447456
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO                   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO                   Underweight          Normal weight     1.2081107   0.7608260   1.9183512
0-24 months   ki1119695-PROBIT          BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT          BELARUS                        Underweight          Normal weight     1.3472555   0.9660450   1.8788953
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       Underweight          Normal weight     1.3228024   1.1269121   1.5527441
0-24 months   ki1148112-LCNI-5          MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5          MALAWI                         Underweight          Normal weight     1.1762992   0.8508719   1.6261904
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     Underweight          Normal weight     0.8882337   0.8405652   0.9386055
0-6 months    ki0047075b-MAL-ED         INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         INDIA                          Underweight          Normal weight     1.6880466   0.6826237   4.1743369
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          Underweight          Normal weight     1.4385561   1.1136905   1.8581857
0-6 months    ki1017093-NIH-Birth       BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth       BANGLADESH                     Underweight          Normal weight     1.5350105   0.8744146   2.6946682
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Underweight          Normal weight     2.3928019   1.2086339   4.7371672
0-6 months    ki1119695-PROBIT          BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT          BELARUS                        Underweight          Normal weight     1.6730977   1.0517535   2.6615134
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       Underweight          Normal weight     1.4549814   1.1679800   1.8125059
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     Underweight          Normal weight     0.8885555   0.8354002   0.9450930


### Parameter: PAR


agecat        studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     Normal weight        NA                 0.0132652   -0.0085248    0.0350553
0-24 months   ki0047075b-MAL-ED         INDIA                          Normal weight        NA                 0.0065088   -0.0213885    0.0344061
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0023244   -0.0123398    0.0169886
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          Normal weight        NA                 0.0223867    0.0044410    0.0403324
0-24 months   ki1017093-NIH-Birth       BANGLADESH                     Normal weight        NA                 0.0267109    0.0088642    0.0445576
0-24 months   ki1017093b-PROVIDE        BANGLADESH                     Normal weight        NA                 0.0205820    0.0054244    0.0357397
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Normal weight        NA                 0.0088551   -0.0005152    0.0182254
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO                   Normal weight        NA                 0.0029996   -0.0043849    0.0103840
0-24 months   ki1119695-PROBIT          BELARUS                        Normal weight        NA                 0.0005069   -0.0001342    0.0011481
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       Normal weight        NA                 0.0030569    0.0010644    0.0050494
0-24 months   ki1148112-LCNI-5          MALAWI                         Normal weight        NA                 0.0062672   -0.0069173    0.0194517
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0082494   -0.0120382   -0.0044606
0-6 months    ki0047075b-MAL-ED         INDIA                          Normal weight        NA                 0.0101058   -0.0101018    0.0303133
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          Normal weight        NA                 0.0162852    0.0045184    0.0280519
0-6 months    ki1017093-NIH-Birth       BANGLADESH                     Normal weight        NA                 0.0077576   -0.0039220    0.0194372
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Normal weight        NA                 0.0069387   -0.0006472    0.0145246
0-6 months    ki1119695-PROBIT          BELARUS                        Normal weight        NA                 0.0003224   -0.0000386    0.0006833
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       Normal weight        NA                 0.0023593    0.0007243    0.0039944
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0065636   -0.0099371   -0.0031901


### Parameter: PAF


agecat        studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     Normal weight        NA                 0.0601673   -0.0435371    0.1535658
0-24 months   ki0047075b-MAL-ED         INDIA                          Normal weight        NA                 0.0271574   -0.0964214    0.1368075
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0043753   -0.0236201    0.0316050
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          Normal weight        NA                 0.0678837    0.0083497    0.1238436
0-24 months   ki1017093-NIH-Birth       BANGLADESH                     Normal weight        NA                 0.0857201    0.0267740    0.1410961
0-24 months   ki1017093b-PROVIDE        BANGLADESH                     Normal weight        NA                 0.1464827    0.0343833    0.2455683
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Normal weight        NA                 0.0675312   -0.0058990    0.1356010
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO                   Normal weight        NA                 0.0285403   -0.0447042    0.0966497
0-24 months   ki1119695-PROBIT          BELARUS                        Normal weight        NA                 0.0130568   -0.0036222    0.0294586
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       Normal weight        NA                 0.0167125    0.0057715    0.0275330
0-24 months   ki1148112-LCNI-5          MALAWI                         Normal weight        NA                 0.0296365   -0.0346954    0.0899687
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0447289   -0.0654513   -0.0244094
0-6 months    ki0047075b-MAL-ED         INDIA                          Normal weight        NA                 0.1222798   -0.1536263    0.3321990
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          Normal weight        NA                 0.1058537    0.0287862    0.1768057
0-6 months    ki1017093-NIH-Birth       BANGLADESH                     Normal weight        NA                 0.0827041   -0.0491461    0.1979842
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Normal weight        NA                 0.1114621   -0.0151402    0.2222753
0-6 months    ki1119695-PROBIT          BELARUS                        Normal weight        NA                 0.0250021   -0.0034839    0.0526794
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       Normal weight        NA                 0.0234213    0.0071011    0.0394732
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0445686   -0.0677595   -0.0218815

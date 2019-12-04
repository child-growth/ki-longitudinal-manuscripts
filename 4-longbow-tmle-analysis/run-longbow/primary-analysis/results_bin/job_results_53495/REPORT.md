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

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

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




# Results Detail

## Results Plots
![](/tmp/a259c216-052d-4286-94bb-8c9cef824a3d/cc39fdee-6fcc-4259-a8a6-18d02f263903/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a259c216-052d-4286-94bb-8c9cef824a3d/cc39fdee-6fcc-4259-a8a6-18d02f263903/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a259c216-052d-4286-94bb-8c9cef824a3d/cc39fdee-6fcc-4259-a8a6-18d02f263903/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a259c216-052d-4286-94bb-8c9cef824a3d/cc39fdee-6fcc-4259-a8a6-18d02f263903/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     Normal weight        NA                0.2050643   0.1516412   0.2584875
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     Underweight          NA                0.2640339   0.0995422   0.4285256
0-24 months   ki0047075b-MAL-ED         INDIA                          Normal weight        NA                0.2359847   0.1762735   0.2956959
0-24 months   ki0047075b-MAL-ED         INDIA                          Underweight          NA                0.2974622   0.1744184   0.4205059
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.5289256   0.4659123   0.5919389
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.5714286   0.3116959   0.8311612
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          Normal weight        NA                0.3071832   0.2646807   0.3496858
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          Underweight          NA                0.3946338   0.3489928   0.4402747
0-24 months   ki1017093-NIH-Birth       BANGLADESH                     Normal weight        NA                0.2844970   0.2457648   0.3232291
0-24 months   ki1017093-NIH-Birth       BANGLADESH                     Underweight          NA                0.4499305   0.3536267   0.5462343
0-24 months   ki1017093b-PROVIDE        BANGLADESH                     Normal weight        NA                0.1194987   0.0921593   0.1468381
0-24 months   ki1017093b-PROVIDE        BANGLADESH                     Underweight          NA                0.2345060   0.1607287   0.3082833
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Normal weight        NA                0.1221871   0.0976776   0.1466965
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Underweight          NA                0.2238260   0.1217899   0.3258621
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO                   Normal weight        NA                0.1023345   0.0812552   0.1234138
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO                   Underweight          NA                0.1202718   0.0719287   0.1686150
0-24 months   ki1119695-PROBIT          BELARUS                        Normal weight        NA                0.0384001   0.0301371   0.0466630
0-24 months   ki1119695-PROBIT          BELARUS                        Underweight          NA                0.0566065   0.0368774   0.0763355
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       Normal weight        NA                0.1799046   0.1720926   0.1877167
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       Underweight          NA                0.2445318   0.2069408   0.2821228
0-24 months   ki1148112-LCNI-5          MALAWI                         Normal weight        NA                0.2041543   0.1740318   0.2342769
0-24 months   ki1148112-LCNI-5          MALAWI                         Underweight          NA                0.2247612   0.1549070   0.2946154
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     Normal weight        NA                0.1924174   0.1855316   0.1993031
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     Underweight          NA                0.1715647   0.1635238   0.1796056
0-6 months    ki0047075b-MAL-ED         INDIA                          Normal weight        NA                0.0725389   0.0358696   0.1092081
0-6 months    ki0047075b-MAL-ED         INDIA                          Underweight          NA                0.1224490   0.0304754   0.2144225
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          Normal weight        NA                0.1369696   0.1178357   0.1561034
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          Underweight          NA                0.2023484   0.1607678   0.2439289
0-6 months    ki1017093-NIH-Birth       BANGLADESH                     Normal weight        NA                0.0862307   0.0621401   0.1103212
0-6 months    ki1017093-NIH-Birth       BANGLADESH                     Underweight          NA                0.1337837   0.0689723   0.1985952
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Normal weight        NA                0.0553130   0.0382083   0.0724176
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Underweight          NA                0.1323529   0.0517558   0.2129501
0-6 months    ki1119695-PROBIT          BELARUS                        Normal weight        NA                0.0126057   0.0092421   0.0159693
0-6 months    ki1119695-PROBIT          BELARUS                        Underweight          NA                0.0206972   0.0115345   0.0298599
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       Normal weight        NA                0.0984495   0.0923861   0.1045130
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       Underweight          NA                0.1450854   0.1132536   0.1769171
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     Normal weight        NA                0.1533832   0.1473168   0.1594497
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     Underweight          NA                0.1373883   0.1300452   0.1447314


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
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     Underweight          Normal weight     1.2875662   0.6549140   2.5313655
0-24 months   ki0047075b-MAL-ED         INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         INDIA                          Underweight          Normal weight     1.2605147   0.7744414   2.0516690
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.0803571   0.6753029   1.7283675
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          Underweight          Normal weight     1.2846852   1.0526208   1.5679112
0-24 months   ki1017093-NIH-Birth       BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth       BANGLADESH                     Underweight          Normal weight     1.5814950   1.2275708   2.0374600
0-24 months   ki1017093b-PROVIDE        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH                     Underweight          Normal weight     1.9624153   1.3302046   2.8950988
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Underweight          Normal weight     1.8318306   1.1129657   3.0150108
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO                   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO                   Underweight          Normal weight     1.1752816   0.7515625   1.8378868
0-24 months   ki1119695-PROBIT          BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT          BELARUS                        Underweight          Normal weight     1.4741235   1.0932406   1.9877054
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       Underweight          Normal weight     1.3592303   1.1585747   1.5946377
0-24 months   ki1148112-LCNI-5          MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5          MALAWI                         Underweight          Normal weight     1.1009377   0.7802596   1.5534111
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     Underweight          Normal weight     0.8916278   0.8441832   0.9417390
0-6 months    ki0047075b-MAL-ED         INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         INDIA                          Underweight          Normal weight     1.6880466   0.6826237   4.1743369
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          Underweight          Normal weight     1.4773238   1.1661365   1.8715523
0-6 months    ki1017093-NIH-Birth       BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth       BANGLADESH                     Underweight          Normal weight     1.5514634   0.8864845   2.7152631
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Underweight          Normal weight     2.3928019   1.2086339   4.7371672
0-6 months    ki1119695-PROBIT          BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT          BELARUS                        Underweight          Normal weight     1.6418870   1.0667994   2.5269915
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       Underweight          Normal weight     1.4737027   1.1733987   1.8508627
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     Underweight          Normal weight     0.8957190   0.8429062   0.9518408


### Parameter: PAR


agecat        studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     Normal weight        NA                 0.0154081   -0.0070117    0.0378279
0-24 months   ki0047075b-MAL-ED         INDIA                          Normal weight        NA                 0.0036847   -0.0250787    0.0324481
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0023244   -0.0123398    0.0169886
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          Normal weight        NA                 0.0225964    0.0045061    0.0406868
0-24 months   ki1017093-NIH-Birth       BANGLADESH                     Normal weight        NA                 0.0271088    0.0093175    0.0449000
0-24 months   ki1017093b-PROVIDE        BANGLADESH                     Normal weight        NA                 0.0210096    0.0059096    0.0361095
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Normal weight        NA                 0.0089388   -0.0004502    0.0183278
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO                   Normal weight        NA                 0.0027650   -0.0046469    0.0101770
0-24 months   ki1119695-PROBIT          BELARUS                        Normal weight        NA                 0.0004257   -0.0002315    0.0010829
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       Normal weight        NA                 0.0030061    0.0010075    0.0050046
0-24 months   ki1148112-LCNI-5          MALAWI                         Normal weight        NA                 0.0073152   -0.0059380    0.0205684
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0079864   -0.0117290   -0.0042439
0-6 months    ki0047075b-MAL-ED         INDIA                          Normal weight        NA                 0.0101058   -0.0101018    0.0303133
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          Normal weight        NA                 0.0168766    0.0052501    0.0285031
0-6 months    ki1017093-NIH-Birth       BANGLADESH                     Normal weight        NA                 0.0075690   -0.0041611    0.0192991
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Normal weight        NA                 0.0069387   -0.0006472    0.0145246
0-6 months    ki1119695-PROBIT          BELARUS                        Normal weight        NA                 0.0002876   -0.0000715    0.0006467
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       Normal weight        NA                 0.0022846    0.0006456    0.0039235
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0061145   -0.0094299   -0.0027991


### Parameter: PAF


agecat        studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     Normal weight        NA                 0.0698868   -0.0369711    0.1657333
0-24 months   ki0047075b-MAL-ED         INDIA                          Normal weight        NA                 0.0153742   -0.1121053    0.1282409
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0043753   -0.0236201    0.0316050
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          Normal weight        NA                 0.0685198    0.0085636    0.1248502
0-24 months   ki1017093-NIH-Birth       BANGLADESH                     Normal weight        NA                 0.0869970    0.0281984    0.1422381
0-24 months   ki1017093b-PROVIDE        BANGLADESH                     Normal weight        NA                 0.1495254    0.0378504    0.2482385
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Normal weight        NA                 0.0681694   -0.0054051    0.1363599
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO                   Normal weight        NA                 0.0263086   -0.0471443    0.0946091
0-24 months   ki1119695-PROBIT          BELARUS                        Normal weight        NA                 0.0109640   -0.0062117    0.0278466
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       Normal weight        NA                 0.0164346    0.0054583    0.0272897
0-24 months   ki1148112-LCNI-5          MALAWI                         Normal weight        NA                 0.0345922   -0.0301061    0.0952269
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0433032   -0.0637715   -0.0232287
0-6 months    ki0047075b-MAL-ED         INDIA                          Normal weight        NA                 0.1222798   -0.1536263    0.3321990
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          Normal weight        NA                 0.1096979    0.0341970    0.1792966
0-6 months    ki1017093-NIH-Birth       BANGLADESH                     Normal weight        NA                 0.0806933   -0.0517790    0.1964805
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Normal weight        NA                 0.1114621   -0.0151402    0.2222753
0-6 months    ki1119695-PROBIT          BELARUS                        Normal weight        NA                 0.0223080   -0.0060840    0.0498987
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       Normal weight        NA                 0.0226790    0.0063148    0.0387738
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0415191   -0.0643105   -0.0192158
